part of 'list_tic_bloc.dart';

@freezed
class ListTicEvent with _$ListTicEvent {
  const factory ListTicEvent.started() = _Started;

  const factory ListTicEvent.selectTic(String ticID) = _SelectTic;
}
