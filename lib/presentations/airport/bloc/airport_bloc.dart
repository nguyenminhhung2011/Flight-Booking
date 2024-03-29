import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flight_booking/core/components/network/app_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/constant/handle_time.dart';
import '../../../domain/entities/airport/airport.dart';
import '../../../domain/entities/flight/flight.dart';
import '../../../domain/usecase/airport_usecase.dart';
import '../../../domain/usecase/flight_usecase.dart';
import 'airport_model_state.dart';

part 'airport_event.dart';
part 'airport_state.dart';

part 'airport_bloc.freezed.dart';

const _pageSize = 15;

@injectable
class AirportBloc extends Bloc<AirportEvent, AirportState> {
  final AirportUsecase _airportUsecase;

  final FlightsUsecase _flightUsecase;

  AirportModelState get data => state.data;

  AirportBloc(
    this._airportUsecase,
    this._flightUsecase,
  ) : super(const AirportState.initial(
          data: AirportModelState(
            airports: [],
            pageView: 0,
            currentPage: 0,
            totalPage: 0,
            flightArrival: {},
            flightDepartures: {},
          ),
        )) {
    on<_Started>(_onStarted);
    on<_FetchAirports>(_onFetchAirports);
    on<_ChangePageView>(_onChangePageView);
    on<_OpenAddEditAirportForm>(_onOpenAddEditAirport);
    on<_UpdateAirportsAfterAdd>(_onUpdateAirportsAfterAdd);
    on<_UpdateAirportsAfterEdit>(_onUpdateAirportsAfterEdit);
    on<_DeleteAirport>(_onDeleteAirport);
    on<_LoadingComplete>(_onLoadingComplete);
    on<_ChangePageAirportView>(_onChangePageAirportView);
    on<_TextChange>(_onTextChange);
    on<_GetAirportById>(_onGetAirportById);
    on<_GetFlightArrival>(_onGetFlightArrival);
    on<_GetFlightDepartures>(_onGetFlightDeparture);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<AirportState> emit,
  ) {
    add(const _LoadingComplete());
  }

  FutureOr<void> _onLoadingComplete(
    _LoadingComplete event,
    Emitter<AirportState> emit,
  ) {
    emit(AirportState.loading(data: data, loadingField: 0));
  }

  FutureOr<void> _onFetchAirports(
    _FetchAirports event,
    Emitter<AirportState> emit,
  ) async {
    emit(AirportState.loading(data: data, loadingField: 0));
    try {
      final airports = await _airportUsecase.fetchAllAirports();
      emit(AirportState.fetchAirportsSuccess(
        data: state.data.copyWith(airports: airports),
      ));
    } on AppException catch (e) {
      emit(AirportState.fetchAirportsFailed(data: data, message: e.toString()));
    } catch (e) {
      emit(AirportState.fetchAirportsFailed(data: data, message: e.toString()));
    }
  }

  FutureOr<void> _onChangePageView(
    _ChangePageView event,
    Emitter<AirportState> emit,
  ) {
    emit(state.copyWith(
      data: state.data.copyWith(pageView: 1 - data.pageView),
    ));
  }

  FutureOr<void> _onOpenAddEditAirport(
    _OpenAddEditAirportForm event,
    Emitter<AirportState> emit,
  ) {
    emit(AirportState.loading(data: data, loadingField: 0));
    emit(AirportState.openAddEditAirportSuccess(data: data, id: event.id));
  }

  FutureOr<void> _onUpdateAirportsAfterAdd(
    _UpdateAirportsAfterAdd event,
    Emitter<AirportState> emit,
  ) {
    emit(AirportState.updateAirportSuccess(
      data: data.copyWith(airports: [...data.airports, event.airport]),
    ));
  }

  FutureOr<void> _onUpdateAirportsAfterEdit(
    _UpdateAirportsAfterEdit event,
    Emitter<AirportState> emit,
  ) {
    emit(AirportState.updateAirportSuccess(
        data: data.copyWith(
      airports: data.airports.map((e) {
        if (e.id == event.airport.id) {
          return event.airport;
        }
        return e;
      }).toList(),
    )));
  }

  FutureOr<void> _onDeleteAirport(
    _DeleteAirport event,
    Emitter<AirportState> emit,
  ) async {
    emit(AirportState.loading(data: data, loadingField: 0));
    try {
      final delete = await _airportUsecase.deleteAirport(event.id);
      if (!delete) {
        emit(AirportState.deleteAirportFailed(
          data: data,
          message: 'Delete Airport Failed',
        ));
        return;
      }
      emit(AirportState.deleteAirportSuccess(
        data: data.copyWith(
          airports:
              data.airports.where((element) => element.id != event.id).toList(),
        ),
      ));
    } on AppException catch (e) {
      emit(AirportState.deleteAirportFailed(data: data, message: e.toString()));
    } catch (e) {
      emit(AirportState.deleteAirportFailed(data: data, message: e.toString()));
    }
  }

  FutureOr<void> _onChangePageAirportView(
    _ChangePageAirportView event,
    Emitter<AirportState> emit,
  ) async {
    emit(AirportState.loading(data: data, loadingField: 0));
    if (event.page != 0) {
      if (event.page >= data.totalPage || event.page < 0) {
        emit(AirportState.changePageAirportFailed(
          data: data,
          message: 'Current page is max',
        ));
        return;
      }
    }
    try {
      final response =
          await _airportUsecase.fetchAirportByPage(event.page, _pageSize);
      if (response.data.isEmpty) {
        emit(AirportState.changePageAirportFailed(
          data: data,
          message: 'Can\'t fetch airport',
        ));
        return;
      }
      final airports = response.data as List<Airport>;
      final airportView = (airports.isNotEmpty) ? airports.first : null;
      emit(AirportState.changePageAirportSuccess(
        data: data.copyWith(
          airports: airports,
          currentPage: event.page,
          totalPage: response.totalPages,
          airportView: airportView,
        ),
      ));
    } on AppException catch (e) {
      emit(AirportState.changePageAirportFailed(
        data: data,
        message: e.toString(),
      ));
    } catch (e) {
      emit(AirportState.changePageAirportFailed(
        data: data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onTextChange(
    _TextChange event,
    Emitter<AirportState> emit,
  ) async {
    emit(AirportState.loading(data: data, loadingField: 0));
    if (event.text.isEmpty) {
      add(const AirportEvent.changePageAirportView(0));
    }
    try {
      final airports = await _airportUsecase.filterAirports(search: event.text);
      final airportView = (airports.isNotEmpty) ? airports.first : null;

      if (airports.isNotEmpty) {
        emit(AirportState.searchSuccess(
            data: data.copyWith(
          airports: airports,
          currentPage: 0,
          airportView: airportView,
        )));
      }
      return;
    } on AppException catch (e) {
      emit(AirportState.searchFailed(data: data, message: e.toString()));
    } catch (e) {
      emit(AirportState.searchFailed(data: data, message: e.toString()));
    }
  }

  Map<String, List<Flight>> _generate(List<Flight> flights, bool isDeparture) {
    Map<String, List<Flight>> result = {};
    for (var item in flights) {
      var date = isDeparture ? item.timeStart : item.timeEnd;
      var key = getYmdFormat(date);

      result.putIfAbsent(key, () => <Flight>[]);
      result[key]?.add(item);
    }
    return result;
  }

  FutureOr<void> _onGetFlightDeparture(
    _GetFlightDepartures event,
    Emitter<AirportState> emit,
  ) async {
    emit(AirportState.loading(data: data, loadingField: 1));
    try {
      final flights = await _flightUsecase.getFlightByDepartureId(event.id);
      emit(AirportState.getFlightDepartureSuccess(
          data: data.copyWith(
        flightDepartures: _generate(flights, true),
      )));
    } on AppException catch (e) {
      emit(AirportState.getFlightDepartureFailed(
        data: data,
        message: e.toString(),
      ));
    } catch (e) {
      emit(AirportState.getFlightDepartureFailed(
        data: data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onGetFlightArrival(
    _GetFlightArrival event,
    Emitter<AirportState> emit,
  ) async {
    emit(AirportState.loading(data: data, loadingField: 1));
    try {
      final flights = await _flightUsecase.getFlightByArrivalId(event.id);
      emit(AirportState.getFlightArrivalSuccess(
          data: data.copyWith(
        flightArrival: _generate(flights, false),
      )));
    } on AppException catch (e) {
      emit(AirportState.getFlightArrivalFailed(
        data: data,
        message: e.toString(),
      ));
    } catch (e) {
      emit(AirportState.getFlightArrivalFailed(
        data: data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onGetAirportById(
    _GetAirportById event,
    Emitter<AirportState> emit,
  ) async {
    emit(AirportState.loading(data: data, loadingField: 1));
    try {
      final airport = await _airportUsecase.getAirportById(event.id.toString());
      emit(
        AirportState.getAirportByIDSuccess(
            data: data.copyWith(
          airportView: airport,
        )),
      );
    } on AppException catch (e) {
      emit(AirportState.getAirportByIDFailed(
        data: data,
        message: e.toString(),
      ));
    } catch (e) {
      emit(AirportState.getAirportByIDFailed(
        data: data,
        message: e.toString(),
      ));
    }
  }
}
