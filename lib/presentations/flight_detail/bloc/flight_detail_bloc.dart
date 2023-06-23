import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flight_booking/core/components/enum/item_view_enum.dart';
import 'package:flight_booking/domain/usecase/flight_usecase.dart';
import 'package:flight_booking/domain/usecase/tic_information_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/components/network/app_exception.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/seat_selected/seat_selected.dart';
import '../../../domain/entities/ticket/ticket_information.dart';
import 'flight_detail_model_state.dart';

part 'flight_detail_event.dart';
part 'flight_detail_state.dart';

part 'flight_detail_bloc.freezed.dart';

@injectable
class FlightDetailBloc extends Bloc<FlightDetailEvent, FlightDetailState> {
  final int _flightId;
  final FlightsUsecase _flightsUsecase;
  final TicketInformationUsecase _ticketInformationUsecase;
  FlightDetailBloc(
    @factoryParam int flightId,
    this._flightsUsecase,
    this._ticketInformationUsecase,
  )   : _flightId = flightId,
        super(
          const FlightDetailState.initial(
            data: FlightDetailModelState(
              animation: 1000.0,
              itemView: ItemViewEnum.gridView,
              showMoreInfor: false,
              ticInformation: <TicketInformation>[],
              chairsSelected: <SeatSelected>[],
            ),
          ),
        ) {
    on<_Started>(_onStarted);
    on<_ChangeTypeView>(_onChangeTypeView);
    on<_showMoreInformation>(_onShowMoreInformation);
    on<_GetFlightById>(_onGetFlightById);
    on<_GetTicInformation>(_onGetTicInformation);
    on<_SelectedSeat>(_onSelectedSeat);
    on<_UpdateCustomerSelected>(_onUpdateCustomer);
  }

  FlightDetailModelState get data => state.data;
  int get flightId => _flightId;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<FlightDetailState> emit,
  ) {
    emit(FlightDetailState.initial(data: state.data.copyWith(animation: 0)));
  }

  FutureOr<void> _onChangeTypeView(
      _ChangeTypeView event, Emitter<FlightDetailState> emit) {
    emit(state.copyWith(data: state.data.copyWith(itemView: event.view)));
  }

  FutureOr<void> _onShowMoreInformation(
      _showMoreInformation event, Emitter<FlightDetailState> emit) {
    emit(state.copyWith(
      data: state.data.copyWith(showMoreInfor: !state.data.showMoreInfor),
    ));
  }

  FutureOr<void> _onGetFlightById(
    _GetFlightById event,
    Emitter<FlightDetailState> emit,
  ) async {
    emit(FlightDetailState.loading(data: data, loadingField: 0));
    try {
      final result = await _flightsUsecase.getFlightById(_flightId.toString());
      if (result == null) {
        emit(FlightDetailState.getFlightByIdFailed(
          data: state.data,
          message: 'Can\'t get flight',
        ));
        return;
      }
      emit(FlightDetailState.getFlightByIdSuccess(
        data: data.copyWith(
          flight: result,
        ),
      ));
    } on AppException catch (e) {
      emit(FlightDetailState.getFlightByIdFailed(
        data: state.data,
        message: e.toString(),
      ));
    } catch (e) {
      emit(FlightDetailState.getFlightByIdFailed(
        data: state.data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onGetTicInformation(
    _GetTicInformation event,
    Emitter<FlightDetailState> emit,
  ) async {
    emit(FlightDetailState.loading(data: data, loadingField: 1));
    try {
      final result =
          await _ticketInformationUsecase.getTicketByFlight(_flightId);
      result.sort((a, b) => a.seatPosition.compareTo(b.seatPosition));
      emit(FlightDetailState.getTicInformationSuccess(
          data: data.copyWith(
        ticInformation: result,
      )));
    } on AppException catch (e) {
      emit(FlightDetailState.getTicInformationFailed(
        data: data,
        message: e.toString(),
      ));
    } catch (e) {
      emit(FlightDetailState.getTicInformationFailed(
        data: data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onSelectedSeat(
    _SelectedSeat event,
    Emitter<FlightDetailState> emit,
  ) {}

  FutureOr<void> _onUpdateCustomer(
    _UpdateCustomerSelected event,
    Emitter<FlightDetailState> emit,
  ) {
    emit(_UpdateCustomerSuccess(
        data: data.copyWith(
      customerSelected: event.customer,
    )));
  }
}
