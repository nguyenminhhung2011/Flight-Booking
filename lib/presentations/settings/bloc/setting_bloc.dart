import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flight_booking/presentations/settings/bloc/setting_model_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'setting_event.dart';
part 'setting_state.dart';

part 'setting_bloc.freezed.dart';

@injectable
class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc()
      : super(
          const SettingState.initial(
            data: SettingModelState(currentPage: 0),
          ),
        ) {
    on<_ChangePage>(_onChangePage);
    on<_Started>((event, emit) => null);
  }

  FutureOr<void> _onChangePage(_ChangePage event, Emitter<SettingState> emit) {
    emit(SettingState.switchTab(
        data: SettingModelState(currentPage: event.value)));
  }
}
