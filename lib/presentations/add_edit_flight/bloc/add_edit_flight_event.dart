part of 'add_edit_flight_bloc.dart';

@freezed
class AddEditFlightEvent with _$AddEditFlightEvent {
  const factory AddEditFlightEvent.onStarted() = _Started;
  const factory AddEditFlightEvent.dispose() = _Dispose;
  const factory AddEditFlightEvent.editFlight({required String id}) =
      _EditFlight;
  const factory AddEditFlightEvent.addNewFlight() = _AddNewFlight;
  const factory AddEditFlightEvent.addTicInformation({
    required Flight flight,
  }) = _AddTicInformation;
  const factory AddEditFlightEvent.updateDateField({
    required DateTime dateTime,
    required DateTimeEnum enumTime,
  }) = _UpdateDateField;
  const factory AddEditFlightEvent.fetchAllAirports() = _FetchAllAirports;
  const factory AddEditFlightEvent.fetchAllAirlines() = _FetchAllAirlines;
  const factory AddEditFlightEvent.selectedAirport({
    required Airport airport,
    required bool isStartAirport,
  }) = _SelectedAirport;
  const factory AddEditFlightEvent.buttonTap() = _ButtonTap;
  const factory AddEditFlightEvent.selectedAirline({required Airline airline}) =
      _SelectedAirline;
  const factory AddEditFlightEvent.getFlightById({required String id}) =
      _GetFlightById;
  const factory AddEditFlightEvent.updateTicInformation({
    required String newSeatHeader,
    required int quantity,
    required double price,
    int? newSeatPosition,
  }) = _UpdateTicInformation;

  const factory AddEditFlightEvent.changeTicInformationView({
    required int newIndex,
  }) = _ChangeTicInformationView;
}
