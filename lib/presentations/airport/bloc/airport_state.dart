part of 'airport_bloc.dart';

@freezed
class AirportState with _$AirportState {
  const AirportState._();

  const factory AirportState.initial({
    required AirportModelState data,
  }) = _Initial;

  const factory AirportState.fetchAirportsSuccess({
    required AirportModelState data,
  }) = _FetchAirportSuccess;

  const factory AirportState.fetchAirportsFailed({
    required AirportModelState data,
    required String message,
  }) = _FetchAirportFailed;

  const factory AirportState.loading({
    required AirportModelState data,
  }) = _Loading;

  const factory AirportState.openAddEditAirportSuccess({
    required AirportModelState data,
    required String id,
  }) = _OpenAddEditAirportSuccess;

  const factory AirportState.deleteAirportSuccess({
    required AirportModelState data,
  }) = _DeleteAirportSuccess;

  const factory AirportState.deleteAirportFailed({
    required AirportModelState data,
    required String message,
  }) = _DeleteAirportFailed;
  const factory AirportState.waitCircularLoading({
    required AirportModelState data,
  }) = _WaitCircularLoading;

  bool get isLoading => this is _Loading;
  bool get isWaitCircularLoading => this is _WaitCircularLoading;
}
