part of 'airport_mobile_bloc.dart';

@freezed
class AirportMobileEvent with _$AirportMobileEvent {
  const factory AirportMobileEvent.started() = _Started;

  const factory AirportMobileEvent.fetchAirport({
    required int pageSize,
  }) = _FetchAirport;
}
