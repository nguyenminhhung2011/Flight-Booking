part of 'book_ticket_bloc.dart';

@freezed
class BTEvent with _$BTEvent {
  const factory BTEvent.onStarted() = _Started;
  const factory BTEvent.buttonTap() = _ButtonTap;
  const factory BTEvent.changeTicIndexView({required int index}) =
      _ChangeTicIndexView;
  const factory BTEvent.updateTicOverview() = _UpdateTicOverview;
}
