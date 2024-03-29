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
      (json['stopAirports'] as List<dynamic>?)
          ?.map((e) => StopAirportModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FlightModelToJson(FlightModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'arrivalAirport': instance.arrivalAirport,
      'departureAirport': instance.departureAirport,
      'departureTime': instance.timeStart.toIso8601String(),
      'arrivalTime': instance.timeEnd.toIso8601String(),
      'airline': instance.airline,
      'stopAirports': instance.stopAirports,
    };
