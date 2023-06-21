// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) => PaymentModel(
      tickets: (json['ticket'] as List<dynamic>)
          .map((e) => TicketModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String,
      createDate: json['created_date'] as int,
      paymentType: $enumDecode(_$PaymentTypeEnumMap, json['payment_type']),
      paymentStatus: $enumDecode(_$PaymentStatusEnumMap, json['status']),
      total: (json['total'] as num).toDouble(),
      customer:
          CustomerModel.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentModelToJson(PaymentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_date': instance.createDate,
      'payment_type': _$PaymentTypeEnumMap[instance.paymentType]!,
      'status': _$PaymentStatusEnumMap[instance.paymentStatus]!,
      'total': instance.total,
      'customer': instance.customer.toJson(),
      'ticket': instance.tickets.map((e) => e.toJson()).toList(),
    };

const _$PaymentTypeEnumMap = {
  PaymentType.card: 'card',
  PaymentType.cash: 'cash',
  PaymentType.all: 'all',
};

const _$PaymentStatusEnumMap = {
  PaymentStatus.succeeded: 'succeeded',
  PaymentStatus.pending: 'pending',
  PaymentStatus.declined: 'declined',
  PaymentStatus.create: 'create',
};
