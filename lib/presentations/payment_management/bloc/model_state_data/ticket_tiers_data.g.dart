// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_tiers_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TicketTierData _$$_TicketTierDataFromJson(Map<String, dynamic> json) =>
    _$_TicketTierData(
      economy: json['economy'] as int? ?? 0,
      premiumEconomy: json['premiumEconomy'] as int? ?? 0,
      business: json['business'] as int? ?? 0,
      first: json['first'] as int? ?? 0,
    );

Map<String, dynamic> _$$_TicketTierDataToJson(_$_TicketTierData instance) =>
    <String, dynamic>{
      'economy': instance.economy,
      'premiumEconomy': instance.premiumEconomy,
      'business': instance.business,
      'first': instance.first,
    };
