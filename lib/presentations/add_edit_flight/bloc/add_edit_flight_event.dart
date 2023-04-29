part of 'add_edit_flight_bloc.dart';

@freezed
class AddEditFlightEvent with _$AddEditFlightEvent {
  const factory AddEditFlightEvent.onStarted() = _Started;
}
