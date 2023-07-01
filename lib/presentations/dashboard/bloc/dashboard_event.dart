part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.started() = _Started;
  const factory DashboardEvent.changeTheme(bool theme) = _ChangeTheme;
  const factory DashboardEvent.changeView(int view, bool secondBodyDis) =
      _ChangeView;
  const factory DashboardEvent.fetchOverviewData({
    required DateTime from,
    required DateTime to,
  }) = _FetchOverviewData;
}
