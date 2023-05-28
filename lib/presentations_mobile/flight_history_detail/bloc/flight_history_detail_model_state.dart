import 'package:freezed_annotation/freezed_annotation.dart';

part 'flight_history_detail_model_state.freezed.dart';

@freezed
class FlightHistoryDetailModelState with _$FlightHistoryDetailModelState {
  const factory FlightHistoryDetailModelState({
    required int customerViewIndex,
  }) = _FlightHistoryDetailModelState;
}
