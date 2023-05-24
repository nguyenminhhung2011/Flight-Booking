part of 'tic_mobile_bloc.dart';

@freezed
class TicMobileEvent with _$TicMobileEvent {
  const factory TicMobileEvent.started() = _Started;
  const factory TicMobileEvent.changeAirportStart({required Airport airport}) =
      _ChangeAirportStart;
  const factory TicMobileEvent.changeAirportFinish({required Airport airport}) =
      _ChangeAirportFinish;

  const factory TicMobileEvent.changeTypeTic({required TicTypeEnum type}) =
      _ChangeTypeTic;

  const factory TicMobileEvent.fetchTic() = _FetchTic;
}
