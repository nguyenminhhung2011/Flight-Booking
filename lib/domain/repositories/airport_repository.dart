import '../entities/airport/airport.dart';
import '../entities/page_response/page_response_entity.dart';

abstract class AirportRepository {
  Future<List<Airport>> getListAirport();
  Future<List<Airport>> filterAirport({
    String? searchText,
  });

  Future<PageResponseEntity<Airport>> getListAirportByPage(
    int cursor,
    int pageSize,
  );

  Future<Airport?> addNewAirport(Airport airport);

  Future<bool> deleteAirport(int id);

  Future<Airport?> editAirport(Airport newAirport, int id);

  Future<Airport?> getAirportById(String id);
}
