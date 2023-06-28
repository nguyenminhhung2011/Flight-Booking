part of 'payment_tab_bloc.dart';

@freezed
class PaymentTabEvent with _$PaymentTabEvent {
  const factory PaymentTabEvent.started() = _Started;

  const factory PaymentTabEvent.getCustomerById() = _GetCustomerById;
  const factory PaymentTabEvent.getFlightById() = _GetFlightById;
  const factory PaymentTabEvent.getTicInformation() = _GetTicInformation;
  const factory PaymentTabEvent.changeCustomerIndexView({
    required int newIndex,
  }) = _ChangeCustomerIndexView;
  const factory PaymentTabEvent.addTicToDB({required String paymentType}) =
      _AddTicToDB;

  const factory PaymentTabEvent.getPaymentById() = _GetPaymentById;

  const factory PaymentTabEvent.updateContactCustomer({
    required String name,
    required String phoneNumber,
    required String email,
  }) = _UpdateContactCustomer;
}
