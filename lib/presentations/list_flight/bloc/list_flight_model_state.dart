import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/flight/flight.dart';

part 'list_flight_model_state.freezed.dart';

@freezed
class ListFlightModelState with _$ListFlightModelState {
  const factory ListFlightModelState({
    required List<Flight> flights,
  }) = _ListFlightModelState;
}
