// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketModel _$TicketModelFromJson(Map<String, dynamic> json) => TicketModel()
  ..id = json['id'] as String
  ..name = json['name'] as String
  ..gender = json['gender'] as String
  ..phoneNumber = json['phoneNumber'] as String
  ..emailAddress = json['emailAddress'] as String
  ..luggage = json['luggage'] as int
  ..sheet = json['sheet'] as int
  ..dateBorn = DateTime.parse(json['dateBorn'] as String)
  ..timeBought = DateTime.parse(json['timeBought'] as String)
  ..ticketInformation = TicketInformationModel.fromJson(
      json['ticketInformation'] as Map<String, dynamic>);

Map<String, dynamic> _$TicketModelToJson(TicketModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': instance.gender,
      'phoneNumber': instance.phoneNumber,
      'emailAddress': instance.emailAddress,
      'luggage': instance.luggage,
      'sheet': instance.sheet,
      'dateBorn': instance.dateBorn.toIso8601String(),
      'timeBought': instance.timeBought.toIso8601String(),
      'ticketInformation': instance.ticketInformation.toJson(),
    };
