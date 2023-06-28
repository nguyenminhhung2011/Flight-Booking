part of 'book_ticket_bloc.dart';

@freezed
class BTState with _$BTState {
  const BTState._();

  const factory BTState.initial({required BTModelState data}) = _Initial;

  const factory BTState.loading({
    required BTModelState data,
    required int groupLoading,
  }) = _Loading;

  const factory BTState.changeTicIndexViewSuccess({
    required BTModelState data,
  }) = _ChangeTicIndexViewSuccess;

  const factory BTState.fetchCustomerDataSuccess({
    required BTModelState data,
  }) = _FetchCustomerDataSuccess;

  const factory BTState.fetchCustomerDataFailed({
    required BTModelState data,
    required String message,
  }) = _FetchCustomerDataFailed;

  const factory BTState.getFlightByIdSuccess({
    required BTModelState data,
  }) = _GetFlightByIdSuccess;

  const factory BTState.getFlightByIdFailed({
    required BTModelState data,
    required String message,
  }) = _GetFlightByIdFailed;

  const factory BTState.getCustomerBydIdSuccess({
    required BTModelState data,
  }) = _GetCustomerBydIdSuccess;

  const factory BTState.getCustomerBydIdFailed({
    required BTModelState data,
    required String message,
  }) = _GetCustomerBydIdFailed;

  const factory BTState.getTicInformationSuccess({
    required BTModelState data,
  }) = _GetTicInformationSuccess;

  const factory BTState.getTicInformationFailed({
    required BTModelState data,
    required String message,
  }) = _GetTicInformationFailed;

  const factory BTState.getAllTicOfFlightSuccess({
    required BTModelState data,
  }) = _GetAllTicOfFlightSuccess;

  const factory BTState.getAllTicOfFlightFailed({
    required BTModelState data,
    required String message,
  }) = _GetAllTicOfFlightFailed;

  const factory BTState.searchCustomerSuccess({
    required BTModelState data,
  }) = _SearchCustomerSuccess;

  const factory BTState.updateCustomerSuccess({
    required BTModelState data,
  }) = _UpdateCustomerSuccess;

  const factory BTState.searchCustomerFailed({
    required BTModelState data,
    required String message,
  }) = _SearchCustomerFailed;

  const factory BTState.selectedSeatSuccess({
    required BTModelState data,
    required int ticIndex,
  }) = _SelectedSeatSuccess;

  const factory BTState.selectedSeatFailed({
    required BTModelState data,
  }) = _SelectedSeatFailed;

  const factory BTState.addSeatSuccess({
    required BTModelState data,
  }) = _AddSeatSuccess;
  const factory BTState.removeTicSuccess({
    required BTModelState data,
  }) = _RemoveTicSuccess;

  const factory BTState.selectedTicSuccess({
    required BTModelState data,
    required Ticket tic,
  }) = _SelectedTicSuccess;

  const factory BTState.editTicSuccess({
    required BTModelState data,
  }) = _EditTicSuccess;

  const factory BTState.addTicToDBSuccess({
    required BTModelState data,
    required int paymentId,
  }) = _AddTicToDBSuccess;

  const factory BTState.addTicToDBFailed({
    required BTModelState data,
    required String message,
  }) = _AddTicToDBFailed;

  bool get loadingButton => maybeWhen(
      orElse: () => false, loading: (data, loadingField) => loadingField == 5);
}
