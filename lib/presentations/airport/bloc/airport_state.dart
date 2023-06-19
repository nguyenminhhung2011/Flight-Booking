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
    required int loadingField,
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

  const factory AirportState.updateAirportSuccess({
    required AirportModelState data,
  }) = _UpdateAirportSuccess;

  const factory AirportState.changePageAirportSuccess({
    required AirportModelState data,
  }) = _ChangePageAirportSuccess;

  const factory AirportState.changePageAirportFailed({
    required AirportModelState data,
    required String message,
  }) = _ChangePageAirportFailed;

  const factory AirportState.searchSuccess({
    required AirportModelState data,
  }) = _SearchSuccess;

  const factory AirportState.searchFailed({
    required AirportModelState data,
    required String message,
  }) = _SearchFailed;

  const factory AirportState.getAirportByIDSuccess({
    required AirportModelState data,
  }) = _GetAirportByIdSuccess;
  const factory AirportState.getAirportByIDFailed({
    required AirportModelState data,
    required String message,
  }) = _GetAirportByIdFailed;

  const factory AirportState.getFlightDepartureSuccess({
    required AirportModelState data,
  }) = _GetFlightDepartureSuccess;
  const factory AirportState.getFlightDepartureFailed({
    required AirportModelState data,
    required String message,
  }) = _GetFlightDepartureFailed;

  const factory AirportState.getFlightArrivalSuccess({
    required AirportModelState data,
  }) = _GetFlightArrivalSuccess;

  const factory AirportState.getFlightArrivalFailed({
    required AirportModelState data,
    required String message,
  }) = _GetFlightArrivalFailed;

  bool get isLoadingGetItems => maybeWhen(
      orElse: () => false, loading: (data, typeField) => typeField == 0);
  bool get isLoading => this is _Loading;

  bool get isWaitCircularLoading => this is _WaitCircularLoading;
}
