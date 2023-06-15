import 'package:flight_booking/core/components/network/app_exception.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/airline/airline.dart';
import '../../domain/repositories/airline_repository.dart';
import '../datasource/remote/airline/airline_api.dart';

const _defaultError = 'Error';

@Injectable(as: AirlineRepository)
class AirlineRepositoryImpl extends AirlineRepository {
  final AirlineApi _airportApi;
  AirlineRepositoryImpl(this._airportApi);

  @override
  Future<List<Airline>> getListAirline() async {
    final response = await _airportApi.fetchAirlines();
    // 🐼 Dumb code
    if (response.response.statusCode != HttpStatusCode.OK) {
      throw AppException(
        code: response.response.statusCode,
        message: response.response.statusMessage ?? _defaultError,
      );
    }
    final result = response.data?.map((e) => e.toEntity()).toList();
    return result ?? <Airline>[];
  }
}
