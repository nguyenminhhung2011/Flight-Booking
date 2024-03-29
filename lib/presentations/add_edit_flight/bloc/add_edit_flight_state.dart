part of 'add_edit_flight_bloc.dart';

@freezed
class AddEditFlightState with _$AddEditFlightState {
  const AddEditFlightState._();

  const factory AddEditFlightState.initial(
      {required AddEditFlightModelState data}) = _Initial;

  const factory AddEditFlightState.loading({
    required AddEditFlightModelState data,
    required int type,
  }) = _Loading;

  const factory AddEditFlightState.addNewFlightSuccess({
    required AddEditFlightModelState data,
    required Flight flight,
  }) = _AddNewFlightSuccess;

  const factory AddEditFlightState.addNewFlightFailed({
    required AddEditFlightModelState data,
    required String message,
  }) = _AddNewFlightFailed;

  const factory AddEditFlightState.editFlightSuccess({
    required AddEditFlightModelState data,
    required Flight flight,
  }) = _EditFlightSuccess;

  const factory AddEditFlightState.editFlightFailed({
    required AddEditFlightModelState data,
    required String message,
  }) = _EditFlightFailed;

  const factory AddEditFlightState.fetchAirportSuccess({
    required AddEditFlightModelState data,
  }) = _FetchAirportSuccess;

  const factory AddEditFlightState.fetchAirportFailed({
    required AddEditFlightModelState data,
    required String message,
  }) = _FetchAirportFailed;

  const factory AddEditFlightState.fetchAirlineSuccess({
    required AddEditFlightModelState data,
  }) = _FetchAirlineSuccess;

  const factory AddEditFlightState.fetchAirlineFailed({
    required AddEditFlightModelState data,
    required String message,
  }) = _FetchAirlineFailed;

  const factory AddEditFlightState.getFlightByIdSuccess({
    required AddEditFlightModelState data,
  }) = _GetFlightByIdSuccess;
  const factory AddEditFlightState.changeTicInformationViewSuccess({
    required AddEditFlightModelState data,
  }) = _ChangeTicInformationViewSuccess;
  const factory AddEditFlightState.updateTicInformationSuccess({
    required AddEditFlightModelState data,
  }) = _UpdateTicInformationSuccess;

  const factory AddEditFlightState.selectedStopAirportSuccess({
    required AddEditFlightModelState data,
    required String description,
  }) = _SelectedStopAirportSuccess;

  const factory AddEditFlightState.removeStopAirportSuccess({
    required AddEditFlightModelState data,
  }) = _RemoveStopAirportSuccess;

  const factory AddEditFlightState.addNewStopAirportSuccess({
    required AddEditFlightModelState data,
  }) = _AddNewStopAirportSuccess;

  const factory AddEditFlightState.addNewStopAirportFailed({
    required AddEditFlightModelState data,
    required String message,
  }) = _AddNewStopAirportFailed;

  const factory AddEditFlightState.getFlightByIdFailed({
    required AddEditFlightModelState data,
    required String message,
  }) = _GetFlightByIdFailed;

  const factory AddEditFlightState.addTicInformationSuccess({
    required AddEditFlightModelState data,
    required Flight flight,
  }) = _AddTicInformationSuccess;

  const factory AddEditFlightState.selectedAirportStopSuccess({
    required AddEditFlightModelState data,
  }) = _SelectedAirportStopSuccess;
  const factory AddEditFlightState.selectedTimeStopSuccess({
    required AddEditFlightModelState data,
  }) = _SelectedTimeStopSuccess;

  const factory AddEditFlightState.addTicInformationFailed({
    required AddEditFlightModelState data,
    required String message,
  }) = _AddTicInformationFailed;
}
