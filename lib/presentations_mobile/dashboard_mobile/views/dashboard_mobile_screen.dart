import 'package:flight_booking/core/constant/constant.dart';
import 'package:flight_booking/presentations_mobile/dashboard_mobile/bloc/dashboard_mobile_bloc.dart';
import 'package:flight_booking/presentations_mobile/dashboard_mobile/views/widgets/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/widgets/mobile/tabbar_custom.dart';

class DashboardMobile extends StatefulWidget {
  const DashboardMobile({super.key});

  @override
  State<DashboardMobile> createState() => _DashboardMobileState();
}

class _DashboardMobileState extends State<DashboardMobile> {
  List<TabItem> _tabs = <TabItem>[];
  DashboardMobileBloc get _bloc => context.read<DashboardMobileBloc>();

  @override
  void initState() {
    _tabs = _bloc.state.tabItems.map((e) => e).toList();
    super.initState();
  }

  void _onTabChange(int index) {
    if (_bloc.state.index != index) {
      _bloc.add(ChangeTabEvent(index));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardMobileBloc, DashboardMobileState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: TabBarCustom(
            tabBarColor: Colors.black,
            tabBarType: TabBarType.indicatorTabBar,
            items: <TabBarItemStyle>[
              ...dashboardItem.map(
                (e) => TabBarItemStyle(
                  title: e['tit'],
                  assetIcon: e['icon'],
                  screen: e['screen'],
                ),
              ),
            ],
            onChangeTab: _onTabChange,
          ),
          body: IndexedStack(
            index: state.index,
            sizing: StackFit.expand,
            children: _tabs.map((e) => e.screen).toList(),
          ),
        );
      },
    );
  }
}
