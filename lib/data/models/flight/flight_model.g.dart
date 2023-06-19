// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flight_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlightModel _$FlightModelFromJson(Map<String, dynamic> json) => FlightModel(
      json['id'] as int,
      json['arrivalAirport'] == null
          ? null
          : AirportModel.fromJson(
              json['arrivalAirport'] as Map<String, dynamic>),
      json['departureAirport'] == null
          ? null
          : AirportModel.fromJson(
              json['departureAirport'] as Map<String, dynamic>),
      DateTime.parse(json['departureTime'] as String),
      DateTime.parse(json['arrivalTime'] as String),
      AirlineModel.fromJson(json['airline'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FlightModelToJson(FlightModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'arrivalAirport': instance.arrivalAirport?.toJson(),
      'departureAirport': instance.departureAirport?.toJson(),
      'departureTime': instance.timeStart.toIso8601String(),
      'arrivalTime': instance.timeEnd.toIso8601String(),
      'airline': instance.airline.toJson(),
    };
