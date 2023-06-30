import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/components/network/app_exception.dart';
import '../../../domain/entities/flight/flight.dart';
import '../../../domain/usecase/flight_usecase.dart';
import 'flight_mobile_model_state.dart';

part 'flight_mobile_event.dart';
part 'flight_mobile_state.dart';

part 'flight_mobile_bloc.freezed.dart';

@injectable
class FlightMobileBloc extends Bloc<FlightMobileEvent, FlightMobileState> {
  final FlightsUsecase _flightUsecase;

  FlightMobileModelState get data => state.data;

  FlightMobileBloc(this._flightUsecase)
      : super(FlightMobileState.initial(
          data: FlightMobileModelState(
            listFlight: <Flight>[],
            cursor: -1,
            timeSelected: DateTime.now(),
            // isScroll: true,
          ),
        )) {
    on<_Started>(_onStarted);
    on<_FetchFlight>(_onFetchFlight);
    on<_GetFlightByDate>(_onGetFlightByDate);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<FlightMobileState> emit,
  ) {}

  FutureOr<void> _onGetFlightByDate(
    _GetFlightByDate event,
    Emitter<FlightMobileState> emit,
  ) async {
    emit(_Loading(
      data: data.copyWith(cursor: 0, listFlight: []),
      typeLoading: 1,
    ));
    try {
      final response = await _flightUsecase.getFlightByDate(
        month: event.month,
        year: event.year,
        day: event.day,
      );
      emit(_GetFlightByDateSuccess(
          data: data.copyWith(
        listFlight: response,
      )));
    } on AppException catch (e) {
      emit(_GetFlightByDateFailed(data: data, message: e.toString()));
    } catch (e) {
      emit(_GetFlightByDateFailed(data: data, message: e.toString()));
    }
  }

  FutureOr<void> _onFetchFlight(
    _FetchFlight event,
    Emitter<FlightMobileState> emit,
  ) async {
    if (event.cursor != 0) {
      if (data.listFlight.length % 2 != 0) {
        return emit(FlightMobileState.fetchFlightsFailed(
          data: data,
          message: 'Max',
        ));
      }
    }

    emit(FlightMobileState.loading(
      data: data.copyWith(
        cursor: event.cursor,
        listFlight: event.cursor == 0 ? [] : data.listFlight,
      ),
      typeLoading: 1,
    ));
    try {
      final response = await _flightUsecase.getFlightsByPage(data.cursor, 10);
      emit(FlightMobileState.fetchFlightsSuccess(
        data: state.data.copyWith(
          listFlight: [...data.listFlight, ...(response.data as List<Flight>)],
          cursor: response.currentPage,
        ),
      ));
    } on AppException catch (e) {
      emit(FlightMobileState.fetchFlightsFailed(
        data: data,
        message: e.message,
      ));
    } catch (e) {
      emit(FlightMobileState.fetchFlightsFailed(
        data: state.data,
        message: e.toString(),
      ));
    }
  }
}
