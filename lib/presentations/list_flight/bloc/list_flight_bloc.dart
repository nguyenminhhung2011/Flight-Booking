import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flight_booking/core/components/network/app_exception.dart';
import 'package:flight_booking/domain/usecase/flight_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/services/place/place_service.dart';
import '../../../data/models/place/place_model.dart';
import '../../../domain/entities/airline/airline.dart';
import '../../../domain/entities/flight/flight.dart';
import '../../../domain/usecase/airline_usecase.dart';
import 'list_flight_model_state.dart';

part 'list_flight_event.dart';
part 'list_flight_state.dart';

part 'list_flight_bloc.freezed.dart';

const _pageSize = 10;
const _locationNull = '';

@injectable
class ListFlightBloc extends Bloc<ListFlightEvent, ListFlightState> {
  final FlightsUsecase _flightsUsecase;
  final AirlineUsecase _airlineUsecase;
  final PlaceService _placeService;

  ListFlightModelState get data => state.data;

  ListFlightBloc(
    this._flightsUsecase,
    this._placeService,
    this._airlineUsecase,
  ) : super(
          const ListFlightState.initial(
            data: ListFlightModelState(
              flights: <Flight>[],
              currentPage: 0,
              totalPage: 0,
              listAirlines: <Airline>[],
              locations: <PlaceModel>[],
              locationArrival: _locationNull,
              locationDeparture: _locationNull,
              airlineName: _locationNull,
            ),
          ),
        ) {
    on<_SelectFlight>(_onSelectFlight);
    on<_Started>(_onStarted);
    on<_GetFlights>(_onGetFlights);
    on<_OpenAddEditFlightForm>(_onOpenAddEditFlightForm);
    on<_UpdateFlightsAfterEdit>(_onUpdateFlightAfterEdit);
    on<_UpdateFlightsAfterAdd>(_onUpdateFlightAfterAdd);
    on<_DeleteFlight>(_onDeleteFlight);
    on<_GetFlightByPage>(_onGetFlightByPage);
    on<_FilterFlight>(_onFilterFlight);
    on<_FetchAirlines>(_onFetchAirlines);
    on<_FetchPlaces>(_onFetchPlaces);
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
        data: state.data,
        flightId: event.id,
      ),
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
    } on AppException catch (e) {
      emit(ListFlightState.getFlightsFailed(data: data, message: e.toString()));
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
    emit(ListFlightState.updateFlightSuccess(
      data: data.copyWith(flights: [event.flight, ...data.flights]),
    ));
  }

  FutureOr<void> _onUpdateFlightAfterEdit(
    _UpdateFlightsAfterEdit event,
    Emitter<ListFlightState> emit,
  ) {
    emit(ListFlightState.updateFlightSuccess(
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
      final delete = await _flightsUsecase.deleteFlight(event.id.toString());
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

  FutureOr<void> _onGetFlightByPage(
    _GetFlightByPage event,
    Emitter<ListFlightState> emit,
  ) async {
    emit(ListFlightState.loading(data: data));
    if (event.cursor != 0) {
      if (event.cursor >= data.totalPage || event.cursor < 0) {
        emit(ListFlightState.getFlightPageFFailed(
          data: data,
          message: 'Current page is max',
        ));
      }
    }
    try {
      final response =
          await _flightsUsecase.getFlightsByPage(event.cursor, _pageSize);
      if (response.data.isEmpty) {
        emit(ListFlightState.getFlightPageFFailed(
          data: data,
          message: 'Can\'t fetch flight',
        ));
      }
      emit(ListFlightState.deleteFlightSuccess(
        data: data.copyWith(
          flights: response.data as List<Flight>,
          currentPage: event.cursor,
          totalPage: response.totalPages,
        ),
      ));
    } on AppException catch (e) {
      emit(ListFlightState.getFlightPageFFailed(
        data: data,
        message: e.toString(),
      ));
    } catch (e) {
      emit(ListFlightState.getFlightPageFFailed(
        data: data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onFilterFlight(
    _FilterFlight event,
    Emitter<ListFlightState> emit,
  ) async {
    emit(ListFlightState.loading(
        data: data.copyWith(
      currentPage: 0,
    )));
    try {
      final response = await _flightsUsecase.filterFlight(
        data.locationArrival,
        data.locationDeparture,
        data.airlineName,
        data.currentPage,
        _pageSize,
      );
      emit(ListFlightState.filterFlightSuccess(
          data: data.copyWith(
        flights: response,
      )));
    } on AppException catch (e) {
      emit(ListFlightState.filterFlightFailed(
        data: data,
        message: e.toString(),
      ));
    } catch (e) {
      emit(ListFlightState.filterFlightFailed(
        data: data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onFetchAirlines(
    _FetchAirlines event,
    Emitter<ListFlightState> emit,
  ) async {
    emit(ListFlightState.loading(data: data));
    try {
      final provinces = await _placeService.getProvinces();
      if (provinces.isEmpty) {
        emit(ListFlightState.fetchPlaceFailed(
          data: data,
          message: 'Can\'t get provinces',
        ));
        return;
      }
      emit(ListFlightState.fetchPlaceSuccess(
          data: data.copyWith(
        locations: provinces,
        locationArrival: provinces.first.name,
        locationDeparture: provinces[1].name,
      )));
      return;
    } catch (e) {
      emit(
        ListFlightState.fetchPlaceFailed(data: data, message: e.toString()),
      );
    }
  }

  FutureOr<void> _onFetchPlaces(
    _FetchPlaces event,
    Emitter<ListFlightState> emit,
  ) async {
    emit(ListFlightState.loading(data: data));
    try {
      final result = await _airlineUsecase.fetchAllAirlines();
      final airline = result.isNotEmpty ? result.first : null;
      emit(ListFlightState.fetchAirlineSuccess(
        data: data.copyWith(
          listAirlines: result,
          airlineName: airline?.airlineName ?? '',
        ),
      ));
    } on AppException catch (e) {
      emit(ListFlightState.fetchAirlineFailed(
        data: data,
        message: e.toString(),
      ));
    } catch (e) {
      emit(ListFlightState.fetchAirlineFailed(
        data: data,
        message: e.toString(),
      ));
    }
  }
}
