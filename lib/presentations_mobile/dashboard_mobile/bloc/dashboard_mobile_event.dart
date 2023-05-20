part of 'dashboard_mobile_bloc.dart';

@immutable
abstract class DashboarMobiledEvent {
  final int index;

  const DashboarMobiledEvent(this.index);
}

class ChangeTabEvent extends DashboarMobiledEvent {
  const ChangeTabEvent(super.index);
}
