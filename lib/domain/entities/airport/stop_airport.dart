import 'package:freezed_annotation/freezed_annotation.dart';

import 'airport.dart';
part 'stop_airport.freezed.dart';

@freezed
class StopAirport with _$StopAirport {
  const factory StopAirport({
    required Airport airport,
    required DateTime stopTime,
    required String description,
  }) = _StopAirport;
}
