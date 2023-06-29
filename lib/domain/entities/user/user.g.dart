// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      birthday: json['birthday'] as int,
      email: json['email'] as String,
      identityCard: json['identityCard'] as String,
      address: json['address'] as String,
      gender: json['gender'] as String,
      phone: json['phone'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'name': instance.name,
      'birthday': instance.birthday,
      'email': instance.email,
      'identityCard': instance.identityCard,
      'address': instance.address,
      'gender': instance.gender,
      'phone': instance.phone,
      'role': instance.role,
    };
