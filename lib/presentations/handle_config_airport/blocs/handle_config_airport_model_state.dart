import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/airport/airport.dart';
import '../../../domain/entities/flight/flight.dart';
part 'handle_config_airport_model_state.freezed.dart';

@freezed
class HandleConfigAirportModelState with _$HandleConfigAirportModelState {
  const factory HandleConfigAirportModelState({
    required List<Flight> flightConfigs,
    required List<Airport> airports,
    Flight? flightSelected,
    Airport? airportSelected,
    Airport? airport,
  }) = _HandleConfigAirportModelState;
}
