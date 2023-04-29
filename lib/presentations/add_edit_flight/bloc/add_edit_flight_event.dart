part of 'add_edit_flight_bloc.dart';

@freezed
class AddEditFlightEvent with _$AddEditFlightEvent {
  const factory AddEditFlightEvent.onStarted() = _Started;
  const factory AddEditFlightEvent.editFlight({required String id}) =
      _EditFlight;
  const factory AddEditFlightEvent.addNewFlight() = _AddNewFlight;
  const factory AddEditFlightEvent.updateDateField({
    required DateTime dateTime,
    required DateTimeEnum enumTime,
  }) = _UpdateDateField;
}
