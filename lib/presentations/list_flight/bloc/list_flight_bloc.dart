import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flight_booking/domain/usecase/flight_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'list_flight_model_state.dart';

part 'list_flight_event.dart';
part 'list_flight_state.dart';

part 'list_flight_bloc.freezed.dart';

@injectable
class ListFlightBloc extends Bloc<ListFlightEvent, ListFlightState> {
  final FlightsUsecase _flightsUsecase;
  ListFlightBloc(
    this._flightsUsecase,
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
    on<_OpenAddEditFlightForm>(_onOpenAddEditFlightForm);
  }

  //get Flights
  FutureOr<void> _onStarted(
    _Started event,
    Emitter<ListFlightState> emit,
  ) {}

  FutureOr<void> _onOpenAddEditFlightForm(
    _OpenAddEditFlightForm event,
    Emitter<ListFlightState> emit,
  ) async {
    emit(ListFlightState.loading(data: state.data));
    emit(
      ListFlightState.openAddEditFlightFormSuccess(
          data: state.data, flightId: event.id),
    );
  }

  FutureOr<void> _onGetFlights(
    _GetFlights event,
    Emitter<ListFlightState> emit,
  ) async {
    try {
      emit(ListFlightState.loading(data: state.data));
      final flights = await _flightsUsecase.fetchAllFlights();
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
    emit(ListFlightState.loading(data: state.data));

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
