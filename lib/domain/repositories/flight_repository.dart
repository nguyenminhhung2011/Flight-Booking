import '../entities/flight/flight.dart';

abstract class FlightRepository {
  Future<List<Flight>> getListFlight();
  Future<Flight?> addNewFlight(Flight flight);

  Future<bool> deleteFlight(String id);
  Future<Flight?> editFlight(Flight newFlight, String id);

  Future<Flight?> getFlightById(String id);
}
