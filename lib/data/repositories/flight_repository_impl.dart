import 'package:flight_booking/data/datasource/remote/flight/flight_api.dart';
import 'package:flight_booking/data/models/flight/flight_model.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/flight/flight.dart';
import '../../domain/repositories/flight_repository.dart';

@Injectable(as: FlightRepository)
class FlightRepositoryImpl extends FlightRepository {
  final FlightApi _flightApi;
  FlightRepositoryImpl(this._flightApi);

  @override
  Future<List<Flight>?> getListFlight() async {
    final response = await _flightApi.fetchFlights();
    final data = response.data?.map((e) => e.toEntity()).toList();
    return data ?? [];
  }

  @override
  Future<Flight?> addNewFlight(Flight flight) async {
    final flightModel = FlightModel(
      flight.id,
      flight.idStartAirport,
      flight.idComeAirport,
      flight.timeStart.millisecondsSinceEpoch,
      flight.timeEnd.millisecondsSinceEpoch,
      flight.noCustomer,
    );

    final response = await _flightApi.addNewFlight(body: flightModel.toJson());
    final data = response.data?.toEntity();
    if (data == null) {
      return null;
    }
    return data;
  }

  @override
  Future<bool> deleteFlight(String id) async {
    final response = await _flightApi.deleteFlight(id);
    return response.data;
  }

  @override
  Future<Flight?> editlight(Flight newFlight) async {
    final flightModel = FlightModel(
      newFlight.id,
      newFlight.idStartAirport,
      newFlight.idComeAirport,
      newFlight.timeStart.millisecondsSinceEpoch,
      newFlight.timeEnd.millisecondsSinceEpoch,
      newFlight.noCustomer,
    );
    final response = await _flightApi.editFlight(body: flightModel.toJson());
    final data = response.data?.toEntity();
    if (data == null) {
      return null;
    }
    return data;
  }
}
