import 'package:flight_booking/domain/repositories/airline_repository.dart';
import 'package:injectable/injectable.dart';

import '../entities/airline/airline.dart';

@injectable
class AirlineUsecase {
  final AirlineRepository _airportRepository;
  AirlineUsecase(this._airportRepository);

  Future<List<Airline>> fetchAllAirlines() async {
    return await _airportRepository.getListAirline();
  }
}
