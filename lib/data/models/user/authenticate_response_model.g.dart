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
      accessToken: json['accessToken'] as String? ?? "",
      refreshToken: json['refreshToken'] as String? ?? "",
      expiredTime: json['expiredTime'] as int? ?? 0,
    );

Map<String, dynamic> _$$_AuthenticateResponseToJson(
        _$_AuthenticateResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiredTime': instance.expiredTime,
    };
