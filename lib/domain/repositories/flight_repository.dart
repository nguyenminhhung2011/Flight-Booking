import '../entities/flight/flight.dart';

abstract class FlightRepository {
  Future<List<Flight>> getListFlight();
  Future<bool> addNewFlight(Flight flight);

  Future<bool> deleteFlight(String id);

  Future<bool> editlight(Flight newFlight);
}
