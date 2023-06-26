// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreditCard _$$_CreditCardFromJson(Map<String, dynamic> json) =>
    _$_CreditCard(
      id: json['id'] as int? ?? 0,
      creditNum: json['creditNum'] as String? ?? "",
      expiredDate: json['expiredDate'] as int? ?? 0,
      cvc: json['cvc'] as String? ?? "",
      nameCard: json['nameCard'] as String? ?? "",
    );

Map<String, dynamic> _$$_CreditCardToJson(_$_CreditCard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creditNum': instance.creditNum,
      'expiredDate': instance.expiredDate,
      'cvc': instance.cvc,
      'nameCard': instance.nameCard,
    };
