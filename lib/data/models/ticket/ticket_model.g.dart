// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketModel _$TicketModelFromJson(Map<String, dynamic> json) => TicketModel(
      id: json['id'] as int,
      name: json['name'] as String,
      gender: json['gender'] as String,
      phoneNumber: json['phone'] as String,
      emailAddress: json['emailAddress'] as String,
      luggage: (json['luggage'] as num).toDouble(),
      seat: json['seat'] as int,
      type: json['type'] as int,
      dateBorn: json['birthday'] as int,
      timeBought: json['timeBought'] as int,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$TicketModelToJson(TicketModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': instance.gender,
      'phone': instance.phoneNumber,
      'emailAddress': instance.emailAddress,
      'luggage': instance.luggage,
      'seat': instance.seat,
      'price': instance.price,
      'type': instance.type,
      'birthday': instance.dateBorn,
      'timeBought': instance.timeBought,
    };
