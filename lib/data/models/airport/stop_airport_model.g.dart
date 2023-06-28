// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stop_airport_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StopAirportModel _$StopAirportModelFromJson(Map<String, dynamic> json) =>
    StopAirportModel(
      airport: AirportModel.fromJson(json['airport'] as Map<String, dynamic>),
      description: json['description'] as String,
      stopTime: json['stopTime'] as int,
    );

Map<String, dynamic> _$StopAirportModelToJson(StopAirportModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'airport': instance.airport.toJson(),
      'stopTime': instance.stopTime,
    };
