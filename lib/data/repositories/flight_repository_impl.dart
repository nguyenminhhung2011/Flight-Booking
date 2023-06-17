import 'package:flight_booking/core/components/network/app_exception.dart';
import 'package:flight_booking/data/datasource/remote/flight/flight_api.dart';
import 'package:flight_booking/data/models/model_heloer.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/flight/flight.dart';
import '../../domain/repositories/flight_repository.dart';

const _flightDefaultError = 'Error';

@Injectable(as: FlightRepository)
class FlightRepositoryImpl extends FlightRepository {
  final FlightApi _flightApi;
  FlightRepositoryImpl(this._flightApi);

  @override
  Future<List<Flight>> getListFlight() async {
    final response = await _flightApi.fetchFlights();
    if (response.response.statusCode != HttpStatusCode.OK) {
      throw AppException(
        code: response.response.statusCode,
        message: response.response.statusMessage ?? _flightDefaultError,
      );
    }
    final data = response.data?.map((e) => e.toEntity()).toList();
    return data ?? <Flight>[];
  }

  @override
  Future<Flight?> addNewFlight(Flight flight) async {
    final flightModel = ModelHelper.flightConvert(flight);
    final response = await _flightApi.addNewFlight(body: flightModel.toJson());
    if (response.response.statusCode != HttpStatusCode.CREATED) {
      throw AppException(
        code: response.response.statusCode,
        message: response.response.statusMessage ?? _flightDefaultError,
      );
    }
    return response.data?.toEntity();
  }

  @override
  Future<bool> deleteFlight(String id) async {
    final response = await _flightApi.deleteFlight(id);
    if (response.response.statusCode != HttpStatusCode.NO_CONTENT) {
      throw AppException(
        code: response.response.statusCode,
        message: response.response.statusMessage ?? _flightDefaultError,
      );
    }
    return true;
  }

  @override
  Future<Flight?> editFlight(Flight newFlight, String id) async {
    final flightModel = ModelHelper.flightConvert(newFlight);
    final response = await _flightApi.editFlight(
      body: flightModel.toJson(),
      id: id,
    );
    if (response.response.statusCode != HttpStatusCode.OK) {
      throw AppException(
        code: response.response.statusCode,
        message: response.response.statusMessage ?? _flightDefaultError,
      );
    }
    return response.data?.toEntity();
  }

  @override
  Future<Flight?> getFlightById(String id) async {
    final response = await _flightApi.getFlightById(id);
    if (response.response.statusCode != HttpStatusCode.OK) {
      throw AppException(
        code: response.response.statusCode,
        message: response.response.statusMessage ?? _flightDefaultError,
      );
    }
    return response.data?.toEntity();
  }
}
