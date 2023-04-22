part of 'flight_detail_bloc.dart';

@freezed
class FlightDetailEvent with _$FlightDetailEvent {
  const factory FlightDetailEvent.started() = _Started;
}
