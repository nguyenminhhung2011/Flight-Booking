part of 'customer_detail_bloc.dart';

@freezed
class CustomerDetailState with _$CustomerDetailState {
  const CustomerDetailState._();
  const factory CustomerDetailState.initial({
    required CustomerDetailModelState data,
  }) = _Initial;

  const factory CustomerDetailState.loading({
    required CustomerDetailModelState data,
    required int loadingGroup,
  }) = _Loading;

  const factory CustomerDetailState.getCustomerByIdSuccess({
    required CustomerDetailModelState data,
  }) = _GetCustomerByIdSuccess;

  const factory CustomerDetailState.getCustomerByIdFailed({
    required CustomerDetailModelState data,
    required String message,
  }) = _getCustomerByIdFailed;

  const factory CustomerDetailState.selectedPaymentSuccess({
    required CustomerDetailModelState data,
  }) = _SelectedPaymentSuccess;

  const factory CustomerDetailState.selectedPaymentFailed({
    required CustomerDetailModelState data,
    required String message,
  }) = _SelectedPaymentFailed;

  const factory CustomerDetailState.getPaymentItemsByCustomerIdSuccess({
    required CustomerDetailModelState data,
  }) = _GetPaymentItemsByCustomerIdSuccess;

  const factory CustomerDetailState.getPaymentItemsByCustomerIdFailed({
    required CustomerDetailModelState data,
    required String message,
  }) = _GetPaymentItemsByCustomerIdFailed;

  const factory CustomerDetailState.getTicInformationByFlightIdSuccess({
    required CustomerDetailModelState data,
  }) = _GetTicInformationByFlightIdSuccess;
  const factory CustomerDetailState.getTicInformationByFlightIdFailed({
    required CustomerDetailModelState data,
    required String message,
  }) = _GetTicInformationByFlightIdFailed;

  bool get loadingGetData => maybeWhen(
      orElse: () => false, loading: (data, loadingField) => loadingField == 0);
  bool get loadingGetItm => maybeWhen(
      orElse: () => false, loading: (data, loadingField) => loadingField == 1);
}
