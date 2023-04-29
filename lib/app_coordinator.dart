import 'package:flight_booking/presentations/routes/routes.dart';
import 'package:flutter/material.dart';

extension AppCoordinator<T> on BuildContext {
  void pop() => Navigator.of(this).pop();

  void startSelectedBottomBarItem(int view) {}

  Future<T?> startFlightDetail(String ticId) {
    return Navigator.of(this).pushNamed(Routes.flightDetail, arguments: ticId);
  }

  Future<T?> openLoginPage() {
    return Navigator.of(this).pushNamed(Routes.login);
  }

  Future<T?> openDashboardPage() {
    return Navigator.of(this).pushNamed(Routes.dashboard);
  }
}
