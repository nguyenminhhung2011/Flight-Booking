// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ticket _$$_TicketFromJson(Map<String, dynamic> json) => _$_Ticket(
      id: json['id'] as int,
      name: json['name'] as String,
      gender: json['gender'] as String,
      phoneNumber: json['phoneNumber'] as String,
      emailAddress: json['emailAddress'] as String,
      seat: json['seat'] as int,
      type: json['type'] as int,
      luggage: (json['luggage'] as num).toDouble(),
      birthday: json['birthday'] as int,
      timeBought: json['timeBought'] as int,
      price: (json['price'] as num).toDouble(),
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
      'birthday': instance.birthday,
      'timeBought': instance.timeBought,
      'price': instance.price,
    };
