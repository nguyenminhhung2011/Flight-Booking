// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_management_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentManagementPageModel _$PaymentManagementPageModelFromJson(
        Map<String, dynamic> json) =>
    PaymentManagementPageModel(
      payments: (json['payments'] as List<dynamic>)
          .map((e) => PaymentLight.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalData: TotalStatisticalDataModel.fromJson(
          json['totalData'] as Map<String, dynamic>),
      revenue: RevenueModel.fromJson(json['revenue'] as Map<String, dynamic>),
      statusData: PaymentStatusStateDataModel.fromJson(
          json['statusData'] as Map<String, dynamic>),
      ticketTierData: TicketTierDataModel.fromJson(
          json['ticketTierData'] as Map<String, dynamic>),
      totalPayment: json['totalPayment'] as int,
    );

Map<String, dynamic> _$PaymentManagementPageModelToJson(
        PaymentManagementPageModel instance) =>
    <String, dynamic>{
      'payments': instance.payments,
      'totalData': instance.totalData,
      'revenue': instance.revenue,
      'statusData': instance.statusData,
      'ticketTierData': instance.ticketTierData,
      'totalPayment': instance.totalPayment,
    };

TotalStatisticalDataModel _$TotalStatisticalDataModelFromJson(
        Map<String, dynamic> json) =>
    TotalStatisticalDataModel(
      totalPaymentToday: json['totalPaymentToday'] as int,
      totalCustomerToday: json['totalCustomerToday'] as int,
      totalFlightToday: json['totalFlightToday'] as int,
      totalPassengerToday: json['totalPassengerToday'] as int,
    );

Map<String, dynamic> _$TotalStatisticalDataModelToJson(
        TotalStatisticalDataModel instance) =>
    <String, dynamic>{
      'totalPaymentToday': instance.totalPaymentToday,
      'totalCustomerToday': instance.totalCustomerToday,
      'totalFlightToday': instance.totalFlightToday,
      'totalPassengerToday': instance.totalPassengerToday,
    };

RevenueModel _$RevenueModelFromJson(Map<String, dynamic> json) => RevenueModel(
      amount: (json['amount'] as num).toDouble(),
      cardPercent: (json['cardPercent'] as num).toDouble(),
      cashPercent: (json['cashPercent'] as num).toDouble(),
      otherPercent: (json['otherPercent'] as num).toDouble(),
    );

Map<String, dynamic> _$RevenueModelToJson(RevenueModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'cardPercent': instance.cardPercent,
      'cashPercent': instance.cashPercent,
      'otherPercent': instance.otherPercent,
    };

PaymentStatusStateDataModel _$PaymentStatusStateDataModelFromJson(
        Map<String, dynamic> json) =>
    PaymentStatusStateDataModel(
      create: json['create'] as int,
      declined: json['declined'] as int,
      pending: json['pending'] as int,
      succeeded: json['succeeded'] as int,
    );

Map<String, dynamic> _$PaymentStatusStateDataModelToJson(
        PaymentStatusStateDataModel instance) =>
    <String, dynamic>{
      'create': instance.create,
      'declined': instance.declined,
      'pending': instance.pending,
      'succeeded': instance.succeeded,
    };

TicketTierDataModel _$TicketTierDataModelFromJson(Map<String, dynamic> json) =>
    TicketTierDataModel(
      economy: json['economy'] as int,
      premiumEconomy: json['premiumEconomy'] as int,
      business: json['business'] as int,
      first: json['first'] as int,
    );

Map<String, dynamic> _$TicketTierDataModelToJson(
        TicketTierDataModel instance) =>
    <String, dynamic>{
      'economy': instance.economy,
      'premiumEconomy': instance.premiumEconomy,
      'business': instance.business,
      'first': instance.first,
    };
