import 'package:flight_booking/domain/entities/customer/customer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/payment/payment.dart';
import '../../../domain/entities/ticket/ticket_information.dart';

part "customer_model_state.freezed.dart";

@freezed
class CustomerModelState with _$CustomerModelState {
  const factory CustomerModelState({
    required List<Customer> customers,
    Payment? paymentSelected,
    Customer? customerSelected,
    int? currentIndex,
    Map<int, TicketInformation>? ticInformation,
  }) = _CustomerModelState;

  // const factory CustomerModelState.detailCustomer(
  //     {required Customer customer}) = _DetailCustomer;
}
