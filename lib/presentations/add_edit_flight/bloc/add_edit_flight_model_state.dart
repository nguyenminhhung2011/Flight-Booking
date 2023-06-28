import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/airline/airline.dart';
import '../../../domain/entities/airport/airport.dart';
import '../../../domain/entities/airport/stop_airport.dart';
import '../../../domain/entities/ticket/ticket_information.dart';

part 'add_edit_flight_model_state.freezed.dart';

@freezed
class AddEditFlightModelState with _$AddEditFlightModelState {
  const factory AddEditFlightModelState({
    required List<Airport> listAirport,
    required List<StopAirport> stopAirport,
    required List<Airline> listAirline,
    required DateTime timeStart,
    required DateTime timeEnd,
    required DateTime timeStopSelected,
    required String headerText,
    required List<TicketInformation> listTicInformation,
    required int ticInformationDisplayIndex,
    Airport? airportStart,
    Airport? airportEnd,
    Airline? airline,
    Airport? airportStopSelected,
  }) = _AddEditFlightModelState;
}
