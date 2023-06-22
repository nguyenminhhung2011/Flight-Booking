// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreditCardModel _$CreditCardModelFromJson(Map<String, dynamic> json) =>
    CreditCardModel()
      ..id = json['id'] as int
      ..creditNum = json['credit_num'] as String
      ..expiredDate = json['expired_date'] as int
      ..cvc = json['cvc'] as String
      ..nameCard = json['name_card'] as String;

Map<String, dynamic> _$CreditCardModelToJson(CreditCardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'credit_num': instance.creditNum,
      'expired_date': instance.expiredDate,
      'cvc': instance.cvc,
      'name_card': instance.nameCard,
    };
