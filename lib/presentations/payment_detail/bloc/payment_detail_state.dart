part of "payment_detail_bloc.dart";

@freezed
class PaymentDetailState with _$PaymentDetailState {
  const PaymentDetailState._();

  const factory PaymentDetailState.initial(
      {required final PaymentDetailModelState data}) = _Initial;

  const factory PaymentDetailState.loading(
      {required final PaymentDetailModelState data}) = _Loading;

  const factory PaymentDetailState.fetchPaymentDetailDataSuccess({
    required final PaymentDetailModelState data,
  }) = _FetchPaymentDetailDataSuccess;

  const factory PaymentDetailState.selectOldPaymentSuccess(
      {required final PaymentDetailModelState data}) = _SelectOldPaymentSuccess;

  const factory PaymentDetailState.changePaymentMethodSuccess(
          {required final PaymentDetailModelState data}) =
      _ChangePaymentMethodSuccess;

  const factory PaymentDetailState.openPaymentPageSuccess(
      {required final PaymentDetailModelState data}) = _OpenPaymentPageSuccess;

  const factory PaymentDetailState.failedState(
      {required final PaymentDetailModelState data}) = _FailedState;
}
