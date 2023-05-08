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

  const factory AirportState.openAddEditAirportSucceess({
    required AirportModelState data,
    required String id,
  }) = _OpenAddEditAirportSuccess;
}
