part of 'customer_detail_bloc.dart';

@freezed
class CustomerDetailEvent with _$CustomerDetailEvent {
  const factory CustomerDetailEvent.started() = _Started;
  const factory CustomerDetailEvent.getCustomerById() = _GetCustomerById;
  const factory CustomerDetailEvent.getPaymentItemsByCustomerId() =
      _GetPaymentItemsByCustomerId;
  const factory CustomerDetailEvent.selectedPayment({
    required int paymentId,
  }) = _SelectedPayment;

  const factory CustomerDetailEvent.getTicInformationByFlightId({
    required int id,
  }) = _GetTicInformationByFlightId;
}
