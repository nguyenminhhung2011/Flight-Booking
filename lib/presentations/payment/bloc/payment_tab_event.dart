part of 'payment_tab_bloc.dart';

@freezed
class PaymentTabEvent with _$PaymentTabEvent {
  const factory PaymentTabEvent.started() = _Started;
}
