// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as int,
      birthday: json['birthday'] as int,
      username: json['username'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      identityCard: json['identityCard'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      address: json['address'] as String,
      gender: json['gender'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'name': instance.name,
      'identityCard': instance.identityCard,
      'phone': instance.phone,
      'email': instance.email,
      'address': instance.address,
      'gender': instance.gender,
      'role': instance.role,
      'birthday': instance.birthday,
    };
