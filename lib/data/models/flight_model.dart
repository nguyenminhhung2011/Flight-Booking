import 'package:flight_booking/domain/entities/flight/flight.dart';

class FlightModel {
  late String id;
  late String idStartAirport;
  late String idComeAirport;
  late int timeStart;
  late int timeEnd;
  late int noCustomer;
  FlightModel();

  Flight toEntity() => Flight(
        id: id,
        idStartAirport: idStartAirport,
        idComeAirport: idComeAirport,
        timeStart: DateTime.fromMillisecondsSinceEpoch(timeStart),
        timeEnd: DateTime.fromMillisecondsSinceEpoch(timeEnd),
        noCustomer: noCustomer,
      );
}
