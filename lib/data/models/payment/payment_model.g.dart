// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) => PaymentModel(
      id: json['id'] as String,
      customerId: json['customerId'] as String,
      flightId: json['flightId'] as String,
      paymentMethod: json['paymentMethod'] as String,
      amount: (json['amount'] as num).toDouble(),
      creDate: json['creDate'] as int,
      status: json['status'] as String,
    );

Map<String, dynamic> _$PaymentModelToJson(PaymentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customerId': instance.customerId,
      'flightId': instance.flightId,
      'paymentMethod': instance.paymentMethod,
      'amount': instance.amount,
      'creDate': instance.creDate,
      'status': instance.status,
    };
