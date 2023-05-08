part of 'airport_bloc.dart';

@freezed
class AirportEvent with _$AirportEvent {
  const factory AirportEvent.onStarted() = _Started;
  const factory AirportEvent.fetchAirports() = _FetchAirports;
  const factory AirportEvent.changePageView() = _ChangePageView;
  const factory AirportEvent.openAddEditAirportForm(String id) =
      _OpenAddEditAirportForm;
}
