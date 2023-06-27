// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) => PaymentModel(
      id: json['id'] as int,
      createDate: json['createdDate'] as int,
      total: (json['total'] as num).toDouble(),
      paymentStatus: json['paymentStatus'] as String,
      flight: json['flight'] == null
          ? null
          : FlightModel.fromJson(json['flight'] as Map<String, dynamic>),
      paymentType: json['paymentType'] as String,
      customer:
          CustomerModel.fromJson(json['customer'] as Map<String, dynamic>),
      tickets: (json['ticket'] as List<dynamic>)
          .map((e) => TicketModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PaymentModelToJson(PaymentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdDate': instance.createDate,
      'paymentType': instance.paymentType,
      'paymentStatus': instance.paymentStatus,
      'total': instance.total,
      'flight': instance.flight,
      'customer': instance.customer,
      'ticket': instance.tickets,
    };
