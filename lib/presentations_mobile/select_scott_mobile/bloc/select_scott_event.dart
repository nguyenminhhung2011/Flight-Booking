part of 'select_scott_bloc.dart';

@freezed
class SelectScottEvent with _$SelectScottEvent {
  const factory SelectScottEvent.started() = _Started;
  const factory SelectScottEvent.changeTab({required int tab}) = _ChangeTab;
  const factory SelectScottEvent.addNewCustomer({required Ticket tic}) =
      _AddNewCustomer;
  const factory SelectScottEvent.selectCustomer({required int index}) =
      _SelectCustomer;
  const factory SelectScottEvent.removeCustomer({required int index}) =
      _RemoveCustomer;
  const factory SelectScottEvent.getAllTicOfFlight() = _GetAllTicOfFlight;
  const factory SelectScottEvent.getTicInformation() = _GetTicInformation;

  const factory SelectScottEvent.getFlightById() = _GetFlightById;
  const factory SelectScottEvent.selectedSeat({
    required SeatSelected newSeat,
  }) = _SelectedSeat;

  const factory SelectScottEvent.addTicToDB({
    required String paymentType,
  }) = _AddTicToDB;
}
