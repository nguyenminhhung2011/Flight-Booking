import 'package:flight_booking/app_delegate.dart';

void main() {
  AppDelegate().run();

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flight booking',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: MainRoutes.getRoute,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      home: Scaffold(body: LoginScreen()),
    );
  }
}
