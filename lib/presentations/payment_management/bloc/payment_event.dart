part of "payment_bloc.dart";

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.onStarted() = _OnStarted;
  const factory PaymentEvent.fetchPaymentData({
    final List<DateTime>? dateRange,
    final PaymentStatus? status,
    final PaymentType? paymentMethod,
  }) = _FetchPaymentData;
  const factory PaymentEvent.openPaymentDetail() = _OpenPaymentDetail;
  const factory PaymentEvent.deletePayment() = _DeletePayment;
  const factory PaymentEvent.fetchListPaymentData() = _FetchListPaymentData;
}
