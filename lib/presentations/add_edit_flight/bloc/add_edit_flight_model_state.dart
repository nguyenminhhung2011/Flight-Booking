import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/airline/airline.dart';
import '../../../domain/entities/airport/airport.dart';

part 'add_edit_flight_model_state.freezed.dart';

@freezed
class AddEditFlightModelState with _$AddEditFlightModelState {
  const factory AddEditFlightModelState({
    required List<Airport> listAirport,
    required List<Airline> listAirline,
    required DateTime timeStart,
    required DateTime timeEnd,
    required String headerText,
    Airport? airportStart,
    Airport? airportEnd,
    Airline? airline,
  }) = _AddEditFlightModelState;
}
