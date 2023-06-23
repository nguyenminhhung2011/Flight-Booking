part of 'list_flight_bloc.dart';

@freezed
class ListFlightState with _$ListFlightState {
  const ListFlightState._();
  const factory ListFlightState.initial({
    required ListFlightModelState data,
  }) = _Initial;
  const factory ListFlightState.loading({
    required ListFlightModelState data,
    required int loadingField,
  }) = _Loading;

  const factory ListFlightState.selectListFlightSuccess({
    required ListFlightModelState data,
    required int flightId,
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

  const factory ListFlightState.openAddEditFlightFormSuccess({
    required ListFlightModelState data,
    required String flightId,
  }) = _OpenAddEditFlightFormSuccess;

  const factory ListFlightState.deleteFlightSuccess({
    required ListFlightModelState data,
  }) = _DeleteFlightSuccess;
  const factory ListFlightState.deleteFlightFailed({
    required ListFlightModelState data,
    required String message,
  }) = _DeleteFlightFailed;

  const factory ListFlightState.updateFlightSuccess({
    required ListFlightModelState data,
  }) = _UpdateFlightSuccess;

  const factory ListFlightState.getFlightByPageSuccess({
    required ListFlightModelState data,
  }) = _GetFlightByPageSuccess;

  const factory ListFlightState.getFlightPageFFailed({
    required ListFlightModelState data,
    required String message,
  }) = _GetFlightByPageFailed;

  const factory ListFlightState.filterFlightSuccess({
    required ListFlightModelState data,
  }) = _FilterFlightSuccess;

  const factory ListFlightState.filterFlightFailed({
    required ListFlightModelState data,
    required String message,
  }) = _FilterFlightFailed;

  const factory ListFlightState.fetchPlaceSuccess({
    required ListFlightModelState data,
  }) = _FetchPlaceSuccess;

  const factory ListFlightState.fetchPlaceFailed({
    required ListFlightModelState data,
    required String message,
  }) = _FetchPlaceFailed;
  const factory ListFlightState.fetchAirlineSuccess({
    required ListFlightModelState data,
  }) = _FetchAirlineSuccess;

  const factory ListFlightState.fetchAirlineFailed({
    required ListFlightModelState data,
    required String message,
  }) = _FetchAirlineFailed;

  const factory ListFlightState.getFlightByIdSuccess({
    required ListFlightModelState data,
    required int flightId,
  }) = _GetFlightByIdSuccess;
  const factory ListFlightState.getFlightByIdFailed({
    required ListFlightModelState data,
    required String message,
  }) = _GetFlightByIdFailed;

  const factory ListFlightState.getTicInformationByFlightIdSuccess({
    required ListFlightModelState data,
  }) = _GetTicInformationByFlightIdSuccess;
  const factory ListFlightState.getTicInformationByFlightIdFailed({
    required ListFlightModelState data,
    required String message,
  }) = _GetTicInformationByFlightIdFailed;

  bool get loadingMainField => maybeWhen(
      orElse: () => false, loading: (data, loadingField) => loadingField == 0);
  bool get loadingSubField => maybeWhen(
      orElse: () => false, loading: (data, loadingField) => loadingField == 1);
}
