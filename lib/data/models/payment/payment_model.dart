import 'package:flight_booking/core/components/enum/payment_status_enum.dart';
import 'package:flight_booking/core/components/enum/payment_type.dart';
import 'package:flight_booking/data/models/customer/customer_model.dart';
import 'package:flight_booking/data/models/flight/flight_model.dart';
import 'package:flight_booking/data/models/model_helper.dart';
import 'package:flight_booking/data/models/ticket/ticket_model.dart';
import 'package:flight_booking/domain/entities/payment/payment.dart';
import 'package:flight_booking/domain/entities/payment/payment_detail_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_model.g.dart';

@JsonSerializable(explicitToJson: false)
class PaymentModel {
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

  @JsonKey(name: "flight")
  final FlightModel? flight;

  @JsonKey(name: "customer")
  final CustomerModel? customer;

  @JsonKey(name: "ticket")
  final List<TicketModel> tickets;

  PaymentModel({
    required this.id,
    required this.createDate,
    required this.total,
    required this.paymentStatus,
    required this.flight,
    required this.paymentType,
    required this.customer,
    required this.tickets,
  });

  Map<String, dynamic> toJson() => _$PaymentModelToJson(this);

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);

  Payment get toEntity => Payment(
        id: id,
        customer: customer?.toEntity() ?? ModelHelper.defaultCustomer,
        createdDate: createDate,
        paymentStatus: PaymentStatus.getByName(paymentStatus),
        paymentType: PaymentType.getByName(paymentType),
        total: total,
        ticket: tickets.map((e) => e.toEntity).toList(),
      );

  PaymentDetailItem get toDetailEntity => PaymentDetailItem(
        id: id,
        customer: customer?.toEntity() ?? ModelHelper.defaultCustomer,
        createdDate: createDate,
        paymentStatus: PaymentStatus.getByName(paymentStatus),
        paymentType: PaymentType.getByName(paymentType),
        total: total,
        flight: flight?.toEntity(),
        ticket: tickets.map((e) => e.toEntity).toList(),
      );
}
