import 'dart:async';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flight_booking/application.dart';
import 'package:flight_booking/core/components/configurations/configurations.dart';
import 'package:flight_booking/presentations/customer/bloc/customer_bloc.dart';
import 'package:flight_booking/presentations/dashboard/bloc/dashboard_bloc.dart';
import 'package:flight_booking/presentations/payment_management/bloc/payment_bloc.dart';
import 'package:flight_booking/presentations/routes/routes.dart';
import 'package:flight_booking/presentations_mobile/auth/bloc/auth_bloc.dart';
import 'package:flight_booking/presentations_mobile/dashboard_mobile/bloc/dashboard_mobile_bloc.dart';
import 'package:flight_booking/presentations_mobile/routes_mobile.dart';
import 'package:flight_booking/presentations_mobile/save/bloc/save_bloc.dart';
import 'package:flight_booking/presentations_mobile/search_mobile/bloc/search_mobile_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'core/dependency_injection/di.dart';

class AppDelegate {
  Future<Widget> build(Map<String, dynamic> environment) async {
    WidgetsFlutterBinding.ensureInitialized();

    Configurations().setConfigurationValues(environment);

    configureDependencies(environment: Environment.prod);
    var isMobile = Configurations.isMobileMode;
    final savedThemeMode = await AdaptiveTheme.getThemeMode();

    return Application(
      navigationKey: GlobalKey<NavigatorState>(),
      providers: [
        BlocProvider<DashboardBloc>(create: (_) => injector.get()),
        BlocProvider<CustomerBloc>(create: (_) => injector.get()),
        if (!isMobile) ...[
          BlocProvider<DashboardBloc>(create: (_) => injector.get()),
          BlocProvider<PaymentBloc>(create: (context) => injector()),
        ],
        if (isMobile) ...[
          BlocProvider<DashboardMobileBloc>(create: (_) => injector.get()),
          BlocProvider<SearchMobileBloc>(create: (_) => injector.get()),
          BlocProvider<AuthBloc>(create: (_) => injector.get()),
          BlocProvider<SaveBloc>(create: (_) => injector.get()),
        ],
      ],
      initialRoute: isMobile ? RoutesMobile.splash : Routes.dashboard,
      savedThemeMode: savedThemeMode,
      isMobile: isMobile,
    );
  }

  Future<void> run(Map<String, dynamic> environment) async {
    final app = await build(environment);
    runZonedGuarded(
      () => {runApp(app)},
      (error, stack) {
        if (kDebugMode) {
          //Do nothing
        }
      },
    );
  }
}
