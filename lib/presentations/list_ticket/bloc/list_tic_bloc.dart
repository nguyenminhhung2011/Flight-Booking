import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'list_tic_model_state.dart';

part 'list_tic_event.dart';
part 'list_tic_state.dart';

part 'list_tic_bloc.freezed.dart';

@injectable
class ListTicBloc extends Bloc<ListTicEvent, ListTicState> {
  ListTicBloc()
      : super(
          const ListTicState.initial(
            data: ListTicModelState(
              tickets: [],
            ),
          ),
        ) {
    on<_SelectTic>(_onSelectTic);
    on<_Started>(_onStarted);
  }

  //get tics
  FutureOr<void> _onStarted(
    _Started event,
    Emitter<ListTicState> emit,
  ) {}

  FutureOr<void> _onSelectTic(
    _SelectTic event,
    Emitter<ListTicState> emit,
  ) {
    try {
      emit(
        ListTicState.selectListTicSuccess(
          data: state.data,
          ticId: event.ticID,
        ),
      );
    } catch (e) {
      emit(ListTicState.selectListTicFailed(
        data: state.data,
        message: e.toString(),
      ));
    }
  }
}
