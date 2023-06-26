import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/flight/flight.dart';
import '../../../domain/entities/payment/payment.dart';
import '../../../domain/entities/ticket/ticket_information.dart';
part 'payment_tab_model_state.freezed.dart';

@freezed
class PaymentTabModelState with _$PaymentTabModelState {
  const factory PaymentTabModelState({
    Flight? flight,
    Customer? customer,
    Map<int, TicketInformation>? ticInformation,
    Payment? payment,
    required Map<String, double> priceSummary,
    required int customerIndex,
  }) = _PaymentTabModelState;
}
