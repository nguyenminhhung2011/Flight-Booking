// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_information_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketInformationModel _$TicketInformationModelFromJson(
        Map<String, dynamic> json) =>
    TicketInformationModel()
      ..id =
          TicketInformationModelId.fromJson(json['id'] as Map<String, dynamic>)
      ..quantity = json['quantity'] as int
      ..price = (json['price'] as num).toDouble()
      ..seatPosition = json['seatPosition'] as int
      ..seatHeader = json['seatHeader'] as String;

Map<String, dynamic> _$TicketInformationModelToJson(
        TicketInformationModel instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'quantity': instance.quantity,
      'price': instance.price,
      'seatPosition': instance.seatPosition,
      'seatHeader': instance.seatHeader,
    };
