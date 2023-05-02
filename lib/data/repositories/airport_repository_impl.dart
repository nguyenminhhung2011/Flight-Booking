import 'dart:convert';
import 'dart:developer';

import 'package:flight_booking/data/models/airport/airport_model.dart';
import 'package:flight_booking/domain/entities/airport/airport.dart';
import 'package:flight_booking/domain/repositories/airport_repository.dart';
import 'package:injectable/injectable.dart';

import '../datasource/remote/rest_api/rest_api.dart';

class AirportEndPoint {
  static const fetchAirportUrl = "url/airport/fetch";
  static const editAirportUrl = "url/airport/edit";
  static const deleteAirportUrl = "url/airport/delete";
  static const addAirportUrl = "url/airport/add";
}

@Injectable(as: AirportRepository)
class AirportRepositoryImpl extends AirportRepository {
  final RestApi _restApi;
  AirportRepositoryImpl(this._restApi);

  @override
  Future<List<Airport>?> getListAirport() async {
    var result = <Airport>[];
    try {
      final response = await _restApi.get(
        AirportEndPoint.fetchAirportUrl,
        <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      if (response == null) {
        return null;
      }
      for (var item in response) {
        Map<String, dynamic> json = jsonDecode(item);
        result.add(AirportModel.fromJson(json).toEntity());
      }
    } catch (e) {
      log('Error');
    }
    return result;
  }

  @override
  Future<Airport?> addNewAirport(Airport airport) async {
    try {
      final airportModel =
          AirportModel(airport.id, airport.name, airport.image);
      final response = await _restApi.post(
        AirportEndPoint.addAirportUrl,
        jsonEncode(airportModel.toJson()),
        <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      if (response == null) {
        return null;
      }
      return airportModel.toEntity();
    } catch (e) {
      log('Error');
    }
    return null;
  }

  @override
  Future<bool> deleteAirport(String id) async {
    try {
      final response = await _restApi.delete(
        '${AirportEndPoint.deleteAirportUrl}/$id',
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
  Future<bool> editAirport(Airport newAirport) async {
    try {
      final airportModel =
          AirportModel(newAirport.id, newAirport.name, newAirport.image);
      final response = await _restApi.put(
        AirportEndPoint.editAirportUrl,
        jsonEncode(airportModel.toJson()),
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
}
