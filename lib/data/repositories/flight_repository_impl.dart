import 'dart:convert';
import 'dart:developer';

import 'package:flight_booking/data/datasource/remote/rest_api/rest_api.dart';
import 'package:flight_booking/data/models/flight/flight_model.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/flight/flight.dart';
import '../../domain/repositories/flight_repository.dart';

class FlightEndPoint {
  static const fetchFlightUrl = "url/flight/fetch";
  static const editFlightUrl = "url/flight/edit";
  static const deleteFlightUrl = "url/flight/delete";
  static const addFlightUrl = "url/flight/add";
}

@Injectable(as: FlightRepository)
class FlightRepositoryImpl extends FlightRepository {
  final RestApi _restApi;
  FlightRepositoryImpl(this._restApi);

  @override
  Future<List<Flight>?> getListFlight() async {
    var result = <Flight>[];
    try {
      final response = await _restApi.get(
        FlightEndPoint.fetchFlightUrl,
        <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      if (response == null) {
        return null;
      }
      for (var item in response) {
        Map<String, dynamic> json = jsonDecode(item);
        result.add(FlightModel.fromJson(json).toEntity());
      }
    } catch (e) {
      log('Error');
    }
    return result;
  }

  @override
  Future<Flight?> addNewFlight(Flight flight) async {
    try {
      final flightModel = FlightModel(
        flight.id,
        flight.idStartAirport,
        flight.idComeAirport,
        flight.timeStart.millisecondsSinceEpoch,
        flight.timeEnd.millisecondsSinceEpoch,
        flight.noCustomer,
      );
      final response = await _restApi.put(
        FlightEndPoint.addFlightUrl,
        jsonEncode(flightModel.toJson()),
        <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      if (response == null) {
        return null;
      }
      return flightModel.toEntity();
    } catch (e) {
      log('Error');
    }
    return null;
  }

  @override
  Future<bool> deleteFlight(String id) async {
    try {
      final response = await _restApi.delete(
        '${FlightEndPoint.deleteFlightUrl}/$id',
        {},
        <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      return response != null;
    } catch (e) {
      log('Error');
    }
    return false;
  }

  @override
  Future<bool> editlight(Flight newFlight) async {
    try {
      final flightModel = FlightModel(
        newFlight.id,
        newFlight.idStartAirport,
        newFlight.idComeAirport,
        newFlight.timeStart.millisecondsSinceEpoch,
        newFlight.timeEnd.millisecondsSinceEpoch,
        newFlight.noCustomer,
      );
      final response = await _restApi.post(
        FlightEndPoint.addFlightUrl,
        jsonEncode(flightModel.toJson()),
        <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      if (response == null) {
        return false;
      }
      return true;
    } catch (e) {
      log('Error');
    }
    return false;
  }
}
