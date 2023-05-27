part of 'flight_history_detail_bloc.dart';

@freezed
class FlightHistoryDetailState with _$FlightHistoryDetailState {
  const factory FlightHistoryDetailState.initial({
    required FlightHistoryDetailModelState data,
  }) = _Initial;
}
