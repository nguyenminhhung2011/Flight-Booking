import 'package:flight_booking/core/components/enum/payment_status_enum.dart';
import 'package:flight_booking/core/components/enum/payment_type.dart';
import 'package:flight_booking/domain/entities/customer/customer.dart';
import 'package:flight_booking/domain/entities/flight/flight.dart';
import 'package:flight_booking/domain/entities/ticket/ticket.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_detail_item.freezed.dart';

@freezed
class PaymentDetailItem with _$PaymentDetailItem {
  factory PaymentDetailItem({
    @Default(-1) int id,
    @Default(0) int createdDate,
    @Default(PaymentType.cash) PaymentType paymentType,
    @Default(PaymentStatus.create) PaymentStatus paymentStatus,
    @Default(0) double total,
    @Default(null) Flight? flight,
    @Default(null) Customer? customer,
    @Default([]) List<Ticket> ticket,
  }) = _PaymentDetailItem;

  const PaymentDetailItem._();
}
