part of 'flight_detail_bloc.dart';

@freezed
class FlightDetailEvent with _$FlightDetailEvent {
  const factory FlightDetailEvent.started() = _Started;
  const factory FlightDetailEvent.changeTypeView(ItemViewEnum view) =
      _ChangeTypeView;
  const factory FlightDetailEvent.showMoreInformation() = _showMoreInformation;
  const factory FlightDetailEvent.getFlightById() = _GetFlightById;
  const factory FlightDetailEvent.getTicInformation() = _GetTicInformation;
  const factory FlightDetailEvent.getTicsByFlightId() = _GetTicsByFlightId;
  const factory FlightDetailEvent.selectedSeat({
    required TicketInformation ticInformation,
    required int seatIndex,
  }) = _SelectedSeat;

  const factory FlightDetailEvent.updateCustomerSelected({Customer? customer}) =
      _UpdateCustomerSelected;
}
