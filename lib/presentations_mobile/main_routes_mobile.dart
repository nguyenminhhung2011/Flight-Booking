import 'package:flight_booking/presentations_mobile/dashboard_mobile/views/dashboard_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/flight_mobile_detail/views/flight_detail_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/home_mobile/views/home_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/list_flight_mobile/views/list_flight_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/routes_mobile.dart';
import 'package:flutter/material.dart';

class MainRoutesMobile {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesMobile.homeMobile:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return const HomeMobileScreen();
          },
        );
      case RoutesMobile.dashboardMobile:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const DashboardMobile(),
        );
      case RoutesMobile.listFlightMobile:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ListFlightMobileScreen(),
        );
      case RoutesMobile.flightDetailMobile:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const FlightDetailMobileSccreen(),
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
