import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flight_booking/data/datasource/remote/overview_api.dart';
import 'package:flight_booking/presentations/dashboard/bloc/dashboard_model_state.dart';
import 'package:flight_booking/presentations/dashboard/bloc/overview_model_state_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final OverviewApi overviewApi;
  DashboardModelState get data => state.data;
  DashboardBloc(this.overviewApi)
      : super(
          DashboardState.initial(
            data: DashboardModelState(
              viewEnum: 0,
              isDarkTheme: false,
              secondBodyDis: false,
              overviewData: OverviewModelStateData(),
            ),
          ),
        ) {
    on<_ChangeTheme>(_onChangeTheme);
    on<_ChangeView>(_onChangeView);
    on<_FetchOverviewData>(_onFetchOverviewData);
  }

  Future<void> _onFetchOverviewData(
      _FetchOverviewData event, Emitter<DashboardState> emit) async {
    try {
      emit(_Loading(data: state.data));
      final response = await overviewApi.fetchOverviewData(
        event.from.millisecondsSinceEpoch,
        event.to.millisecondsSinceEpoch,
      );

      if (response.response.statusCode == 200) {
        emit(_FetchOverviewDataSuccess(
            data: state.data.copyWith(overviewData: response.data)));
      }

      throw Exception(response.response.statusMessage);
    } catch (e) {
      emit(_error(data: state.data, message: e.toString()));
    }
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
