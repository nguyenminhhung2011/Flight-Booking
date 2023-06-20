import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/components/network/app_exception.dart';
import '../../../domain/entities/airport/airport.dart';
import '../../../domain/entities/flight/flight.dart';
import '../../../domain/usecase/airport_usecase.dart';
import '../../../domain/usecase/flight_usecase.dart';
import 'handle_config_airport_model_state.dart';

part 'handle_config_airport_state.dart';
part 'handle_config_airport_event.dart';

part 'handle_config_airport_bloc.freezed.dart';

@injectable
class HandleConfigAirportBloc
    extends Bloc<HandleConfigAirportEvent, HandleConfigAirportState> {
  final AirportUsecase _airportUsecase;

  final FlightsUsecase _flightUsecase;

  final int _airportId;

  HandleConfigAirportModelState get data => state.data;

  HandleConfigAirportBloc(
    @factoryParam int airportId,
    this._airportUsecase,
    this._flightUsecase,
  )   : _airportId = airportId,
        super(const HandleConfigAirportState.initial(
          data: HandleConfigAirportModelState(
            airports: [],
            flightConfigs: [],
          ),
        )) {
    on<_Started>(_onStarted);
    on<_GetAirportById>(_onGetAirportById);
    on<_GetAllAirport>(_onGetAllAirport);
    on<_GetFlightConfigs>(_onGetFlightConfigs);
    on<_UpdateFlightConfigs>(_onUpdateFlightConfigs);
    on<_SelectedAirport>(_onSelectedAirport);
    on<_SelectedFlight>(_onSelectedFlight);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<HandleConfigAirportState> emit,
  ) {}

  FutureOr<void> _onGetAirportById(
    _GetAirportById event,
    Emitter<HandleConfigAirportState> emit,
  ) async {
    emit(HandleConfigAirportState.loading(data: data, loadingField: 0));
    try {
      final result =
          await _airportUsecase.getAirportById(_airportId.toString());
      if (result == null) {
        emit(HandleConfigAirportState.getAirportByIdFailed(
          data: data,
          message: 'Can\'t get airport',
        ));
        return;
      }
      emit(HandleConfigAirportState.getAirportByIdSuccess(
        data: data.copyWith(
          airport: result,
        ),
      ));
    } on AppException catch (error) {
      emit(HandleConfigAirportState.getAirportByIdFailed(
        data: data,
        message: error.message,
      ));
    } catch (error) {
      emit(HandleConfigAirportState.getAirportByIdFailed(
        data: data,
        message: error.toString(),
      ));
    }
  }

  FutureOr<void> _onGetAllAirport(
    _GetAllAirport event,
    Emitter<HandleConfigAirportState> emit,
  ) async {
    emit(HandleConfigAirportState.loading(data: data, loadingField: 0));
    try {
      final airports = await _airportUsecase.fetchAllAirports();
      emit(HandleConfigAirportState.getAirportsSuccess(
        data: state.data.copyWith(
          airports: airports,
          airportSelected: airports.first,
        ),
      ));
    } on AppException catch (e) {
      emit(HandleConfigAirportState.getAirportsFailed(
          data: data, message: e.toString()));
    } catch (e) {
      emit(HandleConfigAirportState.getAirportsFailed(
          data: data, message: e.toString()));
    }
  }

  FutureOr<void> _onGetFlightConfigs(
    _GetFlightConfigs event,
    Emitter<HandleConfigAirportState> emit,
  ) async {
    emit(HandleConfigAirportState.loading(data: data, loadingField: 0));
    try {
      final flight = await _flightUsecase.getFlightByAirportId(_airportId);
      emit(
        HandleConfigAirportState.getFlightConfigsSuccess(
            data: data.copyWith(
          flightConfigs: flight,
          flightSelected: (flight.isNotEmpty) ? flight.first : null,
        )),
      );
    } on AppException catch (e) {
      emit(HandleConfigAirportState.getFlightConfigsFailed(
        data: data,
        message: e.toString(),
      ));
    } catch (e) {
      emit(HandleConfigAirportState.getFlightConfigsFailed(
        data: data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onUpdateFlightConfigs(
    _UpdateFlightConfigs event,
    Emitter<HandleConfigAirportState> emit,
  ) async {
    emit(HandleConfigAirportState.loading(data: data, loadingField: 1));
    try {
      if (data.flightSelected == null || data.airportSelected == null) {
        return emit(HandleConfigAirportState.updateFlightConfigFailed(
          data: data,
          message: 'Flight selected',
        ));
      }
      final newFlight = data.flightSelected?.copyWith(
        departureAirport: data.flightSelected!.departureAirport.id == _airportId
            ? data.airportSelected!
            : data.flightSelected!.departureAirport,
        arrivalAirport: data.flightSelected!.arrivalAirport.id == _airportId
            ? data.airportSelected!
            : data.flightSelected!.arrivalAirport,
      );
      final edit =
          await _flightUsecase.editFlight(newFlight!, newFlight.id.toString());
      if (edit == null) {
        return emit(HandleConfigAirportState.updateFlightConfigFailed(
          data: data,
          message: 'Can\'t update this flight ',
        ));
      }
      return emit(HandleConfigAirportState.updateFlightConfigSuccess(
        data: data.copyWith(
            flightConfigs: data.flightConfigs.map((e) {
          if (e.id == edit.id) {
            return edit;
          }
          return e;
        }).toList()),
      ));
    } on AppException catch (e) {
      emit(HandleConfigAirportState.updateFlightConfigFailed(
        data: data,
        message: e.toString(),
      ));
    } catch (e) {
      emit(HandleConfigAirportState.updateFlightConfigFailed(
        data: data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onSelectedAirport(
    _SelectedAirport event,
    Emitter<HandleConfigAirportState> emit,
  ) {
    emit(state.copyWith(
      data: data.copyWith(
        airportSelected: event.airport,
      ),
    ));
  }

  FutureOr<void> _onSelectedFlight(
    _SelectedFlight event,
    Emitter<HandleConfigAirportState> emit,
  ) {
    emit(state.copyWith(
      data: data.copyWith(
        flightSelected: event.flight,
      ),
    ));
  }
}
