import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/airport/airport.dart';
import '../../../domain/entities/flight/flight.dart';

part 'airport_model_state.freezed.dart';

@freezed
class AirportModelState with _$AirportModelState {
  const factory AirportModelState({
    required List<Airport> airports,
    required Map<String, List<Flight>> flightDepartures,
    required Map<String, List<Flight>> flightArrival,
    Airport? airportView,
    required int pageView,
    required int currentPage,
    required int totalPage,
  }) = _AirportModelState;
}
