// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Customer _$$_CustomerFromJson(Map<String, dynamic> json) => _$_Customer(
      id: json['id'] as int,
      name: json['name'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      identifyNum: json['identifyNum'] as String,
      gender: json['gender'] as String,
      birthday: json['birthday'] as int,
      creditCard: json['creditCard'] == null
          ? const CreditCard()
          : CreditCard.fromJson(json['creditCard'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CustomerToJson(_$_Customer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'identifyNum': instance.identifyNum,
      'gender': instance.gender,
      'birthday': instance.birthday,
      'creditCard': instance.creditCard,
    };
