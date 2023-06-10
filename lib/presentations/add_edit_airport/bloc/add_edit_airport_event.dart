part of 'add_edit_airport_bloc.dart';

@freezed
class AddEditAirportEvent with _$AddEditAirportEvent {
  const factory AddEditAirportEvent.onStarted() = _Started;
  const factory AddEditAirportEvent.dispose() = _Dispose;
  const factory AddEditAirportEvent.editAirport({required String id}) =
      _EditAirport;
  const factory AddEditAirportEvent.addNewAirport() = _AddNewAirport;
  const factory AddEditAirportEvent.pickImage() = _PickImage;
  const factory AddEditAirportEvent.removeImage(int index) = _RemoveImage;
  const factory AddEditAirportEvent.fetchPlace() = _FetchPlace;
  const factory AddEditAirportEvent.fetchDistricts(
      {required int code, required int provincesIndex}) = _FetchDistricts;
  const factory AddEditAirportEvent.fetchWards(
      {required int code, required int districtsIndex}) = _FetchWards;
  const factory AddEditAirportEvent.selectedWard(int code) = _SelectedWard;
}
