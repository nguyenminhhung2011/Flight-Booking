// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_light.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentLight _$PaymentLightFromJson(Map<String, dynamic> json) => PaymentLight(
      id: json['id'] as int,
      createDate: json['createdDate'] as int,
      total: (json['total'] as num).toDouble(),
      paymentStatus: json['paymentStatus'] as String,
      paymentType: json['paymentType'] as String,
      customer:
          CustomerModel.fromJson(json['customers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentLightToJson(PaymentLight instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdDate': instance.createDate,
      'paymentType': instance.paymentType,
      'paymentStatus': instance.paymentStatus,
      'total': instance.total,
      'customers': instance.customer,
    };
