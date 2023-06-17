import '../entities/airline/airline.dart';

abstract class AirlineRepository {
  Future<List<Airline>> getListAirline();
}
