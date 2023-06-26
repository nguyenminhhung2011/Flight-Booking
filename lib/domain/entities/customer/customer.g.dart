// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Customer _$$_CustomerFromJson(Map<String, dynamic> json) => _$_Customer(
      id: json['id'] as int,
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      identifyNum: json['identifyNum'] as String,
      gender: json['gender'] as String,
      birthday: const DateTimeConverter().fromJson(json['birthday'] as int),
      creditCard: json['creditCard'] == null
          ? const CreditCard()
          : CreditCard.fromJson(json['creditCard'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CustomerToJson(_$_Customer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'identifyNum': instance.identifyNum,
      'gender': instance.gender,
      'birthday': const DateTimeConverter().toJson(instance.birthday),
      'creditCard': instance.creditCard,
    };
