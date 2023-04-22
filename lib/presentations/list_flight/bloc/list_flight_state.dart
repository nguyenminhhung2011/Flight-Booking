part of 'list_flight_bloc.dart';

@freezed
class ListFlightState with _$ListFlightState {
  const ListFlightState._();
  const factory ListFlightState.initial({
    required ListFlightModelState data,
  }) = _Initial;
  const factory ListFlightState.loading({
    required ListFlightModelState data,
  }) = _Loading;

  const factory ListFlightState.selectListFlightSuccess({
    required ListFlightModelState data,
    required String flightId,
  }) = _SelectListFlightSuccess;

  const factory ListFlightState.selectListFlightFailed({
    required ListFlightModelState data,
    required String message,
  }) = _SelectListFlightFailed;
  const factory ListFlightState.getFlightsSuccess({
    required ListFlightModelState data,
  }) = _GetFlightsSuccess;
  const factory ListFlightState.getFlightsFailed({
    required ListFlightModelState data,
    required String message,
  }) = _GetFlightsFailed;
}
