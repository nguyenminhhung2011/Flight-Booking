import 'package:flight_booking/core/components/network/app_exception.dart';
import 'package:flight_booking/data/datasource/remote/airport/airport_api.dart';
import 'package:flight_booking/data/models/model_heloer.dart';
import 'package:flight_booking/domain/entities/airport/airport.dart';
import 'package:flight_booking/domain/repositories/airport_repository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/page_response/page_response_entity.dart';

const _filterTextNull = '';
const _defaultError = 'Error';

@Injectable(as: AirportRepository)
class AirportRepositoryImpl extends AirportRepository {
  final AirportApi _airportApi;
  AirportRepositoryImpl(this._airportApi);

  @override
  Future<List<Airport>> getListAirport() async {
    final response = await _airportApi.fetchAirports();
    // 🐼 Dumb code
    if (response.response.statusCode != HttpStatusCode.OK) {
      throw AppException(
        code: response.response.statusCode,
        message: response.response.statusMessage ?? _defaultError,
      );
    }
    final result = response.data?.map((e) => e.toEntity()).toList();
    return result ?? <Airport>[];
  }

  @override
  Future<Airport?> addNewAirport(Airport airport) async {
    final airportModel = ModelHelper.airportConvert(airport);
    final body = airportModel.toJson();
    final response = await _airportApi.addNewAirPorts(body: body);
    if (response.response.statusCode != HttpStatusCode.CREATED) {
      throw AppException(
        code: response.response.statusCode,
        message: response.response.statusMessage ?? _defaultError,
      );
    }
    return response.data?.toEntity();
  }

  @override
  Future<bool> deleteAirport(int id) async {
    final response = await _airportApi.deleteAirport(id.toString());
    if (response.response.statusCode != HttpStatusCode.NO_CONTENT) {
      throw AppException(
        code: response.response.statusCode,
        message: response.response.statusMessage ?? _defaultError,
      );
    }
    return true;
  }

  @override
  Future<Airport?> editAirport(Airport newAirport, int id) async {
    final airportModel = ModelHelper.airportConvert(newAirport);
    final body = airportModel.toJson();
    final response =
        await _airportApi.editAirport(body: body, id: id.toString());
    if (response.response.statusCode != HttpStatusCode.OK) {
      throw AppException(
        code: response.response.statusCode,
        message: response.response.statusMessage ?? _defaultError,
      );
    }
    final result = response.data?.toEntity();
    return result;
  }

  @override
  Future<Airport?> getAirportById(String id) async {
    final response = await _airportApi.getAirportById(id);
    if (response.response.statusCode != HttpStatusCode.OK) {
      throw AppException(
        code: response.response.statusCode,
        message: response.response.statusMessage ?? _defaultError,
      );
    }
    return response.data.toEntity();
  }

  @override
  Future<PageResponseEntity<Airport>> getListAirportByPage(
    int cursor,
    int pageSize,
  ) async {
    final response = await _airportApi.getAirportByPage(cursor, pageSize);
    if (response.response.statusCode != HttpStatusCode.OK) {
      throw AppException(
        message: response.response.statusMessage ?? _defaultError,
        code: response.response.statusCode,
      );
    }
    final result = response.data!;

    return PageResponseEntity<Airport>(
      currentPage: result.currentPage,
      pageSize: result.pageSize,
      totalPages: result.totalPages,
      data: result.responseData.map((e) => e.toEntity()).toList(),
    );
  }

  @override
  Future<List<Airport>> filterAirport({
    String? searchText,
  }) async {
    final response = await _airportApi.filterAirport(
      search: searchText ?? _filterTextNull,
    );
    if (response.response.statusCode != HttpStatusCode.OK) {
      throw AppException(
        code: response.response.statusCode,
        message: response.response.statusMessage ?? _defaultError,
      );
    }
    final result = response.data?.map((e) => e.toEntity()).toList();
    return result ?? <Airport>[];
  }
}
