part of 'flight_mobile_bloc.dart';

@freezed
class FlightMobileEvent with _$FlightMobileEvent {
  const factory FlightMobileEvent.started() = _Started;

  const factory FlightMobileEvent.fetchFlight({
    required int pageSize,
    required int cursor,
  }) = _FetchFlight;

  const factory FlightMobileEvent.getFlightByDate({
    required int month,
    required int day,
    required int year,
  }) = _GetFlightByDate;
}
