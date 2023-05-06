part of 'add_edit_flight_bloc.dart';

@freezed
class AddEditFlightState with _$AddEditFlightState {
  const AddEditFlightState._();

  const factory AddEditFlightState.initial(
      {required AddEditFlightModelState data}) = _Initial;

  const factory AddEditFlightState.loading(
      {required AddEditFlightModelState data}) = _Loading;

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
}
