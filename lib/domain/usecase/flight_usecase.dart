import 'package:flight_booking/domain/entities/flight/flight.dart';
import 'package:flight_booking/domain/repositories/flight_repository.dart';
import 'package:injectable/injectable.dart';

const _idNull = '';

@injectable
class FlightsUsecase {
  final FlightRepository _flightRepository;
  FlightsUsecase(this._flightRepository);

  Future<List<Flight>> fetchAllFlights() async {
    return await _flightRepository.getListFlight();
  }

  Future<String> addNewFlight(Flight newFlight) async {
    var add = await _flightRepository.addNewFlight(newFlight);
    if (add) {
      return newFlight.id;
    }
    return _idNull;
  }

  Future<bool> deleteFlight(String id) async {
    return _flightRepository.deleteFlight(id);
  }

  Future<bool> editlight(Flight newFlight) async {
    return _flightRepository.editlight(newFlight);
  }
}
