part of 'flight_detail_bloc.dart';

@freezed
class FlightDetailState with _$FlightDetailState {
  const FlightDetailState._();
  const factory FlightDetailState.initial({
    required FlightDetailModelState data,
  }) = _Initial;
  const factory FlightDetailState.loading({
    required FlightDetailModelState data,
  }) = _Loading;
}
