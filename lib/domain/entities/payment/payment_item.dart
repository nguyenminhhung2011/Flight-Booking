import 'package:flight_booking/core/components/enum/payment_status_enum.dart';
import 'package:flight_booking/core/components/enum/payment_type.dart';
import 'package:flight_booking/domain/entities/customer/customer.dart';
import 'package:flight_booking/domain/entities/payment/payment_detail_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_item.freezed.dart';

@freezed
class PaymentItem with _$PaymentItem {
  const factory PaymentItem({
    @Default("") String id,
    @Default(0) int createDate,
    @Default(PaymentType.cash) PaymentType paymentType,
    @Default(PaymentStatus.create) PaymentStatus paymentStatus,
    @Default(0) double total,
    @Default(null) Customer? customer,
  }) = _PaymentItem;

  factory PaymentItem.fromPaymentDetail(PaymentDetailItem paymentDetail) {
    return PaymentItem(
      createDate: paymentDetail.createdDate,
      customer: paymentDetail.customer,
      id: paymentDetail.id.toString(),
      paymentStatus: paymentDetail.paymentStatus,
      paymentType: paymentDetail.paymentType,
      total: paymentDetail.total,
    );
  }
}
