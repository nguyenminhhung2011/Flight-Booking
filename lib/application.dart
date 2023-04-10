import 'package:flight_booking/presentations/routes/main_routes.dart';
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
  const Application({
    super.key,
    required this.providers,
    required this.initialRoute,
    required this.navigationKey,
    required this.savedThemeMode,
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
      onGenerateRoute: MainRoutes.getRoute,
      initialRoute: widget.initialRoute,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: light,
      darkTheme: dark,
      home: const SizedBox(),
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
      // light: theme.getTheme(Brightness.light),
      // dark: theme.getTheme(Brightness.dark),
      light: ThemeData.light(),
      dark: ThemeData.dark(),
      initial: widget.savedThemeMode ?? AdaptiveThemeMode.dark,
      builder: (ThemeData light, ThemeData dark) => MultiBlocProvider(
        providers: widget.providers,
        child: _buildMaterialApp(
          locale: const Locale(
            'en',
            '',
          ),
          light: light,
          dark: dark,
        ),
      ),
    );
  }
}
