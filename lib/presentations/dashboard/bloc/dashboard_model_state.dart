import 'package:flight_booking/core/components/enum/view_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_model_state.freezed.dart';

@freezed
class DashboardModelState with _$DashboardModelState {
  const factory DashboardModelState({
    required int viewEnum,
    required bool isDarkTheme,
  }) = _DashboardModelState;
}
