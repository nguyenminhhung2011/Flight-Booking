part of 'flight_history_detail_bloc.dart';

@freezed
class FlightHistoryDetailEvent with _$FlightHistoryDetailEvent {
  const factory FlightHistoryDetailEvent.started() = _Started;
  const factory FlightHistoryDetailEvent.changeCustomerView({
    required int index,
  }) = _ChangeCustomerView;
}
