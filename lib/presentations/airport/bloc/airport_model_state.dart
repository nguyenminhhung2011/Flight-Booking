import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/airport/airport.dart';

part 'airport_model_state.freezed.dart';

@freezed
class AirportModelState with _$AirportModelState {
  const factory AirportModelState({
    required List<Airport> airports,
    required int pageView,
  }) = _AirportModelState;
}
