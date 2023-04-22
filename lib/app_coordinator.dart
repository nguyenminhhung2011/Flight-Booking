import 'package:flight_booking/presentations/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentations/dashboard/bloc/dashboard_bloc.dart';

extension AppCoordinator<T> on BuildContext {
  void pop() => Navigator.of(this).pop();

  void startSelectedBottomBarItem(int view) {
    read<DashboardBloc>().add(DashboardEvent.changeView(view));
  }

  Future<T?> startFlightDetail(String ticId) {
    return Navigator.of(this).pushNamed(Routes.flightDetail, arguments: ticId);
  }
}
