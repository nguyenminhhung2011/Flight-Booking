import 'package:flight_booking/core/components/network/app_exception.dart';
import 'package:flight_booking/data/datasource/remote/airport/airport_api.dart';
import 'package:flight_booking/data/models/airport/airport_model.dart';
import 'package:flight_booking/domain/entities/airport/airport.dart';
import 'package:flight_booking/domain/repositories/airport_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AirportRepository)
class AirportRepositoryImpl extends AirportRepository {
  final AirportApi _airportApi;
  AirportRepositoryImpl(this._airportApi);

  @override
  Future<List<Airport>?> getListAirport() async {
    final response = await _airportApi.fetchAirports();
    // 🐼 Dumb code
    if (response.response.statusCode != 200) {
      throw AppException(
        code: response.response.statusCode,
        message: response.response.statusMessage!,
      );
    }
    final result = response.data?.map((e) => e.toEntity()).toList();
    return result ?? [];
  }

  @override
  Future<Airport?> addNewAirport(Airport airport) async {
    final airportModel = AirportModel(
      airport.id,
      airport.name,
      airport.image,
      airport.location,
    );
    final body = airportModel.toJson();
    final response = await _airportApi.addNewAirPorts(body: body);
    if (response.response.statusCode != 201) {
      throw AppException(
        code: response.response.statusCode,
        message: response.response.statusMessage!,
      );
    }
    final result = response.data?.toEntity();
    return result;
  }

  @override
  Future<bool> deleteAirport(int id) async {
    final response = await _airportApi.deleteAirport(id.toString());
    if (response.response.statusCode != 204) {
      throw AppException(
        code: response.response.statusCode,
        message: response.response.statusMessage!,
      );
    }
    return true;
  }

  @override
  Future<Airport?> editAirport(Airport newAirport) async {
    final airportModel = AirportModel(
      newAirport.id,
      newAirport.name,
      newAirport.image,
      newAirport.location,
    );
    final body = airportModel.toJson();
    final response = await _airportApi.editAirport(body: body);
    if (response.response.statusCode != 200) {
      throw AppException(
        code: response.response.statusCode,
        message: response.response.statusMessage!,
      );
    }
    final result = response.data?.toEntity();
    return result;
  }

  @override
  Future<Airport?> getAirportById(String id) async {
    final response = await _airportApi.getAirportById(id);
    if (response.response.statusCode != 200) {
      throw AppException(
        code: response.response.statusCode,
        message: response.response.statusMessage!,
      );
    }
    return response.data.toEntity();
  }
}
