part of 'handle_config_airport_bloc.dart';

@freezed
class HandleConfigAirportState with _$HandleConfigAirportState {
  const HandleConfigAirportState._();

  const factory HandleConfigAirportState.initial({
    required HandleConfigAirportModelState data,
  }) = _Initial;

  const factory HandleConfigAirportState.getAirportByIdSuccess({
    required HandleConfigAirportModelState data,
  }) = _GetAirportByIduccess;

  const factory HandleConfigAirportState.getAirportByIdFailed({
    required HandleConfigAirportModelState data,
    required String message,
  }) = _GetAirportByIdFailed;

  const factory HandleConfigAirportState.loading({
    required HandleConfigAirportModelState data,
  }) = _Loading;

  const factory HandleConfigAirportState.getFlightConfigsSuccess({
    required HandleConfigAirportModelState data,
  }) = _GetFlightConfigsSuccess;

  const factory HandleConfigAirportState.getFlightConfigsFailed({
    required HandleConfigAirportModelState data,
    required String message,
  }) = _GetFlightConfigsFailed;

  const factory HandleConfigAirportState.getAirportsSuccess({
    required HandleConfigAirportModelState data,
  }) = _GetAirportsSuccess;

  const factory HandleConfigAirportState.getAirportsFailed({
    required HandleConfigAirportModelState data,
    required String message,
  }) = _GetAirportsFailed;

  const factory HandleConfigAirportState.updateFlightConfigSuccess({
    required HandleConfigAirportModelState data,
  }) = _UpdateFlightConfigSuccess;

  const factory HandleConfigAirportState.updateFlightConfigFailed({
    required HandleConfigAirportModelState data,
    required String message,
  }) = _UpdateFlightConfigFailed;

  bool get isLoading => this is _Loading;
}
