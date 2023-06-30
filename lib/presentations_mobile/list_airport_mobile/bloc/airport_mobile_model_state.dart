import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/airport/airport.dart';

part 'airport_mobile_model_state.freezed.dart';

@freezed
class AirportMobileModelState with _$AirportMobileModelState {
  const factory AirportMobileModelState({
    required List<Airport> listAirport,
    required int cursor,
    // required bool isScroll,
  }) = _AirportMobileModelState;
}
