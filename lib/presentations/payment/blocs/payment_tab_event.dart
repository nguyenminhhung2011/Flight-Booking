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
}
