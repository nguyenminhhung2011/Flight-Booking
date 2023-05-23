import 'package:flight_booking/core/components/enum/search_enum.dart';
import 'package:flight_booking/presentations/profile/views/profile_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/airport_detail_mobile/bloc/airport_detail_mobile_bloc.dart';
import 'package:flight_booking/presentations_mobile/airport_detail_mobile/views/airport_detail_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/auth/bloc/auth_bloc.dart';
import 'package:flight_booking/presentations_mobile/auth/views/login_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/auth/views/register_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/checkout/views/checkout_screen.dart';
import 'package:flight_booking/presentations_mobile/dashboard_mobile/views/dashboard_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/flight_mobile_detail/views/flight_detail_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/home_mobile/views/home_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/hotel_detail_mobile/views/hotel_detail_screen.dart';
import 'package:flight_booking/presentations_mobile/list_airport_mobile/views/list_airport_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/list_flight_mobile/views/list_flight_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/list_hotel/views/list_hotel_screen.dart';
import 'package:flight_booking/presentations_mobile/onboard_slash/notifier/onboard_notifier.dart';
import 'package:flight_booking/presentations_mobile/onboard_slash/view/onboard_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/routes_mobile.dart';
import 'package:flight_booking/presentations_mobile/save/bloc/save_bloc.dart';
import 'package:flight_booking/presentations_mobile/save/views/save_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/search_mobile/bloc/search_mobile_bloc.dart';
import 'package:flight_booking/presentations_mobile/search_mobile/views/search_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/splash_mobile/notifier/splash_notifier.dart';
import 'package:flight_booking/presentations_mobile/splash_mobile/views/splash_mobile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../core/dependency_injection/di.dart';

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
      case RoutesMobile.splash:
        final controller = SplashNotifier();
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => ChangeNotifierProvider<SplashNotifier>.value(
            value: controller,
            child: const SplashMobileScreen(),
          ),
        );
      case RoutesMobile.onboard:
        final controller = OnboardNotifier();
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => ChangeNotifierProvider<OnboardNotifier>.value(
            value: controller,
            child: const OnboardMobileScreen(),
          ),
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
      case RoutesMobile.listAirportMobile:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ListAirportMobileScreen(),
        );
      case RoutesMobile.airportDetailMobile:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => BlocProvider<AirportDetailMobileBloc>(
            create: (context) => injector(),
            child: const AirportDetailMobileScreen(),
          ),
        );
      case RoutesMobile.searchMobile:
        final args = settings.arguments;
        SearchEnum searchType = SearchEnum.airportSearch;
        if (args is SearchEnum) {
          searchType = args;
        }
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => BlocProvider<SearchMobileBloc>(
            create: (context) => injector(param1: searchType),
            child: const SearchMobileScreen(),
          ),
        );
      case RoutesMobile.register:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const RegisterMobileScreen(),
        );
      case RoutesMobile.login:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => BlocProvider<AuthBloc>(
            create: (context) => injector(),
            child: const LoginMobileScreen(),
          ),
        );
      case RoutesMobile.save:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => BlocProvider<SaveBloc>(
            create: (context) => injector(),
            child: const SaveMobileScreen(),
          ),
        );
      case RoutesMobile.profileView:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProfileMobileScreen(),
        );
      case RoutesMobile.hotel:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ListHotelScreen(),
        );
      case RoutesMobile.hotelDetail:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const HotelDetailScreen(),
        );
      case RoutesMobile.checkout:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const CheckoutScreen(),
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
