import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/flight/flight.dart';

part 'flight_mobile_model_state.freezed.dart';

@freezed
class FlightMobileModelState with _$FlightMobileModelState {
  const factory FlightMobileModelState({
    required List<Flight> listFlight,
    required int cursor,
    required DateTime timeSelected,
    // required bool isScroll,
  }) = _FlightMobileModelState;
}
