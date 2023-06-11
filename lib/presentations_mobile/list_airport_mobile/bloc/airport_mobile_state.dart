part of 'airport_mobile_bloc.dart';

@freezed
class AirportMobileState with _$AirportMobileState {
  const AirportMobileState._();

  const factory AirportMobileState.initial({
    required AirportMobileModelState data,
  }) = _Initial;

  const factory AirportMobileState.fetchAirportsSuccess({
    required AirportMobileModelState data,
  }) = _FetchAirportSuccess;

  const factory AirportMobileState.fetchAirportsFailed({
    required AirportMobileModelState data,
    required String message,
  }) = _FetchAirportFailed;

  const factory AirportMobileState.loading({
    required AirportMobileModelState data,
    required int typeLoading,
  }) = _Loading;

  bool get isLoading => this is _Loading;
}
