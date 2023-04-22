import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../list_flight/bloc/list_flight_bloc.dart';
import 'flight_detail_model_state.dart';

part 'flight_detail_event.dart';
part 'flight_detail_state.dart';

part 'flight_detail_bloc.freezed.dart';

@injectable
class FlightDetailBloc extends Bloc<FlightDetailEvent, FlightDetailState> {
  FlightDetailBloc()
      : super(
          const FlightDetailState.initial(
            data: FlightDetailModelState(
              animation: 1000.0,
            ),
          ),
        ) {
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<FlightDetailState> emit,
  ) {
    emit(FlightDetailState.initial(data: state.data.copyWith(animation: 0)));
  }
}
