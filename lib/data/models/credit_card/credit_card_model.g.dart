// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreditCardModel _$CreditCardModelFromJson(Map<String, dynamic> json) =>
    CreditCardModel(
      id: json['id'] as int,
      creditNum: json['creditNum'] as String,
      expiredDate: json['expiredDate'] as int,
      cvc: json['cvc'] as String,
      nameCard: json['nameCard'] as String,
    );

Map<String, dynamic> _$CreditCardModelToJson(CreditCardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creditNum': instance.creditNum,
      'expiredDate': instance.expiredDate,
      'cvc': instance.cvc,
      'nameCard': instance.nameCard,
    };
