// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      birthday: json['birthday'] as int,
      email: json['email'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'name': instance.name,
      'birthday': instance.birthday,
      'email': instance.email,
      'phone': instance.phone,
    };
