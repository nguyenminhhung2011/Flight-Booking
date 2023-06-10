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
    );

Map<String, dynamic> _$AirportModelToJson(AirportModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'airportName': instance.name,
      'imageUrl': instance.image,
      'location': instance.location,
    };
