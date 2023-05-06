import 'dart:async';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flight_booking/application.dart';
import 'package:flight_booking/core/components/configurations/configurations.dart';
import 'package:flight_booking/presentations/dashboard/bloc/dashboard_bloc.dart';
import 'package:flight_booking/presentations/routes/routes.dart';
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
    final savedThemeMode = await AdaptiveTheme.getThemeMode();

    return Application(
      navigationKey: GlobalKey<NavigatorState>(),
      providers: [
        BlocProvider<DashboardBloc>(create: (_) => injector.get()),
      ],
      initialRoute: Routes.dashboard,
      savedThemeMode: savedThemeMode,
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
/*

Object(asdfasdf)
*/
