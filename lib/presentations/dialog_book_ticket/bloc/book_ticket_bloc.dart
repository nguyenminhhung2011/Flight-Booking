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
import '../../../domain/usecase/tic_information_usecase.dart';
import 'book_ticket_model_state.dart';

part 'book_ticket_event.dart';
part 'book_ticket_state.dart';

part 'book_ticket_bloc.freezed.dart';

@injectable
class BTBloc extends Bloc<BTEvent, BTState> {
  final CustomerUseCase _customerUseCase;
  final TicketInformationUsecase _ticketInformationUsecase;

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
  )   : _seats = seats,
        _flightId = flightId,
        super(const BTState.initial(
          data: BTModelState(
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

  FutureOr<void> _onSelectedSeat(
    _SelectedSeat event,
    Emitter<BTState> emit,
  ) {
    final newSeat = SeatSelected(
        seatIndex: event.seatIndex, ticInformation: event.ticInformation);
    final checkFound = data.chairsSelected
        .map((e) => convertToSeatString(e))
        .contains(convertToSeatString(newSeat));
    if (checkFound) {
      emit(BTState.selectedSeatSuccess(
          data: data.copyWith(
        chairsSelected: data.chairsSelected
            .where(
              (element) =>
                  element.seatIndex != newSeat.seatIndex ||
                  element.ticInformation.id.ticketType !=
                      newSeat.ticInformation.id.ticketType,
            )
            .toList(),
      )));
    } else {
      emit(BTState.selectedSeatSuccess(
          data: data.copyWith(
        chairsSelected: [...data.chairsSelected, newSeat],
      )));
    }
  }
}
