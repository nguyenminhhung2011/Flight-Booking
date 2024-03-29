import 'package:flight_booking/domain/entities/flight/flight.dart';
import 'package:flight_booking/domain/entities/payment/payment_detail_item.dart';
import 'package:flight_booking/domain/repositories/flight_repository.dart';
import 'package:injectable/injectable.dart';

import '../entities/page_response/page_response_entity.dart';

@injectable
class FlightsUsecase {
  final FlightRepository _flightRepository;
  FlightsUsecase(this._flightRepository);

  Future<List<Flight>> fetchAllFlights() async {
    return await _flightRepository.getListFlight();
  }

  Future<PageResponseEntity<Flight>> getFlightsByPage(
    int cursor,
    int pageSize,
  ) async {
    return await _flightRepository.getFlightsByPage(cursor, pageSize);
  }

  Future<PageResponseEntity<Flight>> getFlightByCategory({
    String? locationArrival,
    String? locationDeparture,
    String? airlineName,
    int? cursor,
    int? pageSize,
  }) async =>
      await _flightRepository.getFlightByCategory(
        locationArrival: locationArrival,
        locationDeparture: locationDeparture,
        airlineName: airlineName,
        cursor: cursor,
        pageSize: pageSize,
      );

  Future<List<Flight>> filterFlight(
    String locationArrival,
    String locationDeparture,
    String airlineName,
    int cursor,
    int pageSize,
  ) async {
    return await _flightRepository.filterFlight(
      locationArrival,
      locationDeparture,
      airlineName,
      cursor,
      pageSize,
    );
  }

  Future<List<Flight>> getFlightByDate({
    required int month,
    required int year,
    required int day,
  }) async =>
      await _flightRepository.getFlightByDate(
        month: month,
        year: year,
        day: day,
      );

  Future<Flight?> addNewFlight(Flight newFlight) async {
    var add = await _flightRepository.addNewFlight(newFlight);

    if (add != null) {
      return add;
    }

    return null;
  }

  Future<List<Flight>> getFlightByDepartureId(int id) async =>
      await _flightRepository.getFlightByDepartureId(id);

  Future<List<Flight>> getFlightByArrivalId(int id) async =>
      await _flightRepository.getFlightByArrivalId(id);
  Future<List<Flight>> getFlightByAirportId(int id) async =>
      await _flightRepository.getFlightByAirportId(id);

  Future<Flight?> getFlightById(String id) async {
    var result = await _flightRepository.getFlightById(id);
    return result;
  }

  Future<bool> deleteFlight(String id) async {
    return _flightRepository.deleteFlight(id);
  }

  Future<Flight?> editFlight(Flight newFlight, String id) async {
    return _flightRepository.editFlight(newFlight, id);
  }

  Future<PaymentDetailItem?> getPaymentFlightTics(int id) async =>
      _flightRepository.getPaymentFlightTics(id);
}
