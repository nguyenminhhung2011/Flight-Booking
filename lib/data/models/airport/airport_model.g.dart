// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airport_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AirportModel _$AirportModelFromJson(Map<String, dynamic> json) => AirportModel(
      json['id'] as int,
      json['airportName'] as String,
      json['imageUrl'] as String,
      json['location'] as String,
      json['description'] as String?,
      json['openTime'] as int?,
      json['closeTime'] as int?,
      json['code'] as String?,
    );

Map<String, dynamic> _$AirportModelToJson(AirportModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'airportName': instance.name,
      'imageUrl': instance.image,
      'location': instance.location,
      'description': instance.description,
      'openTime': instance.openTime,
      'closeTime': instance.closeTime,
      'code': instance.code,
    };
