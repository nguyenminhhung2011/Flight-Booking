import 'package:flight_booking/core/components/enum/payment_status_enum.dart';
import 'package:flight_booking/core/components/enum/payment_type.dart';
import 'package:flight_booking/data/models/customer/customer_model.dart';
import 'package:flight_booking/domain/entities/payment/payment_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_light.g.dart';

@JsonSerializable(explicitToJson: false)
class PaymentLight {
  @JsonKey(name: "id")
  final int id;

  @JsonKey(name: "createdDate")
  final int createDate;

  @JsonKey(name: 'paymentType')
  final String paymentType;

  @JsonKey(name: "paymentStatus")
  final String paymentStatus;

  @JsonKey(name: "total")
  final double total;

  @JsonKey(name: "customer")
  final CustomerModel customer;

  PaymentLight({
    required this.id,
    required this.createDate,
    required this.total,
    required this.paymentStatus,
    required this.paymentType,
    required this.customer,
  });

  Map<String, dynamic> toJson() => _$PaymentLightToJson(this);

  factory PaymentLight.fromJson(Map<String, dynamic> json) =>
      _$PaymentLightFromJson(json);

  PaymentItem get toEntity => PaymentItem(
        id: id.toString(),
        createDate: createDate,
        paymentStatus: PaymentStatus.getByName(paymentStatus),
        paymentType: PaymentType.getByName(paymentType),
        customer: customer.toEntity(),
        total: total,
      );
}
