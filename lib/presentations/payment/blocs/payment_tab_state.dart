part of 'payment_tab_bloc.dart';

@freezed
class PaymentTabState with _$PaymentTabState {
  const PaymentTabState._();

  const factory PaymentTabState.initial({
    required PaymentTabModelState data,
  }) = _Initial;

  const factory PaymentTabState.loading({
    required PaymentTabModelState data,
    required int loadingField,
  }) = _Loading;

  const factory PaymentTabState.getCustomerByIdSuccess({
    required PaymentTabModelState data,
  }) = _GetCustomerByIdSuccess;

  const factory PaymentTabState.getCustomerByIdFailed({
    required PaymentTabModelState data,
    required String message,
  }) = _GetCustomerByIdFailed;

  const factory PaymentTabState.getFlightByIdSuccess({
    required PaymentTabModelState data,
  }) = _GetFlightByIdSuccess;

  const factory PaymentTabState.getFlightByIdFailed({
    required PaymentTabModelState data,
    required String message,
  }) = _GetFlightByIdFailed;

  const factory PaymentTabState.getTicInformationSuccess({
    required PaymentTabModelState data,
  }) = _GetTicInformationSuccess;

  const factory PaymentTabState.getTicInformationFailed({
    required PaymentTabModelState data,
    required String message,
  }) = _GetTicInformationFailed;

  const factory PaymentTabState.changeCustomerTabIndexSuccess({
    required PaymentTabModelState data,
  }) = _ChangeCustomerTabIndexSuccess;

  bool get loadingGetData => maybeWhen(
      orElse: () => false, loading: (data, loadingField) => loadingField == 0);
}
