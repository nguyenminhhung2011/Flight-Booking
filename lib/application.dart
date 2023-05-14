import 'package:flight_booking/core/components/widgets/coor_extension.dart';
import 'package:flight_booking/presentations/routes/main_routes.dart';
import 'package:flight_booking/presentations_mobile/main_routes_mobile.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

class Application extends StatefulWidget {
  final AdaptiveThemeMode? savedThemeMode;
  final GlobalKey<NavigatorState> navigationKey;
  final List<BlocProvider> providers;
  final String initialRoute;
  final bool isMobile;
  const Application({
    super.key,
    required this.providers,
    required this.initialRoute,
    required this.navigationKey,
    required this.savedThemeMode,
    required this.isMobile,
  });

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> with WidgetsBindingObserver {
  Widget _buildMaterialApp({
    required Locale locale,
    ThemeData? light,
    ThemeData? dark,
  }) {
    return MaterialApp(
      title: 'Flight booking',
      navigatorKey: widget.navigationKey,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: MainRoutesMobile.getRoute,
      // widget.isMobile ? MainRoutesMobile.getRoute : MainRoutes.getRoute,
      // onGenerateRoute: MainRoutesMobile.getRoute,
      initialRoute: widget.initialRoute,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        primaryColor: '#07AEAF'.toColor(),
        primaryColorDark: '#07AEAF'.toColor(),
        fontFamily: 'Montserrat',
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: '#07AEAF'.toColor(),
      ),
      locale: locale,
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData.light(),
      dark: ThemeData.dark(),
      initial: widget.savedThemeMode ?? AdaptiveThemeMode.light,
      builder: (ThemeData light, ThemeData dark) => MultiBlocProvider(
        providers: widget.providers,
        child: _buildMaterialApp(
          locale: const Locale('en', ''),
          light: light,
          dark: dark,
        ),
      ),
    );
  }
}
