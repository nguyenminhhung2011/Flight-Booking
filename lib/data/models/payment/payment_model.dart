import 'package:flight_booking/domain/entities/payment/payment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentModel {
  final String id;
  final String customerId;
  final String flightId;
  final String paymentMethod;
  final double amount;
  final int creDate;
  final String status;

  PaymentModel({
    required this.id,
    required this.customerId,
    required this.flightId,
    required this.paymentMethod,
    required this.amount,
    required this.creDate,
    required this.status,
  });

  Map<String, dynamic> toJson() => _$PaymentModelToJson(this);

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);

  Payment get toEntity => Payment(
        id: id,
        customerId: customerId,
        flightId: flightId,
        paymentMethod: paymentMethod,
        amount: amount,
        creDate: DateTime.fromMillisecondsSinceEpoch(creDate),
        status: status,
      );
}
