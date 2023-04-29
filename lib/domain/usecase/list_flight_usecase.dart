import 'package:flight_booking/domain/entities/flight/flight.dart';
import 'package:flight_booking/domain/repositories/list_flight_repository.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class ListFlightsUsecase {
  final ListFlightRepository _listFlightRepository;
  ListFlightsUsecase(this._listFlightRepository);

  Future<List<Flight>> fetchAllFlights() async {
    return await _listFlightRepository.getListFlight();
  }
}
