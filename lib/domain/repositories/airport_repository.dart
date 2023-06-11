import '../entities/airport/airport.dart';

abstract class AirportRepository {
  Future<List<Airport>?> getListAirport();
  Future<Airport?> addNewAirport(Airport airport);

  Future<bool> deleteAirport(int id);

  Future<Airport?> editAirport(Airport newAirport);

  Future<Airport?> getAirportById(String id);
}
