import 'package:flight_booking/domain/entities/airport/airport.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../airline/airline.dart';
import '../airport/stop_airport.dart';
part 'flight.freezed.dart';

@freezed
class Flight with _$Flight {
  const factory Flight({
    required int id,
    required Airport arrivalAirport,
    required Airport departureAirport,
    required DateTime timeStart,
    required DateTime timeEnd,
    required Airline airline,
    @Default(<StopAirport>[]) List<StopAirport> stopAirports,
  }) = _Flight;
}
