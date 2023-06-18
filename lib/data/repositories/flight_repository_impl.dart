import 'package:flight_booking/core/components/network/app_exception.dart';
import 'package:flight_booking/data/datasource/remote/flight/flight_api.dart';
import 'package:flight_booking/data/models/model_heloer.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/flight/flight.dart';
import '../../domain/entities/page_response/page_response_entity.dart';
import '../../domain/repositories/flight_repository.dart';

const _flightDefaultError = 'Error';
const _constPageSize = 10;
const _defaultCursor = 0;

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

  @override
  Future<PageResponseEntity<Flight>> getFlightsByPage(
    int cursor,
    int pageSize,
  ) async {
    final response = await _flightApi.getFlightByPage(cursor, pageSize);
    if (response.response.statusCode != HttpStatusCode.OK) {
      throw AppException(
        code: response.response.statusCode,
        message: response.response.statusMessage ?? _flightDefaultError,
      );
    }
    final result = response.data!;

    return PageResponseEntity<Flight>(
      currentPage: result.currentPage,
      pageSize: result.pageSize,
      totalPages: result.totalPages,
      data: result.responseData.map((e) => e.toEntity()).toList(),
    );
  }

  @override
  Future<List<Flight>> filterFlight(
    String locationArrival,
    String locationDeparture,
    String airlineName,
    int cursor,
    int pageSize,
  ) async {
    final response = await _flightApi.filterFlight(
      cursor: cursor,
      pageSize: pageSize,
      locationArrival: locationArrival,
      locationDeparture: locationDeparture,
      airlineName: airlineName,
    );
    if (response.response.statusCode != HttpStatusCode.OK) {
      throw AppException(
        code: response.response.statusCode,
        message: response.response.statusMessage ?? _flightDefaultError,
      );
    }
    final result = response.data?.map((e) => e.toEntity()).toList();
    return result ?? <Flight>[];
  }

  @override
  Future<PageResponseEntity<Flight>> getFlightByCategory({
    String? locationArrival,
    String? locationDeparture,
    String? airlineName,
    String? searchText,
    int? cursor,
    int? pageSize,
  }) async {
    bool locationArrivalCheck = locationArrival?.isNotEmpty ?? false;
    bool locationDepartureCheck = locationDeparture?.isNotEmpty ?? false;
    bool airlineNameCheck = airlineName?.isNotEmpty ?? false;
    if (!locationDepartureCheck || !locationArrivalCheck || !airlineNameCheck) {
      return await getFlightsByPage(
        cursor ?? _defaultCursor,
        pageSize ?? _constPageSize,
      );
    }
    final result = await filterFlight(
      locationArrival ?? '',
      locationDeparture ?? '',
      airlineName ?? '',
      cursor ?? _defaultCursor,
      pageSize ?? _constPageSize,
    );
    return PageResponseEntity(
      currentPage: cursor ?? 0,
      pageSize: pageSize ?? 10,
      totalPages: 2,
      data: result,
    );
  }
}
