import '../entities/flight/flight.dart';

abstract class ListFlightRepository {
  Future<List<Flight>> getListFlight();
}
