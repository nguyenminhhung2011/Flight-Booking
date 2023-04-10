part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const DashboardState._();
  const factory DashboardState.initial({
    required DashboardModelState data,
  }) = _Initial;

  const factory DashboardState.error({
    required DashboardModelState data,
    required String message,
  }) = _error;
}
