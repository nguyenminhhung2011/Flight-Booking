part of 'dashboard_mobile_bloc.dart';

abstract class DashboardMobileState extends Equatable {
  final List<TabItem> tabItems;
  final int index;

  const DashboardMobileState(
    this.tabItems,
    this.index,
  );
}

class DashboardInitial extends DashboardMobileState {
  const DashboardInitial(
    List<TabItem> tabItems,
    int index,
  ) : super(tabItems, index);

  @override
  List<Object?> get props => [tabItems];
}

class ChangeTab extends DashboardInitial {
  const ChangeTab(super.tabItems, super.index);

  @override
  List<Object?> get props => [index];
}
