import 'package:injectable/injectable.dart';

import '../entities/airport/airport.dart';
import '../entities/page_response/page_response_entity.dart';
import '../repositories/airport_repository.dart';

@injectable
class AirportUsecase {
  final AirportRepository _airportRepository;
  AirportUsecase(this._airportRepository);

  Future<List<Airport>> fetchAllAirports() async {
    return await _airportRepository.getListAirport() ?? [];
  }

  Future<PageResponseEntity<Airport>> fetchAirportByPage(
    int cursor,
    int pageSize,
  ) async {
    return await _airportRepository.getListAirportByPage(cursor, pageSize);
  }

  Future<Airport?> addNewAirport(Airport newAirport) async {
    var add = await _airportRepository.addNewAirport(newAirport);
    return add;
  }

  Future<bool> deleteAirport(int id) async {
    return _airportRepository.deleteAirport(id);
  }

  Future<Airport?> editAirport(Airport newAirport, int id) async {
    return _airportRepository.editAirport(newAirport, id);
  }

  Future<Airport?> getAirportById(String id) async {
    return _airportRepository.getAirportById(id);
  }
}
