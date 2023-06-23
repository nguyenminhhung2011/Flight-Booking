part of 'customer_bloc.dart';

@freezed
class CustomerState with _$CustomerState {
  const CustomerState._();
  const factory CustomerState.initial({required CustomerModelState data}) =
      _Initial;

  const factory CustomerState.loading({
    required CustomerModelState data,
    required int loadingField,
  }) = _Loading;

  const factory CustomerState.fetchCustomerDataSuccess({
    required CustomerModelState data,
  }) = _FetchCustomerDataSuccess;

  const factory CustomerState.fetchCustomerDataFailed({
    required CustomerModelState data,
    required String message,
  }) = _FetchCustomerDataFailed;

  const factory CustomerState.openCustomerDetailSuccess({
    required CustomerModelState data,
    required Customer customer,
  }) = _OpenCustomerDetailSuccess;

  const factory CustomerState.openCustomerDetailFailed(
      {required CustomerModelState data,
      required String message}) = _OpenCustomerDetailFailed;

  const factory CustomerState.selectCustomerSuccess({
    required CustomerModelState data,
    required Customer customer,
  }) = _SelectCustomerSuccess;

  const factory CustomerState.selectCustomerFailed({
    required CustomerModelState data,
    required String message,
  }) = _SelectCustomerFailed;

  const factory CustomerState.deleteCustomerSuccess(
      {required CustomerModelState data}) = _DeleteCustomerSuccess;

  const factory CustomerState.deleteCustomerFailed(
      {required CustomerModelState data,
      required String message}) = _DeleteCustomerFailed;
  const factory CustomerState.getPaymentOfCustomerSuccess(
      {required CustomerModelState data}) = _GetPaymentOfCustomerSuccess;

  const factory CustomerState.getPaymentOfCustomerFailed(
      {required CustomerModelState data,
      required String message}) = _GetPaymentOfCustomerFailed;

  const factory CustomerState.openCustomerAddEditPage({
    required CustomerModelState data,
    required String message,
  }) = _OpenCustomerAddEditPage;

  const factory CustomerState.updateCustomerSuccess({
    required CustomerModelState data,
  }) = _UpdateCustomerSuccess;

  bool get isLoadingGetData => maybeWhen(
      orElse: () => false, loading: (data, loadingField) => loadingField == 0);
  bool get isLoadingGetPayment => maybeWhen(
      orElse: () => false, loading: (data, loadingField) => loadingField == 1);

  Customer get customer => maybeWhen(
        orElse: () => Customer.empty,
        selectCustomerSuccess: (data, customer) => customer,
      );
}
