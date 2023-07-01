import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/utils/preferences.dart';
import 'package:flight_booking/core/dependency_injection/di.dart';
import 'package:flight_booking/presentations/airport/views/airport_screen.dart';
import 'package:flight_booking/presentations/customer/views/customer_screen.dart';
import 'package:flight_booking/presentations/dashboard/bloc/dashboard_bloc.dart';
import 'package:flight_booking/presentations/dashboard/bloc/dashboard_model_state.dart';
import 'package:flight_booking/presentations/login/bloc/authentication_bloc.dart';
import 'package:flight_booking/presentations/overview/views/overview_new_screen.dart';
import 'package:flight_booking/presentations/payment_management/view/payment_management_screen.dart';
import 'package:flight_booking/presentations/settings/bloc/setting_bloc.dart';
import 'package:flight_booking/presentations/settings/views/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../generated/l10n.dart';
import '../../airport/bloc/airport_bloc.dart';
import '../../customer/views/widgets/customer_detail_card.dart';
import '../../list_flight/views/flight_fast_view.dart';
import '../../list_flight/views/list_flight_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final String role = CommonAppSettingPref.getUserRole();

  late final destinations = [
    const NavigationRailDestination(
      icon: Icon(Icons.bar_chart_sharp),
      selectedIcon: Icon(Icons.bar_chart_sharp),
      label: Text('Dashboard'),
    ),
    const NavigationRailDestination(
      icon: Icon(Icons.airplanemode_active),
      selectedIcon: Icon(Icons.airplanemode_active),
      label: Text('Flights'),
    ),
    const NavigationRailDestination(
      icon: Icon(Icons.people),
      selectedIcon: Icon(Icons.people),
      label: Text('Customer'),
    ),
    if (role == "ADMIN")
      const NavigationRailDestination(
        icon: Icon(Icons.connecting_airports_rounded),
        selectedIcon: Icon(Icons.connecting_airports_rounded),
        label: Text('Airport'),
      ),
    //const NavigationRailDestination(
    //   icon: Icon(Icons.airplane_ticket),
    //   selectedIcon: Icon(Icons.airplane_ticket),
    //   label: Text('Ticket'),
    // ),
    // NavigationRailDestination(
    //   icon: Icon(Icons.personal_injury_rounded),
    //   selectedIcon: Icon(Icons.personal_injury_rounded),
    //   label: Text('Employee'),
    // ),

    const NavigationRailDestination(
      icon: Icon(Icons.payment),
      selectedIcon: Icon(Icons.payment),
      label: Text('Payment'),
    ),
    const NavigationRailDestination(
      icon: Icon(Icons.settings),
      selectedIcon: Icon(Icons.settings),
      label: Text('Settings'),
    ),
  ];
  late final List<Map<String, dynamic>> _pages = [
    {
      'body': const OverviewNewScreen(),
      'secondBody': null,
      'body_ratio': 0.7,
    },
    {
      'body': const ListFlightScreen(),
      'secondBody': const FlightFastView(),
      'body_ratio': 0.7,
    },
    {
      'body': const CustomerScreen(),
      'secondBody': const CustomerDetailCard(),
      'body_ratio': 0.7,
    },
    if (role == "ADMIN")
      {
        'body': BlocProvider<AirportBloc>(
          create: (context) => injector(),
          child: const AirportScreen(),
        ),
        'secondBody': null,
        'body_ratio': 0.5,
      },
    // {
    //   'body': BlocProvider<ListTicketBloc>(
    //     create: (context) => injector(),
    //     child: const ListTicketScreen(),
    //   ),
    //   'secondBody': null,
    //   'body_ratio': 0.7,
    // },
    // {
    //   'body': BlocProvider<ListTicketBloc>(
    //     create: (context) => injector(),
    //     child: const ListTicketScreen(),
    //   ),
    //   'secondBody': null,
    //   'body_ratio': 0.7,
    // },
    {
      'body': const PaymentManagementScreen(),
      'secondBody': null,
      'body_ratio': 0.7,
    },
    {
      'body': BlocProvider<SettingBloc>(
        create: (context) => injector(),
        child: const SettingScreen(),
      ),
      'secondBody': null,
      'body_ratio': 0.7,
    },
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  void _onChangeTheme(bool value) {
    context.read<DashboardBloc>().add(DashboardEvent.changeTheme(value));
    if (value) {
      AdaptiveTheme.of(context).setDark();
    } else {
      AdaptiveTheme.of(context).setLight();
    }
  }

  void _onChangeView(int view) {
    context.read<DashboardBloc>().add(
          DashboardEvent.changeView(
            view,
            _pages[view]['secondBody'] != null,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          if (context.read<DashboardBloc>().state.data.viewEnum != 0) {}
          return true;
        },
        child: BlocConsumer<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            if (state.status != AuthenticationStatus.authenticated &&
                state.status != AuthenticationStatus.checking) {
              context.moveToLoginPage();
            }
          },
          builder: (context, state) {
            return BlocBuilder<DashboardBloc, DashboardState>(
              builder: (context, sate) {
                DashboardModelState data = context.read<DashboardBloc>().data;
                return Scaffold(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  body: AdaptiveLayout(
                    internalAnimations: false,
                    bodyRatio: 0.7,
                    primaryNavigation: SlotLayout(
                      config: <Breakpoint, SlotLayoutConfig>{
                        Breakpoints.medium: SlotLayout.from(
                          inAnimation: AdaptiveScaffold.leftOutIn,
                          key: const Key('Primary Navigation Medium'),
                          builder: (_) =>
                              AdaptiveScaffold.standardNavigationRail(
                            selectedIndex: data.viewEnum,
                            onDestinationSelected: (int newIndex) {},
                            leading: const Icon(Icons.menu),
                            destinations: destinations,
                            backgroundColor:
                                Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ),
                        Breakpoints.large: SlotLayout.from(
                          key: const Key('Primary Navigation Large'),
                          inAnimation: AdaptiveScaffold.leftOutIn,
                          builder: (_) =>
                              AdaptiveScaffold.standardNavigationRail(
                            selectedIndex: data.viewEnum,
                            onDestinationSelected: _onChangeView,
                            extended: true,
                            // leading: Text(
                            //   S.of(context).flight,
                            //   style: const TextStyle(
                            //     color: Color.fromARGB(255, 255, 201, 197),
                            //   ),
                            // ),
                            leading: Image.asset(
                              "assets/icons/globe.png",
                              height: 80,
                              width: 80,
                              fit: BoxFit.contain,
                              filterQuality: FilterQuality.high,
                            ),
                            destinations: destinations,

                            // trailing: trailingNavRail,
                          ),
                        ),
                      },
                    ),
                    body: SlotLayout(
                      config: <Breakpoint, SlotLayoutConfig?>{
                        Breakpoints.smallAndUp: SlotLayout.from(
                          key: const Key('Body'),
                          inAnimation: AdaptiveScaffold.stayOnScreen,
                          // builder: (contextBody) => _pages[data.viewEnum]['body']!,
                          builder: (contextBody) => IndexedStack(
                            index: data.viewEnum,
                            sizing: StackFit.expand,
                            children:
                                _pages.map((e) => e['body'] as Widget).toList(),
                          ),
                        ),
                      },
                    ),
                    secondaryBody: data.secondBodyDis
                        ? SlotLayout(
                            config: <Breakpoint, SlotLayoutConfig?>{
                              Breakpoints.large: SlotLayout.from(
                                key: const Key('Secondary Body'),
                                inAnimation: AdaptiveScaffold.stayOnScreen,
                                builder: (_) => IndexedStack(
                                  index: data.viewEnum,
                                  sizing: StackFit.expand,
                                  children: _pages
                                      .map((e) =>
                                          (e['secondBody'] as Widget?) ??
                                          const SizedBox())
                                      .toList(),
                                ),
                              ),
                            },
                          )
                        : null,
                    bottomNavigation: SlotLayout(
                      config: <Breakpoint, SlotLayoutConfig>{
                        Breakpoints.small: SlotLayout.from(
                          key: const Key('Bottom Navigation Small'),
                          inAnimation: AdaptiveScaffold.bottomToTop,
                          outAnimation: AdaptiveScaffold.topToBottom,
                          builder: (_) =>
                              AdaptiveScaffold.standardBottomNavigationBar(
                            destinations: [
                              const NavigationDestination(
                                icon: Icon(Icons.bar_chart_outlined),
                                selectedIcon: Icon(Icons.bar_chart_outlined),
                                label: 'Dashboard',
                              ),
                              const NavigationDestination(
                                icon: Icon(Icons.airplanemode_active),
                                selectedIcon: Icon(Icons.airplanemode_active),
                                label: 'Flights',
                              ),
                              const NavigationDestination(
                                icon: Icon(Icons.people),
                                selectedIcon: Icon(Icons.people),
                                label: 'Customer',
                              ),
                              if (role == "ADMIN")
                                const NavigationDestination(
                                  icon:
                                      Icon(Icons.connecting_airports_outlined),
                                  selectedIcon:
                                      Icon(Icons.connecting_airports_outlined),
                                  label: 'Airport',
                                ),
                              // const NavigationDestination(
                              //   icon: Icon(Icons.airplane_ticket),
                              //   selectedIcon: Icon(Icons.airplane_ticket),
                              //   label: 'Ticket',
                              // ),
                              // const NavigationDestination(
                              //   icon: Icon(Icons.personal_injury_rounded),
                              //   selectedIcon:
                              //       Icon(Icons.personal_injury_rounded),
                              //   label: 'Employee',
                              // ),
                              const NavigationDestination(
                                icon: Icon(Icons.settings),
                                selectedIcon: Icon(Icons.settings),
                                label: 'Settings',
                              ),
                            ],
                            currentIndex: data.viewEnum,
                            onDestinationSelected: _onChangeView,
                          ),
                        )
                      },
                    ),
                  ),
                );
              },
            );
          },
        ));
  }
}

class AdaptiveLayoutRowCol extends StatelessWidget {
  final List<Widget> child;
  const AdaptiveLayoutRowCol({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Breakpoints.large.isActive(context)
        ? Row(
            children: child,
          )
        : Column(
            children: child,
          );
  }
}
