import 'package:flight_booking/domain/entities/flight/flight.dart';
import 'package:flight_booking/domain/repositories/flight_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FlightsUsecase {
  final FlightRepository _flightRepository;
  FlightsUsecase(this._flightRepository);

  Future<List<Flight>> fetchAllFlights() async {
    return await _flightRepository.getListFlight();
  }

  Future<Flight?> addNewFlight(Flight newFlight) async {
    var add = await _flightRepository.addNewFlight(newFlight);

    if (add != null) {
      return newFlight;
    }

    return null;
  }

  Future<bool> deleteFlight(String id) async {
    return _flightRepository.deleteFlight(id);
  }

  Future<Flight?> editFlight(Flight newFlight, String id) async {
    return _flightRepository.editFlight(newFlight, id);
  }
}
