import 'dart:async';

import 'package:flight_booking/domain/entities/ticket/ticket.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/components/network/app_exception.dart';
import '../../../core/constant/constant.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/seat_selected/seat_selected.dart';
import '../../../domain/entities/ticket/ticket_information.dart';
import '../../../domain/usecase/customer_usecase.dart';
import '../../../domain/usecase/flight_usecase.dart';
import '../../../domain/usecase/tic_information_usecase.dart';
import 'book_ticket_model_state.dart';

part 'book_ticket_event.dart';
part 'book_ticket_state.dart';

part 'book_ticket_bloc.freezed.dart';

const _seatDefault = 0;

@injectable
class BTBloc extends Bloc<BTEvent, BTState> {
  final CustomerUseCase _customerUseCase;
  final TicketInformationUsecase _ticketInformationUsecase;
  final FlightsUsecase _flightUsecase;

  final int _flightId;
  final List<SeatSelected> _seats;
  BTModelState get data => state.data;
  List<SeatSelected> get listSeat => _seats;
  int get flightId => _flightId;
  BTBloc(
    @factoryParam List<SeatSelected> seats,
    @factoryParam int flightId,
    this._customerUseCase,
    this._ticketInformationUsecase,
    this._flightUsecase,
  )   : _seats = seats,
        _flightId = flightId,
        super(const BTState.initial(
          data: BTModelState(
            currentTicId: "",
            indexView: 0,
            customers: <Customer>[],
            chairsSelected: <SeatSelected>[],
            ticInformation: <TicketInformation>[],
            tics: <Ticket>[],
          ),
        )) {
    on<_Started>(_onStarted);
    on<_ChangeTicIndexView>(_onChangeTicIndexView);
    on<_FetchCustomerData>(_onFetchCustomers);
    on<_GetCustomerById>(_onGetCustomerById);
    on<_GetTicInformation>(_onGetTicInformation);
    on<_SelectedSeat>(_onSelectedSeat);
    on<_SearchCustomer>(_onSearchCustomer);
    on<_TextChange>(_onTextChange);
    on<_AddSeat>(_onAddSeat);
    on<_RemoveTic>(_onRemoveTic);
    on<_SelectedTic>(_onSelectedTic);
    on<_EditTic>(_onEditTic);
    on<_GetAllTicOfFlight>(_onGetAllTicOfFlight);
    on<_UpdateCustomer>(_onUpdateCustomer);
    on<_GetFlightById>(_onGetFlightById);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<BTState> state,
  ) {}

  FutureOr<void> _onChangeTicIndexView(
    _ChangeTicIndexView event,
    Emitter<BTState> emit,
  ) {
    emit(BTState.changeTicIndexViewSuccess(
        data: data.copyWith(
      indexView: event.index,
    )));
  }

  FutureOr<void> _onTextChange(
    _TextChange event,
    Emitter<BTState> emit,
  ) {
    if (event.text.isNotEmpty) {
      add(_SearchCustomer(text: event.text));
    } else {
      add(const _FetchCustomerData());
    }
  }

  FutureOr<void> _onGetFlightById(
    _GetFlightById event,
    Emitter<BTState> emit,
  ) async {
    emit(_Loading(data: data, groupLoading: 4));
    try {
      final response = await _flightUsecase.getFlightById(_flightId.toString());
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

  FutureOr<void> _onSearchCustomer(
    _SearchCustomer event,
    Emitter<BTState> emit,
  ) async {
    emit(_Loading(data: data, groupLoading: 0));
    try {
      final response = await _customerUseCase.searchCustomer(event.text);
      emit(_SearchCustomerSuccess(
          data: data.copyWith(
        customers: response,
        customerSelected: response.isNotEmpty ? response.first : null,
      )));
    } on AppException catch (e) {
      emit(_SearchCustomerFailed(data: data, message: e.toString()));
    } catch (e) {
      emit(_SearchCustomerFailed(data: data, message: e.toString()));
    }
  }

  FutureOr<void> _onFetchCustomers(
    _FetchCustomerData event,
    Emitter<BTState> emit,
  ) async {
    emit(_Loading(data: data, groupLoading: 0));
    try {
      final response = await _customerUseCase.fetchAllCustomer();
      emit(_FetchCustomerDataSuccess(
          data: data.copyWith(
        customers: response,
        customerSelected: response.isNotEmpty ? response.first : null,
      )));
    } catch (e) {
      emit(_FetchCustomerDataFailed(
        data: data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onGetCustomerById(
    _GetCustomerById event,
    Emitter<BTState> emit,
  ) async {
    emit(_Loading(data: data, groupLoading: 1));
    try {
      final response = await _customerUseCase.getCustomerById(event.id);
      if (response == null) {
        return emit(_GetCustomerBydIdFailed(data: data, message: 'Failed'));
      }
      return emit(_GetCustomerBydIdSuccess(
          data: data.copyWith(
        customerSelected: response,
      )));
    } on AppException catch (e) {
      emit(_GetCustomerBydIdFailed(data: data, message: e.toString()));
    } catch (e) {
      emit(_GetCustomerBydIdFailed(data: data, message: e.toString()));
    }
  }

  FutureOr<void> _onGetTicInformation(
    _GetTicInformation event,
    Emitter<BTState> emit,
  ) async {
    emit(_Loading(data: data, groupLoading: 2));
    try {
      final result =
          await _ticketInformationUsecase.getTicketByFlight(_flightId);
      result.sort((a, b) => a.seatPosition.compareTo(b.seatPosition));
      emit(_GetCustomerBydIdSuccess(
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

  FutureOr<void> _onAddSeat(
    _AddSeat event,
    Emitter<BTState> emit,
  ) {
    final newTic = Ticket(
      id: randDomNumber(100),
      name: event.name,
      gender: event.gender,
      phoneNumber: event.phoneNumber,
      emailAddress: event.email,
      seat: event.seat,
      type: event.type,
      luggage: event.luggage,
      price: 0,
      birthday: event.dateBorn.millisecondsSinceEpoch,
      timeBought: DateTime.now().millisecondsSinceEpoch,
    );
    if (!data.tics.map((e) => '${e.type} - ${e.seat}').contains(
          '${newTic.type} - ${newTic.seat}',
        )) {
      emit(BTState.addSeatSuccess(
          data: data.copyWith(
        tics: [...data.tics, newTic],
      )));
    }
  }

  FutureOr<void> _onRemoveTic(
    _RemoveTic event,
    Emitter<BTState> emit,
  ) {
    emit(_RemoveTicSuccess(
      data: data.copyWith(
        tics: data.tics.where((element) => element.id != event.tic.id).toList(),
      ),
    ));
  }

  FutureOr<void> _onEditTic(
    _EditTic event,
    Emitter<BTState> emit,
  ) {
    emit(_EditTicSuccess(
      data: data.copyWith(
          tics: data.tics.map((e) {
        if (e.id == event.tic.id) {
          return event.tic;
        }
        return e;
      }).toList()),
    ));
  }

  FutureOr<void> _onSelectedTic(
    _SelectedTic event,
    Emitter<BTState> emit,
  ) {
    emit(_SelectedTicSuccess(
      data: data.copyWith(
        currentSeat: SeatSelected(
          seatIndex: event.tic.seat,
          ticInformation: data.ticInformation.firstWhere(
            (element) => element.id.ticketType == event.tic.type,
          ),
        ),
        currentTicId: event.tic.id.toString(),
      ),
      tic: event.tic,
    ));
  }

  FutureOr<void> _onGetAllTicOfFlight(
    _GetAllTicOfFlight event,
    Emitter<BTState> emit,
  ) async {
    emit(_Loading(data: data, groupLoading: 2));
    emit(_GetAllTicOfFlightSuccess(data: data));
  }

  FutureOr<void> _onUpdateCustomer(
    _UpdateCustomer event,
    Emitter<BTState> emit,
  ) {
    emit(_UpdateCustomerSuccess(
      data: data.copyWith(
        customers: [...data.customers, event.customer],
      ),
    ));
  }

  FutureOr<void> _onSelectedSeat(
    _SelectedSeat event,
    Emitter<BTState> emit,
  ) {
    var ticIndex = -1;
    ticIndex = data.tics.indexWhere(
      (item) =>
          item.type == event.newSeat.ticInformation.id.ticketType &&
          item.seat == event.newSeat.seatIndex,
    );
    emit(_SelectedSeatSuccess(
      data: data.copyWith(
        currentSeat: event.newSeat,
        currentTicId: ticIndex == -1
            ? data.currentTicId.toString()
            : data.tics[ticIndex].id.toString(),
      ),
      ticIndex: ticIndex,
    ));
    // final newSeat = SeatSelected(
    //     seatIndex: event.seatIndex, ticInformation: event.ticInformation);
    // final checkFound = data.chairsSelected
    //     .map((e) => convertToSeatString(e))
    //     .contains(convertToSeatString(newSeat));
    // if (checkFound) {
    //   emit(BTState.selectedSeatSuccess(
    //       data: data.copyWith(
    //     chairsSelected: data.chairsSelected
    //         .where(
    //           (element) =>
    //               element.seatIndex != newSeat.seatIndex ||
    //               element.ticInformation.id.ticketType !=
    //                   newSeat.ticInformation.id.ticketType,
    //         )
    //         .toList(),
    //   )));
    // } else {
    //   emit(BTState.selectedSeatSuccess(
    //       data: data.copyWith(
    //     chairsSelected: [...data.chairsSelected, newSeat],
    //   )));
    // }
  }
}
