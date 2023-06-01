part of 'payment_detail_bloc.dart';

@freezed
class PaymentDetailEvent with _$PaymentDetailEvent {
  const PaymentDetailEvent._();

  const factory PaymentDetailEvent.onStarted() = _OnStarted;

  const factory PaymentDetailEvent.fetchPaymentDetailData() =
      _FetchPaymentDetailData;

  const factory PaymentDetailEvent.selectOldPayment() = _SelectOldPayment;

  const factory PaymentDetailEvent.changePaymentMethod() = _ChangePaymentMethod;

  const factory PaymentDetailEvent.openPaymentPage() = _OpenPaymentPage;
}
