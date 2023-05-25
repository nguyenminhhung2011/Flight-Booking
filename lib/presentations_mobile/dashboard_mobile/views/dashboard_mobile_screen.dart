import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/constant/constant.dart';
import 'package:flight_booking/presentations_mobile/dashboard_mobile/bloc/dashboard_mobile_bloc.dart';
import 'package:flight_booking/presentations_mobile/dashboard_mobile/views/side_menu.dart';
import 'package:flight_booking/presentations_mobile/dashboard_mobile/views/widgets/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/widgets/mobile/tabbar_custom.dart';

class DashboardMobile extends StatefulWidget {
  const DashboardMobile({super.key});

  @override
  State<DashboardMobile> createState() => _DashboardMobileState();
}

class _DashboardMobileState extends State<DashboardMobile>
    with SingleTickerProviderStateMixin {
  List<TabItem> _tabs = <TabItem>[];
  DashboardMobileBloc get _bloc => context.read<DashboardMobileBloc>();

  late AnimationController _animationController;
  late Animation animation;
  late Animation scaleAnimation;
  @override
  void initState() {
    _tabs = _bloc.state.tabItems.map((e) => e).toList();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200))
      ..addListener(() {
        setState(() {});
      });

    animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
          parent: _animationController, curve: Curves.fastOutSlowIn),
    );
    scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(
      CurvedAnimation(
          parent: _animationController, curve: Curves.fastOutSlowIn),
    );
    super.initState();
  }

  void _onTabChange(int index) {
    if (_bloc.state.index != index) {
      _bloc.add(ChangeTabEvent(
        index,
      ));
    }
  }

  void _onViewChange() {
    if (_bloc.state.isShowMenu) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    _bloc.add(const ChangeShowMenuEvent());
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardMobileBloc, DashboardMobileState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          resizeToAvoidBottomInset: false,
          extendBody: true,
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
          body: Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                curve: Curves.fastOutSlowIn,
                width: 288,
                left: state.isShowMenu ? -288 : 0,
                height: context.heightDevice,
                child: SideMenu(
                  call: _onViewChange,
                  indexSelect: state.index,
                  callChangePage: _onTabChange,
                ),
              ),
              Transform.translate(
                offset: Offset(animation.value * 265, 0),
                child: Transform.scale(
                  scale: scaleAnimation.value,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(state.isShowMenu ? 0.0 : 24.0),
                    ),
                    child: IndexedStack(
                      index: state.index,
                      sizing: StackFit.expand,
                      children: _tabs.map((e) => e.screen).toList(),
                    ),
                  ),
                ),
              ),
              if (state.isShowMenu && state.index == 0)
                GestureDetector(
                  onTap: _onViewChange,
                  child: Container(
                    margin: const EdgeInsets.only(left: 15.0, top: 45),
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                  ),
                )
            ],
          ),
        );
      },
    );
  }
}
