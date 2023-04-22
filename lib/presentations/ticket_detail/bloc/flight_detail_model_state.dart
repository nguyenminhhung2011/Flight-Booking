import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/Flight/Flight.dart';

part 'flight_detail_model_state.freezed.dart';

@freezed
class FlightDetailModelState with _$FlightDetailModelState {
  const factory FlightDetailModelState({
    required Flight flight,
  }) = _FlightDetailModelState;
}
