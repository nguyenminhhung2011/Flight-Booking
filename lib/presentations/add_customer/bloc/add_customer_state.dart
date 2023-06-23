part of 'add_customer_bloc.dart';

@freezed
class AddCustomerState with _$AddCustomerState {
  const AddCustomerState._();

  const factory AddCustomerState.loading({
    required AddCustomerModelState data,
    required int loadingField,
  }) = _Loading;
  const factory AddCustomerState.initial({
    required AddCustomerModelState data,
  }) = _Initial;
  const factory AddCustomerState.addCustomerSuccess({
    required AddCustomerModelState data,
    required Customer customer,
  }) = _AddCustomerSuccess;

  const factory AddCustomerState.addCustomerFailed({
    required AddCustomerModelState data,
    required String message,
  }) = _AddCustomerFailed;

  const factory AddCustomerState.editCustomerSuccess({
    required AddCustomerModelState data,
    required Customer customer,
  }) = _EditCustomerSuccess;
  const factory AddCustomerState.editCustomerFailed({
    required AddCustomerModelState data,
    required String message,
  }) = _EditCustomerFailed;

  const factory AddCustomerState.getCustomerByIdSuccess({
    required AddCustomerModelState data,
    required Customer customer,
  }) = _GetCustomerByIdSuccess;

  const factory AddCustomerState.getCustomerByIdFailed({
    required AddCustomerModelState data,
    required String message,
  }) = _GetCustomerByIdFailed;

  bool get loadingGetData => maybeWhen(
      orElse: () => false, loading: (data, loadingField) => loadingField == 0);
  bool get loadingButton => maybeWhen(
      orElse: () => false, loading: (data, loadingField) => loadingField == 1);
}
