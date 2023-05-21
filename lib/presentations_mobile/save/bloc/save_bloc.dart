import 'dart:async';

import 'package:flight_booking/presentations_mobile/save/bloc/save_model_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'save_event.dart';
part 'save_state.dart';

part 'save_bloc.freezed.dart';

@injectable
class SaveBloc extends Bloc<SaveEvent, SaveState> {
  SaveModelState get data => state.data;
  SaveBloc()
      : super(
          const SaveState.initial(data: SaveModelState(tab: 0)),
        ) {
    on<_Started>(_onStarted);
    on<_ChangeTab>(_onChangeTab);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<SaveState> emit,
  ) {}

  FutureOr<void> _onChangeTab(
    _ChangeTab event,
    Emitter<SaveState> emit,
  ) {
    emit(state.copyWith(data: data.copyWith(tab: event.newTab)));
  }
}
