part of 'list_flight_bloc.dart';

@freezed
class ListFlightEvent with _$ListFlightEvent {
  const factory ListFlightEvent.started() = _Started;

  const factory ListFlightEvent.selectFlight(String flightID) = _SelectFlight;

  const factory ListFlightEvent.getFlights() = _GetFlights;

  const factory ListFlightEvent.openAddEditFlightForm(String id) =
      _OpenAddEditFlightForm;
}
