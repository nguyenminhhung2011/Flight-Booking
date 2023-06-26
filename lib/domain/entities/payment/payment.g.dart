// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Payment _$$_PaymentFromJson(Map<String, dynamic> json) => _$_Payment(
      id: json['id'] as int? ?? -1,
      createdDate: json['createdDate'] as int? ?? 0,
      paymentType:
          $enumDecodeNullable(_$PaymentTypeEnumMap, json['paymentType']) ??
              PaymentType.cash,
      paymentStatus:
          $enumDecodeNullable(_$PaymentStatusEnumMap, json['paymentStatus']) ??
              PaymentStatus.create,
      total: (json['total'] as num?)?.toDouble() ?? 0,
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      ticket: (json['ticket'] as List<dynamic>?)
              ?.map((e) => Ticket.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PaymentToJson(_$_Payment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdDate': instance.createdDate,
      'paymentType': _$PaymentTypeEnumMap[instance.paymentType]!,
      'paymentStatus': _$PaymentStatusEnumMap[instance.paymentStatus]!,
      'total': instance.total,
      'customer': instance.customer,
      'ticket': instance.ticket,
    };

const _$PaymentTypeEnumMap = {
  PaymentType.card: 'CARD',
  PaymentType.cash: 'CASH',
  PaymentType.unknown: 'UNKNOWN',
};

const _$PaymentStatusEnumMap = {
  PaymentStatus.succeeded: 'SUCCEEDED',
  PaymentStatus.pending: 'PENDING',
  PaymentStatus.declined: 'DECLINED',
  PaymentStatus.create: 'CREATE',
};
