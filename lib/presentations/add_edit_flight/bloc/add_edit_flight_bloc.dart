import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flight_booking/presentations/add_edit_flight/bloc/add_edit_flight_model_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_edit_flight_event.dart';
part 'add_edit_flight_state.dart';
part 'add_edit_flight_bloc.freezed.dart';

@injectable
class AddEditFlightBloc extends Bloc<AddEditFlightEvent, AddEditFlightState> {
  AddEditFlightBloc()
      : super(
          const AddEditFlightState.initial(
            data: AddEditFlightModelState(),
          ),
        ) {
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<AddEditFlightState> emit) {}
}
