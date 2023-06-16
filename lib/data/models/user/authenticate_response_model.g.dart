// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticate_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthenticateResponse _$$_AuthenticateResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AuthenticateResponse(
      message: json['message'] as String? ?? "",
      isSuccess: json['isSuccess'] as bool? ?? false,
      token: json['token'] as String? ?? "",
    );

Map<String, dynamic> _$$_AuthenticateResponseToJson(
        _$_AuthenticateResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'token': instance.token,
    };
