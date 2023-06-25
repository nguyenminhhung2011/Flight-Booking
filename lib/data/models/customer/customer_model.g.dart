// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) =>
    CustomerModel(
      id: json['id'] as int,
      name: json['name'] as String,
      identifyNum: json['identifyNum'] as String,
      phoneNumber: json['phone'] as String,
      email: json['email'] as String,
      gender: json['gender'] as String,
      birthday: json['birthday'] as int,
      creditCard:
          CreditCardModel.fromJson(json['creditCard'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerModelToJson(CustomerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'identifyNum': instance.identifyNum,
      'phone': instance.phoneNumber,
      'email': instance.email,
      'gender': instance.gender,
      'birthday': instance.birthday,
      'creditCard': instance.creditCard,
    };
