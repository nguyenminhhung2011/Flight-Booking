import 'package:flight_booking/domain/entities/payment/payment_detail_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/customer/customer.dart';
import '../../../../domain/entities/payment/payment_item.dart';
import '../../../../domain/entities/ticket/ticket_information.dart';

part 'customer_detail_model_state.freezed.dart';

@freezed
class CustomerDetailModelState with _$CustomerDetailModelState {
  const factory CustomerDetailModelState({
    Customer? customer,
    PaymentDetailItem? payment,
    required List<TicketInformation> ticInformation,
    required List<PaymentItem> payments,
  }) = _CustomerDetailModelState;
}
