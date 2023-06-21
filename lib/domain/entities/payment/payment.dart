import 'package:flight_booking/core/components/enum/payment_status_enum.dart';
import 'package:flight_booking/core/components/enum/payment_type.dart';
import 'package:flight_booking/domain/entities/customer/customer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../ticket/ticket.dart';
part 'payment.freezed.dart';

@freezed
class Payment with _$Payment {
  const factory Payment({
    required String id,
    required int createDate,
    required PaymentType paymentType,
    required PaymentStatus paymentStatus,
    required double total,
    required Customer customer,
    required List<Ticket> tickets,
  }) = _Payment;
}
