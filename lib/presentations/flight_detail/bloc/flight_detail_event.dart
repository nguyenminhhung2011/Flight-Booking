part of 'flight_detail_bloc.dart';

@freezed
class FlightDetailEvent with _$FlightDetailEvent {
  const factory FlightDetailEvent.started() = _Started;
  const factory FlightDetailEvent.changeTypeView(ItemViewEnum view) =
      _ChangeTypeView;
  const factory FlightDetailEvent.showMoreInformation() = _showMoreInformation;
  const factory FlightDetailEvent.getFlightById() = _GetFlightById;
  const factory FlightDetailEvent.getTicInformation() = _GetTicInformation;
}
