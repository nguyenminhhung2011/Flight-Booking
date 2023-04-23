import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flight_booking/presentations/dashboard/bloc/dashboard_model_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardModelState get data => state.data;
  DashboardBloc()
      : super(
          const DashboardState.initial(
            data: DashboardModelState(
              viewEnum: 0,
              isDarkTheme: false,
              secondBodyDis: true,
            ),
          ),
        ) {
    on<_ChangeTheme>(_onChangeTheme);
    on<_ChangeView>(_onChangeView);
  }

  FutureOr<void> _onChangeTheme(
    _ChangeTheme event,
    Emitter<DashboardState> emit,
  ) {
    emit(
      state.copyWith(
        data: state.data.copyWith(isDarkTheme: !data.isDarkTheme),
      ),
    );
  }

  FutureOr<void> _onChangeView(
    _ChangeView event,
    Emitter<DashboardState> emit,
  ) {
    emit(state.copyWith(
      data: state.data.copyWith(
        viewEnum: event.view,
        secondBodyDis: event.secondBodyDis,
      ),
    ));
  }
}
