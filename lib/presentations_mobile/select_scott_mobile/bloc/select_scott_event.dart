part of 'select_scott_bloc.dart';

@freezed
class SelectScottEvent with _$SelectScottEvent {
  const factory SelectScottEvent.started() = _Started;
  const factory SelectScottEvent.changeTab({required int tab}) = _ChangeTab;
  const factory SelectScottEvent.addNewCustomer({required Customer customer}) =
      _AddNewCustomer;
  const factory SelectScottEvent.selectCustomer({required int index}) =
      _SelectCustomer;
  const factory SelectScottEvent.removeCustomer({required int index}) =
      _RemoveCustomer;
}
