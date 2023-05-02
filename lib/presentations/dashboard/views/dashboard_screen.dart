import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flight_booking/core/dependency_injection/di.dart';
import 'package:flight_booking/presentations/customer/bloc/customer_bloc.dart';
import 'package:flight_booking/presentations/customer/views/customer_screen.dart';
import 'package:flight_booking/presentations/dashboard/bloc/dashboard_bloc.dart';
import 'package:flight_booking/presentations/dashboard/bloc/dashboard_model_state.dart';
import 'package:flight_booking/presentations/list_ticket/bloc/list_ticket_bloc.dart';
import 'package:flight_booking/presentations/settings/bloc/setting_bloc.dart';
import 'package:flight_booking/presentations/settings/views/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../generated/l10n.dart';
import '../../calendar/views/calender_screen.dart';
import '../../customer/views/widgets/customer_detail_card.dart';
import '../../list_flight/bloc/list_flight_bloc.dart';
import '../../list_flight/views/flight_fast_view.dart';
import '../../list_flight/views/list_flight_screen.dart';
import '../../list_ticket/views/list_ticket_screen.dart';
import '../../overview/views/overview_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final destinations = const [
    NavigationRailDestination(
      icon: Icon(Icons.bar_chart_sharp),
      selectedIcon: Icon(Icons.bar_chart_sharp),
      label: Text('Dashboard'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.airplanemode_active),
      selectedIcon: Icon(Icons.airplanemode_active),
      label: Text('Flights'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.people),
      selectedIcon: Icon(Icons.people),
      label: Text('Customer'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.airplane_ticket),
      selectedIcon: Icon(Icons.airplane_ticket),
      label: Text('Ticket'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.personal_injury_rounded),
      selectedIcon: Icon(Icons.personal_injury_rounded),
      label: Text('Employee'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.settings),
      selectedIcon: Icon(Icons.settings),
      label: Text('Settings'),
    ),
  ];
  final List<Map<String, dynamic>> _pages = [
    {
      'body': const OverviewScreen(),
      'secondBody': const CalenderScreen(),
    },
    {
      'body': BlocProvider<ListFlightBloc>(
        create: (context) => injector(),
        child: const ListFlightScreen(),
      ),
      'secondBody': BlocProvider<ListFlightBloc>(
        create: (context) => injector(),
        child: const FlightFastView(),
      ),
    },
    {
      'body': BlocProvider<CustomerBloc>(
        create: (context) => injector(),
        child: const CustomerScreen(),
      ),
      'secondBody': const CustomerDetailCard(),
    },
    {
      'body': BlocProvider<ListTicketBloc>(
        create: (context) => injector(),
        child: const ListTicketScreen(),
      ),
      'secondBody': null,
    },
    {
      'body': BlocProvider<ListTicketBloc>(
        create: (context) => injector(),
        child: const ListTicketScreen(),
      ),
      'secondBody': null,
    },
    {
      'body': BlocProvider<SettingBloc>(
        create: (context) => injector(),
        child: const SettingScreen(),
      ),
      'secondBody': null,
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
    return WillPopScope(onWillPop: () async {
      if (context.read<DashboardBloc>().state.data.viewEnum != 0) {
        // context.start(0);
      }
      return true;
    }, child: BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, sate) {
        DashboardModelState data = context.read<DashboardBloc>().data;

        return Stack(
          children: [
            Container(
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            Scaffold(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              body: AdaptiveLayout(
                internalAnimations: false,
                bodyRatio: 0.7,
                primaryNavigation: SlotLayout(
                  config: <Breakpoint, SlotLayoutConfig>{
                    Breakpoints.medium: SlotLayout.from(
                      inAnimation: AdaptiveScaffold.leftOutIn,
                      key: const Key('Primary Navigation Medium'),
                      builder: (_) => AdaptiveScaffold.standardNavigationRail(
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
                      builder: (_) => AdaptiveScaffold.standardNavigationRail(
                        selectedIndex: data.viewEnum,
                        onDestinationSelected: _onChangeView,
                        extended: true,
                        leading: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const <Widget>[
                            Text(
                              'REPLY',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 201, 197)),
                            ),
                            Icon(Icons.menu_open)
                          ],
                        ),
                        destinations: destinations,
                        // trailing: trailingNavRail,
                        backgroundColor:
                            Theme.of(context).scaffoldBackgroundColor,
                        trailing: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            children: [
                              Icon(
                                data.isDarkTheme
                                    ? Icons.dark_mode
                                    : Icons.light_mode,
                              ),
                              Text(
                                ' ${data.isDarkTheme ? S.of(context).darkMode : S.of(context).lightMode}',
                              ),
                              Switch(
                                value: data.isDarkTheme,
                                onChanged: _onChangeTheme,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  },
                ),
                body: SlotLayout(
                  config: <Breakpoint, SlotLayoutConfig?>{
                    Breakpoints.smallAndUp: SlotLayout.from(
                      key: const Key('Body'),
                      inAnimation: AdaptiveScaffold.stayOnScreen,
                      builder: (contextBody) => _pages[data.viewEnum]['body']!,
                    ),
                  },
                ),
                secondaryBody: data.secondBodyDis
                    ? SlotLayout(
                        config: <Breakpoint, SlotLayoutConfig?>{
                          Breakpoints.large: SlotLayout.from(
                            key: const Key('Secondary Body'),
                            inAnimation: AdaptiveScaffold.stayOnScreen,
                            builder: (_) =>
                                _pages[data.viewEnum]['secondBody']!,
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
                        destinations: const [
                          NavigationDestination(
                            icon: Icon(Icons.bar_chart_outlined),
                            selectedIcon: Icon(Icons.bar_chart_outlined),
                            label: 'Dashboard',
                          ),
                          NavigationDestination(
                            icon: Icon(Icons.airplanemode_active),
                            selectedIcon: Icon(Icons.airplanemode_active),
                            label: 'Flights',
                          ),
                          NavigationDestination(
                            icon: Icon(Icons.people),
                            selectedIcon: Icon(Icons.people),
                            label: 'Customer',
                          ),
                          NavigationDestination(
                            icon: Icon(Icons.airplane_ticket),
                            selectedIcon: Icon(Icons.airplane_ticket),
                            label: 'Ticket',
                          ),
                          NavigationDestination(
                            icon: Icon(Icons.personal_injury_rounded),
                            selectedIcon: Icon(Icons.personal_injury_rounded),
                            label: 'Employee',
                          ),
                          NavigationDestination(
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
            ),
          ],
        );
      },
    ));
  }
}

class AdaptiveLayouRowCol extends StatelessWidget {
  final List<Widget> child;
  const AdaptiveLayouRowCol({super.key, required this.child});

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
