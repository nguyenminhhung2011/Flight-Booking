import 'package:flight_booking/data/datasource/remote/rest_api/rest_api.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/Flight/Flight.dart';
import '../../domain/repositories/list_flight_repository.dart';

@Injectable(as: ListFlightRepository)
class ListFlightRepositoryImpl extends ListFlightRepository {
  final RestApi _restApi;
  ListFlightRepositoryImpl(this._restApi);

  @override
  Future<List<Flight>> getListFlight() {
    throw _restApi.getListFlight();
  }
}
