// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airport_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AirportModel _$AirportModelFromJson(Map<String, dynamic> json) => AirportModel(
      json['Id'] as String,
      json['Name'] as String,
      json['Image'] as String,
      json['Location'] as String,
    );

Map<String, dynamic> _$AirportModelToJson(AirportModel instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Name': instance.name,
      'Image': instance.image,
      'Location': instance.location,
    };
