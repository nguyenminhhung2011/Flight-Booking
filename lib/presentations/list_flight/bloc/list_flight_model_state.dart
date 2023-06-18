import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/components/enum/type_page.dart';
import '../../../data/models/place/place_model.dart';
import '../../../domain/entities/airline/airline.dart';
import '../../../domain/entities/flight/flight.dart';

part 'list_flight_model_state.freezed.dart';

@freezed
class ListFlightModelState with _$ListFlightModelState {
  const factory ListFlightModelState({
    required List<Flight> flights,
    required int currentPage,
    required int totalPage,
    required String locationArrival,
    required String locationDeparture,
    required String airlineName,
    required List<Airline> listAirlines,
    required List<PlaceModel> locations,
    required TypePage typePage,
  }) = _ListFlightModelState;
}
