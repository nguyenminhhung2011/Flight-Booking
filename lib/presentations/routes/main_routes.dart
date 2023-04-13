import 'package:flight_booking/presentations/dashboard/views/dashboard_screen.dart';
import 'package:flight_booking/presentations/login/views/login_screen.dart';
import 'package:flight_booking/presentations/routes/routes.dart';
import 'package:flight_booking/presentations/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class MainRoutes {
  static Map<String, WidgetBuilder> getRoutesWithSettings() {
    final routes = {
      Routes.dashboard: (context) => const DashboardScreen(),
    };
    return routes;
  }

  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return const SplashScreen();
          },
        );
      case Routes.dashboard:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return const DashboardScreen();
          },
        );
      case Routes.login:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return LoginScreen();
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
