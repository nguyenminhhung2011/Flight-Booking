import '../entities/airport/airport.dart';

abstract class AirportRepository {
  Future<List<Airport>?> getListAirport();
  Future<Airport?> addNewAirport(Airport airport);

  Future<bool> deleteAirport(String id);

  Future<bool> editAirport(Airport newAirport);
}
