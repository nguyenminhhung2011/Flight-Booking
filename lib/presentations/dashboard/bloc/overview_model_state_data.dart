import 'package:flight_booking/presentations/payment_management/bloc/model_state_data/ticket_tiers_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'overview_model_state_data.g.dart';
part 'overview_model_state_data.freezed.dart';

@freezed
class OverviewModelStateData with _$OverviewModelStateData {
  factory OverviewModelStateData({
    @Default(0) int totalAirport,
    @Default(0) int totalCustomer,
    @Default(0) int totalFlight,
    @Default(0) int totalPayment,
    @Default([0, 0, 0, 0, 0, 0, 0]) List<double> flightByWeek,
    @Default([0, 0, 0, 0, 0, 0, 0]) List<double> customerByWeek,
    @Default([
      {"y1": 0, "y2": 0},
      {"y1": 0, "y2": 0},
      {"y1": 0, "y2": 0},
      {"y1": 0, "y2": 0},
      {"y1": 0, "y2": 0},
      {"y1": 0, "y2": 0},
      {"y1": 0, "y2": 0},
      {"y1": 0, "y2": 0},
    ])
    List<Map<String, double>> paymentByWeek,
    @Default(TicketTierData()) TicketTierData ticketTierData,
  }) = _OverviewModelStateData;

  factory OverviewModelStateData.fromJson(Map<String, dynamic> json) =>
      _$OverviewModelStateDataFromJson(json);
}
