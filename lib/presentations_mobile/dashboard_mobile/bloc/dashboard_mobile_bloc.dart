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
    extends Bloc<DashBoarMobileEvent, DashboardMobileState> {
  DashboardMobileBloc()
      : super(
          DashboardInitial([
            ...dashboardItem.map((e) => TabItem(
                  screen: e['screen'],
                  route: e['tit'],
                  icon: e['icon'],
                  index: e['index'],
                ))
          ], 0, true),
        ) {
    on<ChangeTabEvent>(_onChangeTab);
    on<ChangeShowMenuEvent>(_onChangeShoeMenu);
  }

  FutureOr<void> _onChangeTab(
    ChangeTabEvent event,
    Emitter<DashboardMobileState> emit,
  ) {
    emit(ChangeTab(state.tabItems, event.index, state.isShowMenu));
  }

  FutureOr<void> _onChangeShoeMenu(
    ChangeShowMenuEvent event,
    Emitter<DashboardMobileState> emit,
  ) {
    emit(ChangeShowMenu(state.tabItems, state.index, !state.isShowMenu));
  }
}
