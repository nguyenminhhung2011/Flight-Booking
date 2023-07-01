import 'package:flight_booking/presentations/dashboard/bloc/overview_model_state_data.dart';
import 'package:flight_booking/presentations/payment_management/bloc/model_state_data/ticket_tiers_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_model_state.freezed.dart';
part 'dashboard_model_state.g.dart';

@freezed
class DashboardModelState with _$DashboardModelState {
  const factory DashboardModelState({
    required int viewEnum,
    required bool isDarkTheme,
    required bool secondBodyDis,
    required OverviewModelStateData overviewData,
  }) = _DashboardModelState;

  factory DashboardModelState.fromJson(Map<String, dynamic> json) =>
      _$DashboardModelStateFromJson(json);
}
