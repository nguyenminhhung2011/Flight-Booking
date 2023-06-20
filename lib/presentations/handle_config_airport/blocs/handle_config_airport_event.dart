part of 'handle_config_airport_bloc.dart';

@freezed
class HandleConfigAirportEvent with _$HandleConfigAirportEvent {
  const factory HandleConfigAirportEvent.onStarted() = _Started;
  const factory HandleConfigAirportEvent.getAirportById() = _GetAirportById;
  const factory HandleConfigAirportEvent.getAllAirport() = _GetAllAirport;
  const factory HandleConfigAirportEvent.getFlightConfigs() = _GetFlightConfigs;
  const factory HandleConfigAirportEvent.updateFlightConfigs() =
      _UpdateFlightConfigs;
  const factory HandleConfigAirportEvent.selectedAirport(Airport? airport) =
      _SelectedAirport;
  const factory HandleConfigAirportEvent.selectedFlight(Flight? flight) =
      _SelectedFlight;
}
