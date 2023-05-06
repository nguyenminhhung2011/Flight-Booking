import '../entities/flight/flight.dart';

abstract class FlightRepository {
  Future<List<Flight>?> getListFlight();
  Future<Flight?> addNewFlight(Flight flight);

  Future<bool> deleteFlight(String id);

  Future<Flight?> editlight(Flight newFlight);
}
