import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/data/models/airport/airport_model.dart';
import 'package:flight_booking/domain/entities/airport/airport.dart';

import '../../domain/entities/airline/airline.dart';
import '../../domain/entities/flight/flight.dart';
import 'airline/airline_model.dart';
import 'flight/flight_model.dart';

class ModelHelper {
  static AirportModel airportConvert(Airport airport) => AirportModel(
        airport.id,
        airport.name,
        airport.image,
        airport.location,
        airport.description,
        timeOfDayToInt(airport.openTime),
        timeOfDayToInt(airport.closeTime),
      );

  static FlightModel flightConvert(Flight flight) => FlightModel(
        flight.id,
        airportConvert(flight.arrivalAirport),
        airportConvert(flight.departureAirport),
        flight.timeStart,
        flight.timeEnd,
        airlineConvert(flight.airline),
      );

  static AirlineModel airlineConvert(Airline airline) => AirlineModel(
        airline.id,
        airline.airlineName,
      );
}
