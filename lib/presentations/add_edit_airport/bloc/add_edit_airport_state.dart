part of 'add_edit_airport_bloc.dart';

@freezed
class AddEditAirportState with _$AddEditAirportState {
  const AddEditAirportState._();

  const factory AddEditAirportState.initial(
      {required AddEditAirportModelState data}) = _Initial;

  const factory AddEditAirportState.loading(
      {required AddEditAirportModelState data}) = _Loading;

  const factory AddEditAirportState.addNewAirportSuccess({
    required AddEditAirportModelState data,
    required Airport airport,
  }) = _AddNewAirportSuccess;

  const factory AddEditAirportState.addNewAirportFailed({
    required AddEditAirportModelState data,
    required String message,
  }) = _AddNewAirportFailed;

  const factory AddEditAirportState.editAirportSuccess({
    required AddEditAirportModelState data,
    required Airport airport,
  }) = _EditAirportSuccess;

  const factory AddEditAirportState.editAirportFailed({
    required AddEditAirportModelState data,
    required String message,
  }) = _EditAirportFailed;
  const factory AddEditAirportState.pickImageSuccess(
      {required AddEditAirportModelState data}) = _PickImageSuccess;
}
