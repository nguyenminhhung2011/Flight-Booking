import '../entities/flight/flight.dart';
import '../entities/page_response/page_response_entity.dart';

abstract class FlightRepository {
  Future<List<Flight>> getListFlight();
  Future<List<Flight>> filterFlight(
    String locationArrival,
    String locationDeparture,
    String airlineName,
    int cursor,
    int pageSize,
  );
  Future<PageResponseEntity<Flight>> getFlightsByPage(int cursor, int pageSize);
  Future<Flight?> addNewFlight(Flight flight);

  Future<bool> deleteFlight(String id);
  Future<Flight?> editFlight(Flight newFlight, String id);

  Future<Flight?> getFlightById(String id);
}
