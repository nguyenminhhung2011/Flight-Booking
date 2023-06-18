part of 'list_flight_bloc.dart';

@freezed
class ListFlightEvent with _$ListFlightEvent {
  const factory ListFlightEvent.started() = _Started;

  const factory ListFlightEvent.selectFlight(String flightID) = _SelectFlight;

  const factory ListFlightEvent.getFlights() = _GetFlights;

  const factory ListFlightEvent.openAddEditFlightForm(String id) =
      _OpenAddEditFlightForm;

  const factory ListFlightEvent.updateFlightsAfterEdit(
    Flight flight,
  ) = _UpdateFlightsAfterEdit;
  const factory ListFlightEvent.updateFlightsAfterAdd(
    Flight flight,
  ) = _UpdateFlightsAfterAdd;

  const factory ListFlightEvent.getFlightByPage(int cursor) = _GetFlightByPage;

  const factory ListFlightEvent.deleteFlight(int id) = _DeleteFlight;

  const factory ListFlightEvent.filterFlight({
    required String airline,
    required String locationArrival,
    required String locationDeparture,
  }) = _FilterFlight;

  const factory ListFlightEvent.fetchPlaces() = _FetchPlaces;
  const factory ListFlightEvent.fetchAirline() = _FetchAirlines;
  const factory ListFlightEvent.selectedAirlines({required String airline}) =
      _SelectedAirline;

  const factory ListFlightEvent.selectedPlaceAirport({
    required String place,
    required bool isDeparture,
  }) = _SelectedPlaceAirport;

  const factory ListFlightEvent.refreshItem() = _RefreshItem;
}
