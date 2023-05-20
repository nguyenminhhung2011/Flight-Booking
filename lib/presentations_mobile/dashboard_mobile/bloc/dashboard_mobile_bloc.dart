import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flight_booking/core/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../views/widgets/tab_item.dart';

part 'dashboard_mobile_state.dart';

part 'dashboard_mobile_event.dart';

@injectable
class DashboardMobileBloc
    extends Bloc<DashboarMobiledEvent, DashboardMobileState> {
  DashboardMobileBloc()
      : super(
          DashboardInitial([
            ...dashboardItem.map((e) => TabItem(
                  screen: e['screen'],
                  route: e['tit'],
                  icon: e['icon'],
                  index: e['index'],
                ))
            // for (int i = 0; i < 4; i++)
            //   TabItem(
            //     screen: const HomeMobileScreen(),
            //     route: RoutesMobile.homeMobile,
            //     icon: ImageConst.homeIcon,
            //     index: i,
            //   ),
          ], 0),
        ) {
    on<ChangeTabEvent>(_onChangeTab);
  }

  FutureOr<void> _onChangeTab(
    ChangeTabEvent event,
    Emitter<DashboardMobileState> emit,
  ) {
    emit(ChangeTab(state.tabItems, event.index));
  }
}
