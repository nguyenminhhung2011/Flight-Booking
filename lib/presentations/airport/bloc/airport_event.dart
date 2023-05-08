part of 'airport_bloc.dart';

@freezed
class AirportEvent with _$AirportEvent {
  const factory AirportEvent.onStarted() = _Started;
  const factory AirportEvent.fetchAirports() = _FetchAirports;
  const factory AirportEvent.changePageView() = _ChangePageView;
  const factory AirportEvent.openAddEditAirportForm(String id) =
      _OpenAddEditAirportForm;
  const factory AirportEvent.updateAirportsAfterAdd(Airport airport) =
      _UpdateAirportsAfterAdd;
  const factory AirportEvent.updateAirportsAfterEdit(Airport airport) =
      _UpdateAirportsAfterEdit;

  const factory AirportEvent.deleteAirport(String id) = _DeleteAirport;
}
