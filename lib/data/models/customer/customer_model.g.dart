// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) =>
    CustomerModel(
      id: json['id'] as String,
      name: json['name'] as String,
      identityNum: json['identityNum'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      gender: json['gender'] as String,
      birthday: json['birthday'] as int,
    );

Map<String, dynamic> _$CustomerModelToJson(CustomerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'identityNum': instance.identityNum,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'gender': instance.gender,
      'birthday': instance.birthday,
    };
