import 'package:injectable/injectable.dart';

import '../entities/airport/airport.dart';
import '../repositories/airport_repository.dart';

@injectable
class AirportUsecase {
  final AirportRepository _airportRepository;
  AirportUsecase(this._airportRepository);

  Future<List<Airport>> fetchAllFlights() async {
    return await _airportRepository.getListAirport() ?? [];
  }
}
