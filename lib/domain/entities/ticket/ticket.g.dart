// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ticket _$$_TicketFromJson(Map<String, dynamic> json) => _$_Ticket(
      id: json['id'] as String,
      name: json['name'] as String,
      gender: json['gender'] as String,
      phoneNumber: json['phoneNumber'] as String,
      emailAddress: json['emailAddress'] as String,
      seat: json['seat'] as int,
      type: json['type'] as int,
      luggage: (json['luggage'] as num).toDouble(),
      dateBorn: DateTime.parse(json['dateBorn'] as String),
      timeBought: DateTime.parse(json['timeBought'] as String),
    );

Map<String, dynamic> _$$_TicketToJson(_$_Ticket instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': instance.gender,
      'phoneNumber': instance.phoneNumber,
      'emailAddress': instance.emailAddress,
      'seat': instance.seat,
      'type': instance.type,
      'luggage': instance.luggage,
      'dateBorn': instance.dateBorn.toIso8601String(),
      'timeBought': instance.timeBought.toIso8601String(),
    };
