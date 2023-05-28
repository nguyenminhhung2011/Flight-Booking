import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'flight_history_detail_model_state.dart';

part 'flight_history_detail_event.dart';
part 'flight_history_detail_state.dart';

part 'flight_history_detail_bloc.freezed.dart';

@injectable
class FlightHistoryDetailBloc
    extends Bloc<FlightHistoryDetailEvent, FlightHistoryDetailState> {
  final String _id;
  FlightHistoryDetailModelState get data => state.data;
  FlightHistoryDetailBloc(
    @factoryParam String id,
  )   : _id = id,
        super(
          const FlightHistoryDetailState.initial(
            data: FlightHistoryDetailModelState(customerViewIndex: 0),
          ),
        ) {
    on<_Started>(_onStarted);
    on<_ChangeCustomerView>(_onChangeCustomerView);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<FlightHistoryDetailState> emit,
  ) {}

  FutureOr<void> _onChangeCustomerView(
    _ChangeCustomerView event,
    Emitter<FlightHistoryDetailState> emit,
  ) {
    emit(state.copyWith(data: data.copyWith(customerViewIndex: event.index)));
  }
}
