part of 'airport_detail_mobile_bloc.dart';

@freezed
class AirportDetailMobileEvent with _$AirportDetailMobileEvent {
  const factory AirportDetailMobileEvent.onStarted() = _Started;
  const factory AirportDetailMobileEvent.changeTabView({required int index}) =
      _ChangeTabView;
  const factory AirportDetailMobileEvent.loadingComplete() = _LoadingComplete;
}
