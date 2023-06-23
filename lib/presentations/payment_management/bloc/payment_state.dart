part of "payment_bloc.dart";

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial(
      {@Default(
        PaymentModelStateData(
          payments: [],
          totalData: TotalStatisticalData(),
          revenue: Revenue(),
          statusData: PaymentStatusStateData(),
          ticketTierData: TicketTierData(),
        ),
      )
      final PaymentModelStateData data}) = _Initial;

  const factory PaymentState.loading(
      {required final PaymentModelStateData data}) = _Loading;

  const factory PaymentState.fetchPaymentDataSuccess({
    required final PaymentModelStateData data,
  }) = _FetchPaymentDataSuccess;

  const factory PaymentState.deletePaymentSuccess({
    required final PaymentModelStateData data,
  }) = _DeletePaymentSuccess;

  const factory PaymentState.openPaymentDetailSuccess({
    required final PaymentModelStateData data,
  }) = _OpenPaymentDetailSuccess;

  const factory PaymentState.fetchListPaymentDataSuccess({
    required final PaymentModelStateData data,
  }) = _FetchListPaymentDataSuccess;

  const factory PaymentState.paymentDataFailedState({
    required final PaymentModelStateData data,
    required final String message,
  }) = _PaymentDataFailedState;
}
