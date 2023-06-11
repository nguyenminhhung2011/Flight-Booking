import 'package:injectable/injectable.dart';

import '../entities/airport/airport.dart';
import '../repositories/airport_repository.dart';

@injectable
class AirportUsecase {
  final AirportRepository _airportRepository;
  AirportUsecase(this._airportRepository);

  Future<List<Airport>> fetchAllAirports() async {
    return await _airportRepository.getListAirport() ?? [];
  }

  Future<Airport?> addNewAirport(Airport newAirport) async {
    var add = await _airportRepository.addNewAirport(newAirport);
    return add;
  }

  Future<bool> deleteAirport(String id) async {
    return _airportRepository.deleteAirport(id);
  }

  Future<Airport?> editAirport(Airport newAirport) async {
    return _airportRepository.editAirport(newAirport);
  }
}
