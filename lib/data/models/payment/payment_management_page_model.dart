import 'package:flight_booking/data/models/payment/payment_light.dart';
import 'package:flight_booking/data/models/payment/payment_model.dart';
import 'package:flight_booking/presentations/payment_management/bloc/model_state_data/payment_model_state_data.dart';
import 'package:flight_booking/presentations/payment_management/bloc/model_state_data/payment_status_state_data.dart';
import 'package:flight_booking/presentations/payment_management/bloc/model_state_data/revenue.dart';
import 'package:flight_booking/presentations/payment_management/bloc/model_state_data/ticket_tiers_data.dart';
import 'package:flight_booking/presentations/payment_management/bloc/model_state_data/total_statistical_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_management_page_model.g.dart';

@JsonSerializable(explicitToJson: false)
class PaymentManagementPageModel {
  final List<PaymentLight> payments;
  final TotalStatisticalDataModel totalData;
  final RevenueModel revenue;
  final PaymentStatusStateDataModel statusData;
  final TicketTierDataModel ticketTierData;
  final int totalPayment;

  PaymentManagementPageModel({
    required this.payments,
    required this.totalData,
    required this.revenue,
    required this.statusData,
    required this.ticketTierData,
    required this.totalPayment,
  });

  factory PaymentManagementPageModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentManagementPageModelFromJson(json);

  PaymentModelStateData get toEntity => PaymentModelStateData(
        payments: payments.map((e) => e.toEntity).toList(),
        totalData: totalData.toEntity,
        revenue: revenue.toEntity,
        total: totalPayment,
        statusData: statusData.toEntity,
        ticketTierData: ticketTierData.toEntity,
      );
}

@JsonSerializable(explicitToJson: false)
class TotalStatisticalDataModel {
  final int totalPaymentToday;
  final int totalCustomerToday;
  final int totalFlightToday;
  final int totalPassengerToday;

  TotalStatisticalDataModel({
    required this.totalPaymentToday,
    required this.totalCustomerToday,
    required this.totalFlightToday,
    required this.totalPassengerToday,
  });
  factory TotalStatisticalDataModel.fromJson(Map<String, dynamic> json) =>
      _$TotalStatisticalDataModelFromJson(json);

  TotalStatisticalData get toEntity => TotalStatisticalData(
        totalCustomerToday: totalCustomerToday,
        totalFlightToday: totalFlightToday,
        totalPassengerToday: totalPassengerToday,
        totalPaymentToday: totalPaymentToday,
      );
}

@JsonSerializable(explicitToJson: false)
class RevenueModel {
  final double amount;
  final double cardPercent;
  final double cashPercent;
  final double otherPercent;

  RevenueModel({
    required this.amount,
    required this.cardPercent,
    required this.cashPercent,
    required this.otherPercent,
  });
  factory RevenueModel.fromJson(Map<String, dynamic> json) =>
      _$RevenueModelFromJson(json);

  Revenue get toEntity => Revenue(
        amount: amount,
        cardPercent: cardPercent,
        cashPercent: cashPercent,
        otherPercent: otherPercent,
      );
}

@JsonSerializable(explicitToJson: false)
class PaymentStatusStateDataModel {
  final int create;
  final int declined;
  final int pending;
  final int succeeded;

  PaymentStatusStateDataModel({
    required this.create,
    required this.declined,
    required this.pending,
    required this.succeeded,
  });

  factory PaymentStatusStateDataModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentStatusStateDataModelFromJson(json);

  PaymentStatusStateData get toEntity => PaymentStatusStateData(
        create: create,
        declined: declined,
        pending: pending,
        succeeded: succeeded,
      );
}

@JsonSerializable(explicitToJson: false)
class TicketTierDataModel {
  final int economy;
  final int premiumEconomy;
  final int business;
  final int first;

  TicketTierDataModel({
    required this.economy,
    required this.premiumEconomy,
    required this.business,
    required this.first,
  });

  factory TicketTierDataModel.fromJson(Map<String, dynamic> json) =>
      _$TicketTierDataModelFromJson(json);

  TicketTierData get toEntity => TicketTierData(
        economy: economy,
        premiumEconomy: premiumEconomy,
        business: business,
        first: first,
      );
}
