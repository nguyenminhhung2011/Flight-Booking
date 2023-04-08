import 'package:flight_booking/presentations/dashboard/views/dashboard_screen.dart';
import 'package:flight_booking/presentations/routes/routes.dart';
import 'package:flutter/material.dart';

class MainRoutes {
  static Map<String, WidgetBuilder> getRoutesWithSettings() {
    final routes = {
      Routes.home: (context) => const Scaffold(),
      Routes.dashboard: (context) {
        return const DashboardScreen();
      },
    };
    return routes;
  }

  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(),
        );
      case Routes.dashboard:
        return MaterialPageRoute(
          builder: (_) {
            return const DashboardScreen();
          },
        );

      default:
        return unDefinedRoute();
    }
  }

  static Route unDefinedRoute([String message = 'Page not founds']) {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: Center(
            child: Text(message),
          ),
        );
      },
    );
  }
}
