import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

import '../../calendar/views/calender_screen.dart';
import '../../overview/views/overview_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedNavigation = 0;
  final destinitons = const [
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

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Stack(
        children: [
          Container(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          Scaffold(
            backgroundColor: Theme.of(context).cardColor,
            body: AdaptiveLayout(
              bodyRatio: 0.7,
              primaryNavigation: SlotLayout(
                config: <Breakpoint, SlotLayoutConfig>{
                  Breakpoints.medium: SlotLayout.from(
                    inAnimation: AdaptiveScaffold.leftOutIn,
                    key: const Key('Primary Navigation Medium'),
                    builder: (_) => AdaptiveScaffold.standardNavigationRail(
                      selectedIndex: selectedNavigation,
                      onDestinationSelected: (int newIndex) {},
                      leading: const Icon(Icons.menu),
                      destinations: destinitons,
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                    ),
                  ),
                  Breakpoints.large: SlotLayout.from(
                    key: const Key('Primary Navigation Large'),
                    inAnimation: AdaptiveScaffold.leftOutIn,
                    builder: (_) => AdaptiveScaffold.standardNavigationRail(
                      selectedIndex: selectedNavigation,
                      onDestinationSelected: (int newIndex) {},
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
                      destinations: destinitons,
                      // trailing: trailingNavRail,
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                    ),
                  ),
                },
              ),
              body: SlotLayout(
                config: <Breakpoint, SlotLayoutConfig?>{
                  Breakpoints.smallAndUp: SlotLayout.from(
                    key: const Key('Body'),
                    inAnimation: AdaptiveScaffold.stayOnScreen,
                    builder: (contextBody) => const OverviewScreen(),
                  ),
                },
              ),
              secondaryBody: SlotLayout(
                config: <Breakpoint, SlotLayoutConfig?>{
                  Breakpoints.large: SlotLayout.from(
                    key: const Key('Secondary Body'),
                    inAnimation: AdaptiveScaffold.stayOnScreen,
                    builder: (_) => const CalenderScreen(),
                  ),
                },
              ),
            ),
          ),
        ],
      ),
    );
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

//Dumb code
