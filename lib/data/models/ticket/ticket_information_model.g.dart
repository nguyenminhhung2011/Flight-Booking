// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_information_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketInformationModel _$TicketInformationModelFromJson(
        Map<String, dynamic> json) =>
    TicketInformationModel()
      ..id = json['id'] as int
      ..flight = FlightModel.fromJson(json['flight'] as Map<String, dynamic>)
      ..quantity = json['quantity'] as int
      ..price = (json['price'] as num).toDouble()
      ..ticketType = json['ticketType'] as int;

Map<String, dynamic> _$TicketInformationModelToJson(
        TicketInformationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'flight': instance.flight.toJson(),
      'quantity': instance.quantity,
      'price': instance.price,
      'ticketType': instance.ticketType,
    };
