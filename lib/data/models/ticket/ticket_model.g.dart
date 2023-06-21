// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketModel _$TicketModelFromJson(Map<String, dynamic> json) => TicketModel()
  ..id = json['id'] as String
  ..name = json['name'] as String
  ..gender = json['gender'] as String
  ..phoneNumber = json['phone_number'] as String
  ..emailAddress = json['email_address'] as String
  ..luggage = json['luggage'] as int
  ..seat = json['seat'] as int
  ..type = json['type'] as int
  ..dateBorn = DateTime.parse(json['dateBorn'] as String)
  ..timeBought = DateTime.parse(json['time_bought'] as String)
  ..ticketInformation = TicketInformationModel.fromJson(
      json['ticket_information'] as Map<String, dynamic>)
  ..flight = FlightModel.fromJson(json['flight'] as Map<String, dynamic>)
  ..payment = PaymentModel.fromJson(json['payment'] as Map<String, dynamic>);

Map<String, dynamic> _$TicketModelToJson(TicketModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': instance.gender,
      'phone_number': instance.phoneNumber,
      'email_address': instance.emailAddress,
      'luggage': instance.luggage,
      'seat': instance.seat,
      'type': instance.type,
      'dateBorn': instance.dateBorn.toIso8601String(),
      'time_bought': instance.timeBought.toIso8601String(),
      'ticket_information': instance.ticketInformation.toJson(),
      'flight': instance.flight.toJson(),
      'payment': instance.payment.toJson(),
    };
