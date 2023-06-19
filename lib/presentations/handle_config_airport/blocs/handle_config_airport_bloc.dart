import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/components/network/app_exception.dart';
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
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<HandleConfigAirportState> emit,
  ) {}

  FutureOr<void> _onGetAirportById(
    _GetAirportById event,
    Emitter<HandleConfigAirportState> emit,
  ) async {
    emit(HandleConfigAirportState.loading(data: data));
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
          airportSelected: result,
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
    emit(HandleConfigAirportState.loading(data: data));
    try {
      final airports = await _airportUsecase.fetchAllAirports();
      emit(HandleConfigAirportState.getAirportsSuccess(
        data: state.data.copyWith(airports: airports),
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
    emit(HandleConfigAirportState.loading(data: data));
    try {
      final airport = await _flightUsecase.getFlightByAirportId(_airportId);
      emit(
        HandleConfigAirportState.getFlightConfigsSuccess(
            data: data.copyWith(
          flightConfigs: airport,
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
    emit(HandleConfigAirportState.loading(data: data));
    try {} on AppException catch (e) {
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
}
