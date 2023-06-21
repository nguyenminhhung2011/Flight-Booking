// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_information_model_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketInformationModelId _$TicketInformationModelIdFromJson(
        Map<String, dynamic> json) =>
    TicketInformationModelId()
      ..ticketType = json['ticketType'] as int
      ..flight = FlightModel.fromJson(json['flight'] as Map<String, dynamic>);

Map<String, dynamic> _$TicketInformationModelIdToJson(
        TicketInformationModelId instance) =>
    <String, dynamic>{
      'ticketType': instance.ticketType,
      'flight': instance.flight.toJson(),
    };
