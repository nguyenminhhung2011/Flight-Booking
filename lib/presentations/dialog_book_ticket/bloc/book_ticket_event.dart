part of 'book_ticket_bloc.dart';

@freezed
class BTEvent with _$BTEvent {
  const factory BTEvent.onStarted() = _Started;
  const factory BTEvent.buttonTap() = _ButtonTap;
  const factory BTEvent.changeTicIndexView({required int index}) =
      _ChangeTicIndexView;
  const factory BTEvent.updateTicOverview() = _UpdateTicOverview;

  const factory BTEvent.fetchCustomerData() = _FetchCustomerData;

  const factory BTEvent.getCustomerById({required String id}) =
      _GetCustomerById;

  const factory BTEvent.getTicInformation() = _GetTicInformation;
  const factory BTEvent.selectedSeat({
    required SeatSelected newSeat,
  }) = _SelectedSeat;
  const factory BTEvent.searchCustomer({
    required String text,
  }) = _SearchCustomer;

  const factory BTEvent.textChange({
    required String text,
  }) = _TextChange;

  const factory BTEvent.addSeat({
    required String name,
    required String email,
    required String gender,
    required int seat,
    required int type,
    required String phoneNumber,
    required String identityNumber,
    required DateTime dateBorn,
    required double luggage,
  }) = _AddSeat;
}
