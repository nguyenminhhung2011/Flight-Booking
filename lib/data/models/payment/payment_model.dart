import 'package:flight_booking/core/components/enum/payment_status_enum.dart';
import 'package:flight_booking/core/components/enum/payment_type.dart';
import 'package:flight_booking/data/models/customer/customer_model.dart';
import 'package:flight_booking/data/models/ticket/ticket_model.dart';
import 'package:flight_booking/domain/entities/customer/customer.dart';
import 'package:flight_booking/domain/entities/payment/payment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentModel {
  @JsonKey(name: "id")
  final String id;

  @JsonKey(name: "created_date")
  final int createDate;

  @JsonKey(name: 'payment_type')
  final PaymentType paymentType;

  @JsonKey(name: "status")
  final PaymentStatus paymentStatus;

  @JsonKey(name: "total")
  final double total;

  @JsonKey(name: "customer")
  final CustomerModel customer;

  @JsonKey(name: "ticket")
  final List<TicketModel> tickets;

  PaymentModel({
    required this.tickets,
    required this.id,
    required this.createDate,
    required this.paymentType,
    required this.paymentStatus,
    required this.total,
    required this.customer,
  });

  Map<String, dynamic> toJson() => _$PaymentModelToJson(this);

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);

  Payment get toEntity => Payment(
        id: id,
        customer: customer.toEntity(),
        createDate: createDate,
        paymentStatus: paymentStatus,
        paymentType: paymentType,
        total: total,
        tickets: tickets.map((e) => e.toEntity).toList(),
      );
}
