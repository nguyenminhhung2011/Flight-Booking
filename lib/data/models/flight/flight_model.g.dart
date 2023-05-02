// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flight_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlightModel _$FlightModelFromJson(Map<String, dynamic> json) => FlightModel(
      json['Id'] as String,
      json['IdStartAirport'] as String,
      json['IdComeAirport'] as String,
      json['TimeStart'] as int,
      json['TimeEnd'] as int,
      json['NoCustomer'] as int,
    );

Map<String, dynamic> _$FlightModelToJson(FlightModel instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'IdStartAirport': instance.idStartAirport,
      'IdComeAirport': instance.idComeAirport,
      'TimeStart': instance.timeStart,
      'TimeEnd': instance.timeEnd,
      'NoCustomer': instance.noCustomer,
    };
