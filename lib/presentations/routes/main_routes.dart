import 'package:flight_booking/domain/entities/ticket/ticket.dart';
import 'package:flight_booking/presentations/customer/views/widgets/customer_detail_screen.dart';
import 'package:flight_booking/presentations/dashboard/views/dashboard_screen.dart';
import 'package:flight_booking/presentations/login/views/login_screen.dart';
import 'package:flight_booking/presentations/payment/view/payment_screen.dart';
import 'package:flight_booking/presentations/payment_detail/bloc/payment_detail_bloc.dart';
import 'package:flight_booking/presentations/payment_detail/view/payment_detail_screen.dart';
import 'package:flight_booking/presentations/routes/routes.dart';
import 'package:flight_booking/presentations/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/dependency_injection/di.dart';
import '../flight_detail/bloc/flight_detail_bloc.dart';
import '../flight_detail/views/flight_detail_screen.dart';
import '../payment/blocs/payment_tab_bloc.dart';

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

      case Routes.flightDetail:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            if (settings.arguments is int) {
              return BlocProvider<FlightDetailBloc>(
                create: (context) => injector(param1: settings.arguments),
                child: const FlightDetailScreen(),
              );
            }
            return const SizedBox();
          },
        );

      case Routes.paymentDetail:
        return MaterialPageRoute(
          builder: (context) {
            return BlocProvider<PaymentDetailBloc>(
              create: (context) => injector(param1: settings.arguments),
              child: PaymentDetailScreen(),
            );
          },
          settings: settings,
        );

      case Routes.customerDetail:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return const CustomerDetailScreen();
          },
        );
      case Routes.payment:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            Map? arguments = settings.arguments as Map;
            final ids = arguments['ids'];
            if (ids != null && ids is Map<String, int>) {
              return BlocProvider<PaymentTabBloc>(
                create: (_) => injector(
                  param1: ids,
                ),
                child: const PaymentScreen(),
              );
            }
            return const SizedBox();
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
