// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview_model_state_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OverviewModelStateData _$$_OverviewModelStateDataFromJson(
        Map<String, dynamic> json) =>
    _$_OverviewModelStateData(
      totalAirport: json['totalAirport'] as int? ?? 0,
      totalCustomer: json['totalCustomer'] as int? ?? 0,
      totalFlight: json['totalFlight'] as int? ?? 0,
      totalPayment: json['totalPayment'] as int? ?? 0,
      flightByWeek: (json['flightByWeek'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [0, 0, 0, 0, 0, 0, 0],
      customerByWeek: (json['customerByWeek'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [0, 0, 0, 0, 0, 0, 0],
      paymentByWeek: (json['paymentByWeek'] as List<dynamic>?)
              ?.map((e) => (e as Map<String, dynamic>).map(
                    (k, e) => MapEntry(k, (e as num).toDouble()),
                  ))
              .toList() ??
          const [
            {"y1": 0, "y2": 0},
            {"y1": 0, "y2": 0},
            {"y1": 0, "y2": 0},
            {"y1": 0, "y2": 0},
            {"y1": 0, "y2": 0},
            {"y1": 0, "y2": 0},
            {"y1": 0, "y2": 0},
            {"y1": 0, "y2": 0}
          ],
      ticketTierData: json['ticketTierData'] == null
          ? const TicketTierData()
          : TicketTierData.fromJson(
              json['ticketTierData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OverviewModelStateDataToJson(
        _$_OverviewModelStateData instance) =>
    <String, dynamic>{
      'totalAirport': instance.totalAirport,
      'totalCustomer': instance.totalCustomer,
      'totalFlight': instance.totalFlight,
      'totalPayment': instance.totalPayment,
      'flightByWeek': instance.flightByWeek,
      'customerByWeek': instance.customerByWeek,
      'paymentByWeek': instance.paymentByWeek,
      'ticketTierData': instance.ticketTierData,
    };
