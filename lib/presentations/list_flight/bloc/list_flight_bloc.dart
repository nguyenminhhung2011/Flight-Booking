import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flight_booking/domain/usecase/list_flight_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/repositories/list_flight_repository.dart';
import 'list_flight_model_state.dart';

part 'list_flight_event.dart';
part 'list_flight_state.dart';

part 'list_flight_bloc.freezed.dart';

@injectable
class ListFlightBloc extends Bloc<ListFlightEvent, ListFlightState> {
  final ListFlightsUsecase _listFlightsUsecase;
  ListFlightBloc(
    this._listFlightsUsecase,
  ) : super(
          const ListFlightState.initial(
            data: ListFlightModelState(
              flights: [],
            ),
          ),
        ) {
    on<_SelectFlight>(_onSelectFlight);
    on<_Started>(_onStarted);
    on<_GetFlights>(_onGetFlights);
  }

  //get Flights
  FutureOr<void> _onStarted(
    _Started event,
    Emitter<ListFlightState> emit,
  ) {}

  FutureOr<void> _onGetFlights(
    _GetFlights event,
    Emitter<ListFlightState> emit,
  ) async {
    try {
      emit(ListFlightState.loading(data: state.data));
      final flights = await _listFlightsUsecase.fetchAllFlights();
      emit(ListFlightState.getFlightsSuccess(
        data: state.data.copyWith(flights: flights),
      ));
    } catch (e) {
      emit(ListFlightState.getFlightsFailed(
        data: state.data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onSelectFlight(
    _SelectFlight event,
    Emitter<ListFlightState> emit,
  ) {
    try {
      emit(
        ListFlightState.selectListFlightSuccess(
          data: state.data,
          flightId: '',
        ),
      );
    } catch (e) {
      emit(ListFlightState.selectListFlightFailed(
        data: state.data,
        message: e.toString(),
      ));
    }
  }
}
