import 'package:flight_booking/data/datasource/remote/rest_api/rest_api.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/flight/flight.dart';
import '../../domain/repositories/flight_repository.dart';

@Injectable(as: FlightRepository)
class FlightRepositoryImpl extends FlightRepository {
  final RestApi _restApi;
  FlightRepositoryImpl(this._restApi);

  @override
  Future<List<Flight>> getListFlight() async {
    final flights = await _restApi.getListFlight();
    return flights.map((e) => e.toEntity()).toList();
  }

  @override
  Future<bool> addNewFlight(Flight flight) {
    return _restApi.addNewFlight(flight);
  }

  @override
  Future<bool> deleteFlight(String id) {
    return _restApi.deleteFlight(id);
  }

  @override
  Future<bool> editlight(Flight newFlight) {
    return _restApi.editlight(newFlight);
  }
}
