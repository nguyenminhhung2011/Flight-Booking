part of 'add_edit_airport_bloc.dart';

@freezed
class AddEditAirportState with _$AddEditAirportState {
  const AddEditAirportState._();

  const factory AddEditAirportState.initial(
      {required AddEditAirportModelState data}) = _Initial;

  const factory AddEditAirportState.loading({
    required AddEditAirportModelState data,
    required int groupLoading,
  }) = _Loading;

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

  const factory AddEditAirportState.pickImageSuccess({
    required AddEditAirportModelState data,
  }) = _PickImageSuccess;

  const factory AddEditAirportState.fetchPlaceSuccess({
    required AddEditAirportModelState data,
  }) = _FetchPlaceSuccess;

  const factory AddEditAirportState.fetchPlaceFailed({
    required AddEditAirportModelState data,
    required String message,
  }) = _FetchPlaceFailed;

  const factory AddEditAirportState.fetchDistrictsSuccess({
    required AddEditAirportModelState data,
  }) = _FetchDistrictsSuccess;

  const factory AddEditAirportState.fetchDistrictsFailed({
    required AddEditAirportModelState data,
    required String message,
  }) = _FetchDistrictsFailed;

  const factory AddEditAirportState.fetchWardsSuccess({
    required AddEditAirportModelState data,
  }) = _FetchWardsSuccess;

  const factory AddEditAirportState.fetchWardsFailed({
    required AddEditAirportModelState data,
    required String message,
  }) = _FetchWardsFailed;

  const factory AddEditAirportState.getAirportByIdSuccess({
    required AddEditAirportModelState data,
  }) = _GetAirportByIdSuccess;

  const factory AddEditAirportState.getAirportByIdFailed({
    required AddEditAirportModelState data,
    required String message,
  }) = _GetAirportByIdFailed;

  bool get isLoading => this is _Loading;
}
