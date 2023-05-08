import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flight_booking/domain/usecase/flight_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/flight/flight.dart';
import 'list_flight_model_state.dart';

part 'list_flight_event.dart';
part 'list_flight_state.dart';

part 'list_flight_bloc.freezed.dart';

@injectable
class ListFlightBloc extends Bloc<ListFlightEvent, ListFlightState> {
  final FlightsUsecase _flightsUsecase;

  ListFlightModelState get data => state.data;

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
    on<_UpdateFlighstAfterEdit>(_onUpdateFlightAfterEdit);
    on<_UpdateFlightsAfterAdd>(_onUpdateFlightAfterAdd);
    on<_DeleteFlight>(_onDeleteFlight);
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
    emit(ListFlightState.loading(data: state.data));
    try {
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

  FutureOr<void> _onUpdateFlightAfterAdd(
    _UpdateFlightsAfterAdd event,
    Emitter<ListFlightState> emit,
  ) {
    emit(state.copyWith(
      data: data.copyWith(flights: [event.flight, ...data.flights]),
    ));
  }

  FutureOr<void> _onUpdateFlightAfterEdit(
    _UpdateFlighstAfterEdit event,
    Emitter<ListFlightState> emit,
  ) {
    emit(state.copyWith(
      data: data.copyWith(
          flights: data.flights.map(
        (e) {
          if (e.id == event.flight.id) {
            return event.flight;
          }
          return e;
        },
      ).toList()),
    ));
  }

  FutureOr<void> _onDeleteFlight(
    _DeleteFlight event,
    Emitter<ListFlightState> emit,
  ) async {
    emit(ListFlightState.loading(data: data));
    try {
      final delete = await _flightsUsecase.deleteFlight(event.id);
      if (!delete) {
        emit(ListFlightState.deleteFlightFailed(
          data: data,
          message: 'Delete Flight Failed',
        ));
        return;
      }
      emit(
        ListFlightState.deleteFlightSuccess(
            data: data.copyWith(
          flights:
              data.flights.where((element) => element.id != event.id).toList(),
        )),
      );
    } catch (e) {
      emit(
        ListFlightState.deleteFlightFailed(data: data, message: e.toString()),
      );
    }
  }
}
