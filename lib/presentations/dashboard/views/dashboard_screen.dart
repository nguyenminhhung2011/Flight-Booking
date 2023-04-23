import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/dependency_injection/di.dart';
import 'package:flight_booking/presentations/customer/views/customer_screen.dart';
import 'package:flight_booking/presentations/dashboard/bloc/dashboard_bloc.dart';
import 'package:flight_booking/presentations/dashboard/bloc/dashboard_model_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../generated/l10n.dart';
import '../../calendar/views/calender_screen.dart';
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
      icon: Icon(Icons.inbox_outlined),
      selectedIcon: Icon(Icons.inbox),
      label: Text('Home'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.article_outlined),
      selectedIcon: Icon(Icons.article),
      label: Text('dddd'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.chat_outlined),
      selectedIcon: Icon(Icons.chat),
      label: Text('dddd1'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.video_call_outlined),
      selectedIcon: Icon(Icons.video_call),
      label: Text('dddd2'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.home_outlined),
      selectedIcon: Icon(Icons.home),
      label: Text('dddd3'),
    ),
  ];
  final List<Map<String, Widget>> _pages = [
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
      'body': const CustomerScreen(),
      'secondBody': const FlightFastView(),
    },
    {
      'body': const ListTicketScreen(),
      'secondBody': const SizedBox(),
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
    context.read<DashboardBloc>().add(DashboardEvent.changeView(view));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop: () async {
      if (context.read<DashboardBloc>().state.data.viewEnum != 0) {
        context.startSelectedBottomBarItem(0);
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
                secondaryBody: SlotLayout(
                  config: <Breakpoint, SlotLayoutConfig?>{
                    Breakpoints.large: SlotLayout.from(
                      key: const Key('Secondary Body'),
                      inAnimation: AdaptiveScaffold.stayOnScreen,
                      builder: (_) => _pages[data.viewEnum]['secondBody']!,
                    ),
                  },
                ),
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
                            icon: Icon(Icons.home),
                            label: 'Home',
                          ),
                          NavigationDestination(
                            icon: Icon(Icons.person),
                            label: 'Person',
                          ),
                          NavigationDestination(
                            icon: Icon(Icons.home),
                            label: 'Home',
                          ),
                          NavigationDestination(
                            icon: Icon(Icons.home),
                            label: 'Home',
                          ),
                          NavigationDestination(
                            icon: Icon(Icons.home),
                            label: 'Home',
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
