// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketModel _$TicketModelFromJson(Map<String, dynamic> json) => TicketModel()
  ..id = json['Id'] as String
  ..idFlight = json['IdFlight'] as String
  ..idCustomer = json['IdCustomer'] as String
  ..timeBought = json['TimeBought'] as int
  ..price = (json['Price'] as num).toDouble();

Map<String, dynamic> _$TicketModelToJson(TicketModel instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'IdFlight': instance.idFlight,
      'IdCustomer': instance.idCustomer,
      'TimeBought': instance.timeBought,
      'Price': instance.price,
    };
