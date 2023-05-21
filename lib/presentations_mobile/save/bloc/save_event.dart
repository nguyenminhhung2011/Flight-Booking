part of 'save_bloc.dart';

@freezed
class SaveEvent with _$SaveEvent {
  const factory SaveEvent.started() = _Started;
  const factory SaveEvent.changeTab({required int newTab}) = _ChangeTab;
}
