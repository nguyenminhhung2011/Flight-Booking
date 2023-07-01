import 'dart:async';

import 'package:flight_booking/core/components/network/app_exception.dart';
import 'package:flight_booking/domain/entities/airport/airport.dart';
import 'package:flight_booking/domain/usecase/airport_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'airport_mobile_model_state.dart';

part 'airport_mobile_event.dart';
part 'airport_mobile_state.dart';

part 'airport_mobile_bloc.freezed.dart';

@injectable
class AirportMobileBloc extends Bloc<AirportMobileEvent, AirportMobileState> {
  final AirportUsecase _airportUsecase;

  AirportMobileModelState get data => state.data;

  AirportMobileBloc(this._airportUsecase)
      : super(const AirportMobileState.initial(
          data: AirportMobileModelState(
            listAirport: <Airport>[],
            cursor: -1,
            // isScroll: true,
          ),
        )) {
    on<_Started>(_onStarted);
    on<_FetchAirport>(_onFetchAirport);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<AirportMobileState> emit,
  ) {}

  FutureOr<void> _onFetchAirport(
    _FetchAirport event,
    Emitter<AirportMobileState> emit,
  ) async {
    if (data.listAirport.length % 10 != 0) {
      return emit(AirportMobileState.fetchAirportsFailed(
        data: data,
        message: 'Max',
      ));
    }
    emit(AirportMobileState.loading(
        data: data.copyWith(cursor: data.cursor + 1), typeLoading: 1));
    try {
      final response =
          await _airportUsecase.fetchAirportByPage(data.cursor, event.pageSize);
      emit(AirportMobileState.fetchAirportsSuccess(
        data: state.data.copyWith(
          listAirport: [
            ...data.listAirport,
            ...(response.data as List<Airport>)
          ],
          cursor: response.currentPage,
        ),
      ));
    } on AppException catch (e) {
      emit(AirportMobileState.fetchAirportsFailed(
        data: data,
        message: e.message,
      ));
    } catch (e) {
      emit(AirportMobileState.fetchAirportsFailed(
        data: state.data,
        message: e.toString(),
      ));
    }
  }
}
