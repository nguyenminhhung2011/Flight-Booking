import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flight_booking/domain/usecase/flight_usecase.dart';
import 'package:flight_booking/presentations_mobile/select_scott_mobile/bloc/select_scott_model_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/components/network/app_exception.dart';
import '../../../domain/entities/seat_selected/seat_selected.dart';
import '../../../domain/entities/ticket/ticket.dart';
import '../../../domain/entities/ticket/ticket_information.dart';
import '../../../domain/usecase/tic_information_usecase.dart';
import '../../../domain/usecase/ticket_usecase.dart';

part 'select_scott_event.dart';
part 'select_scott_state.dart';

part 'select_scott_bloc.freezed.dart';

const _seatDefault = 0;

@injectable
class SelectScottBloc extends Bloc<SelectScottEvent, SelectScottState> {
  final int _customerId;
  final int _flightId;
  final FlightsUsecase _flightsUsecase;
  final TicketInformationUsecase _ticketInformationUsecase;
  final TicketUsecase _ticketUsecase;

  SelectScottModelState get data => state.data;

  int get customerId => _customerId;
  int get flightId => _flightId;
  SelectScottBloc(
    @factoryParam Map<String, dynamic> ids,
    this._flightsUsecase,
    this._ticketUsecase,
    this._ticketInformationUsecase,
  )   : _customerId = ids['customerId'] ?? -1,
        _flightId = ids['flightId'] ?? -1,
        super(
          const SelectScottState.initial(
              data: SelectScottModelState(
            tab: 0,
            selectCustomer: 0,
            chairsSelected: <SeatSelected>[],
            ticInformation: <TicketInformation>[],
            tics: <Ticket>[],
            redTics: <Ticket>[],
          )),
        ) {
    on<_Started>(_onStarted);
    on<_ChangeTab>(_onChangeTab);
    on<_AddNewCustomer>(_onAddNewCustomer);
    on<_SelectCustomer>(_onSelectCustomer);
    on<_RemoveCustomer>(_onRemoveCustomer);
    on<_GetFlightById>(_onGetFlightById);
    on<_GetAllTicOfFlight>(_onGetAllTicOfFlight);
    on<_GetTicInformation>(_onGetTicInformation);
    on<_SelectedSeat>(_onSelectedSeat);
    on<_AddTicToDB>(_onAddTicToDB);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<SelectScottState> emit,
  ) {}

  FutureOr<void> _onChangeTab(
    _ChangeTab event,
    Emitter<SelectScottState> emit,
  ) {
    emit(_ChangeTabSuccess(data: data.copyWith(tab: event.tab)));
  }

  FutureOr<void> _onAddNewCustomer(
    _AddNewCustomer event,
    Emitter<SelectScottState> emit,
  ) {
    emit(_AddNewTic(
        data: data.copyWith(
      tics: [event.tic, ...data.tics],
      tab: 0,
      selectCustomer: 0,
    )));
  }

  FutureOr<void> _onSelectCustomer(
    _SelectCustomer event,
    Emitter<SelectScottState> emit,
  ) {
    emit(_SelectTic(data: data.copyWith(selectCustomer: event.index)));
  }

  FutureOr<void> _onRemoveCustomer(
    _RemoveCustomer event,
    Emitter<SelectScottState> emit,
  ) {
    emit(_RemoveTic(
        data: data.copyWith(
      tics: data.tics
          .whereIndexed((index, element) => index != event.index)
          .toList(),
    )));
  }

  FutureOr<void> _onGetFlightById(
    _GetFlightById event,
    Emitter<SelectScottState> emit,
  ) async {
    emit(_Loading(data: data, groupLoading: 4));
    try {
      final response =
          await _flightsUsecase.getFlightById(_flightId.toString());
      if (response == null) {
        return emit(_GetFlightByIdFailed(data: data, message: 'Failed'));
      }
      return emit(_GetFlightByIdSuccess(
          data: data.copyWith(
        flight: response,
      )));
    } on AppException catch (e) {
      emit(_GetFlightByIdFailed(data: data, message: e.toString()));
    } catch (e) {
      emit(_GetFlightByIdFailed(data: data, message: e.toString()));
    }
  }

  FutureOr<void> _onGetTicInformation(
    _GetTicInformation event,
    Emitter<SelectScottState> emit,
  ) async {
    emit(_Loading(data: data, groupLoading: 2));
    try {
      final result =
          await _ticketInformationUsecase.getTicketByFlight(_flightId);
      result.sort((a, b) => a.seatPosition.compareTo(b.seatPosition));
      emit(_GetTicInformationSuccess(
          data: data.copyWith(
        ticInformation: result,
        currentSeat: result.isNotEmpty && result.first.quantity > 0
            ? SeatSelected(
                seatIndex: _seatDefault,
                ticInformation: result.first,
              )
            : null,
      )));
    } on AppException catch (e) {
      emit(_GetTicInformationFailed(
        data: data,
        message: e.toString(),
      ));
    } catch (e) {
      emit(_GetTicInformationFailed(
        data: data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onGetAllTicOfFlight(
    _GetAllTicOfFlight event,
    Emitter<SelectScottState> emit,
  ) async {
    emit(_Loading(data: data, groupLoading: 2));
    try {
      final response = await _ticketUsecase.getByFlightId(flightId: _flightId);
      emit(_GetAllTicOfFlightSuccess(
        data: data.copyWith(redTics: response),
      ));
    } on AppException catch (e) {
      emit(_GetAllTicOfFlightFailed(data: data, message: e.toString()));
    } catch (e) {
      emit(_GetAllTicOfFlightFailed(data: data, message: e.toString()));
    }
  }

  FutureOr<void> _onSelectedSeat(
    _SelectedSeat event,
    Emitter<SelectScottState> emit,
  ) {
    var ticIndex = -1;
    ticIndex = data.tics.indexWhere(
      (item) =>
          item.type == event.newSeat.ticInformation.id.ticketType &&
          item.seat == event.newSeat.seatIndex,
    );
    if (data.redTics.map((e) => '${e.type} - ${e.seat}').contains(
          '${event.newSeat.ticInformation.id.ticketType} - ${event.newSeat.seatIndex}',
        )) {
      emit(_SelectedSeatFailed(data: data));
    } else {
      emit(_SelectedSeatSuccess(
        data: data.copyWith(
          currentSeat: event.newSeat,
        ),
        ticIndex: ticIndex,
      ));
    }
    // final newSeat = SeatSelected(
  }

  FutureOr<void> _onAddTicToDB(
    _AddTicToDB event,
    Emitter<SelectScottState> emit,
  ) async {
    final tics = data.tics
        .where(
          (element) =>
              element.emailAddress.isNotEmpty &&
              element.phoneNumber.isNotEmpty &&
              element.name.isNotEmpty,
        )
        .toList();
    if (tics.isNotEmpty) {
      emit(_Loading(data: data, groupLoading: 5));
      try {
        final response = await _ticketUsecase.bookTicket(
          tics: tics,
          customerId: _customerId,
          flightId: flightId,
          paymentType: event.paymentType,
        );
        if (response == null) {
          emit(_AddTicToDBFailed(data: data, message: 'Failed '));
          return;
        }
        emit(_AddTicToDBSuccess(
          data: data,
          paymentId: response.id,
        ));
      } on AppException catch (e) {
        emit(_AddTicToDBFailed(data: data, message: e.toString()));
      } catch (e) {
        emit(_AddTicToDBFailed(data: data, message: e.toString()));
      }
    } else {
      emit(_AddTicToDBFailed(data: data, message: 'list tic is not empty'));
    }
  }
}
