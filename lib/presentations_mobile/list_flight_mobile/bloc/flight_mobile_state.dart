part of 'flight_mobile_bloc.dart';

@freezed
class FlightMobileState with _$FlightMobileState {
  const FlightMobileState._();

  const factory FlightMobileState.initial({
    required FlightMobileModelState data,
  }) = _Initial;

  const factory FlightMobileState.fetchFlightsSuccess({
    required FlightMobileModelState data,
  }) = _FetchFlightSuccess;

  const factory FlightMobileState.fetchFlightsFailed({
    required FlightMobileModelState data,
    required String message,
  }) = _FetchFlightFailed;

  const factory FlightMobileState.getFlightByDateSuccess({
    required FlightMobileModelState data,
  }) = _GetFlightByDateSuccess;

  const factory FlightMobileState.getFlightByDateFailed({
    required FlightMobileModelState data,
    required String message,
  }) = _GetFlightByDateFailed;

  const factory FlightMobileState.loading({
    required FlightMobileModelState data,
    required int typeLoading,
  }) = _Loading;

  bool get isLoading => this is _Loading;
}
