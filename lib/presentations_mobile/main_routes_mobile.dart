import 'package:flight_booking/core/components/enum/search_enum.dart';
import 'package:flight_booking/presentations/profile/views/profile_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/airport_detail_mobile/bloc/airport_detail_mobile_bloc.dart';
import 'package:flight_booking/presentations_mobile/airport_detail_mobile/views/airport_detail_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/auth/views/login_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/auth/views/register_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/checkout/views/checkout_screen.dart';
import 'package:flight_booking/presentations_mobile/dashboard_mobile/views/dashboard_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/flight_history_detail/bloc/flight_history_detail_bloc.dart';
import 'package:flight_booking/presentations_mobile/flight_history_detail/views/flight_history_detail_screen.dart';
import 'package:flight_booking/presentations_mobile/flight_history_mobile/views/flight_history_screen.dart';
import 'package:flight_booking/presentations_mobile/flight_mobile_detail/notifier/fmd_notifier.dart';
import 'package:flight_booking/presentations_mobile/flight_mobile_detail/views/flight_detail_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/home_mobile/views/home_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/hotel_detail_mobile/views/hotel_detail_screen.dart';
import 'package:flight_booking/presentations_mobile/list_airport_mobile/bloc/airport_mobile_bloc.dart';
import 'package:flight_booking/presentations_mobile/list_airport_mobile/views/list_airport_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/list_flight_mobile/bloc/flight_mobile_bloc.dart';
import 'package:flight_booking/presentations_mobile/list_flight_mobile/views/list_flight_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/list_hotel/views/list_hotel_screen.dart';
import 'package:flight_booking/presentations_mobile/onboard_slash/notifier/onboard_notifier.dart';
import 'package:flight_booking/presentations_mobile/onboard_slash/view/onboard_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/reviews/views/add_review_screen.dart';
import 'package:flight_booking/presentations_mobile/routes_mobile.dart';
import 'package:flight_booking/presentations_mobile/save/bloc/save_bloc.dart';
import 'package:flight_booking/presentations_mobile/save/views/save_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/search_mobile/bloc/search_mobile_bloc.dart';
import 'package:flight_booking/presentations_mobile/search_mobile/views/search_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/select_scott_mobile/bloc/select_scott_bloc.dart';
import 'package:flight_booking/presentations_mobile/select_scott_mobile/views/select_scott_screen.dart';
import 'package:flight_booking/presentations_mobile/splash_mobile/views/splash_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/tic_detail_mobile/views/tic_detail_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/ticket_mobile/bloc/tic_mobile_bloc.dart';
import 'package:flight_booking/presentations_mobile/ticket_mobile/views/tic_mobile_screen.dart';
import 'package:flight_booking/presentations_mobile/wallet/views/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../core/dependency_injection/di.dart';
import '../presentations/login/bloc/authentication_bloc.dart';

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
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const SplashMobileScreen(),
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
          builder: (_) => BlocProvider<FlightMobileBloc>(
            create: (_) => injector(),
            child: const ListFlightMobileScreen(),
          ),
        );
      case RoutesMobile.flightDetailMobile:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => ChangeNotifierProvider<FmdNotifier>.value(
            value: injector(param1: settings.arguments as int),
            child: const FlightDetailMobileScreen(),
          ),
        );
      case RoutesMobile.listAirportMobile:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => BlocProvider<AirportMobileBloc>(
            create: (_) => injector(),
            child: const ListAirportMobileScreen(),
          ),
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
          builder: (_) => BlocProvider<AuthenticationBloc>(
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
      case RoutesMobile.addReview:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const AddReviewScreen(),
        );
      case RoutesMobile.ticket:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => BlocProvider<TicMobileBloc>(
            create: (context) => injector(),
            child: const TicMobileScreen(),
          ),
        );
      case RoutesMobile.ticketDetail:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const TicDetailMobileScreen(),
        );
      case RoutesMobile.selectScott:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => BlocProvider<SelectScottBloc>(
            create: (context) => injector(param1: settings.arguments),
            child: const SelectScottScreen(),
          ),
        );
      case RoutesMobile.flightHistory:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const FlightHistoryScreen(),
        );
      case RoutesMobile.flightHistoryDetail:
        final args = settings.arguments;
        String id = '';
        if (args is String) {
          id = args;
        }
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => BlocProvider<FlightHistoryDetailBloc>(
            create: (context) => injector(param1: id),
            child: const FlightHistoryDetailScreen(),
          ),
        );
      case RoutesMobile.walletScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const WalletScreen(),
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
