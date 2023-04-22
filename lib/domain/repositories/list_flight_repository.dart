import '../entities/Flight/Flight.dart';

abstract class ListFlightRepository {
  Future<List<Flight>> getListFlight();
}
