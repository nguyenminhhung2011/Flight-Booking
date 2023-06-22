import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/seat_selected/seat_selected.dart';
import 'book_ticket_model_state.dart';

part 'book_ticket_event.dart';
part 'book_ticket_state.dart';

part 'book_ticket_bloc.freezed.dart';

@injectable
class BTBloc extends Bloc<BTEvent, BTState> {
  final int _flightId;
  final List<SeatSelected> _seats;
  BTModelState get data => state.data;
  List<SeatSelected> get listSeat => _seats;
  int get flightId => _flightId;
  BTBloc(
    @factoryParam List<SeatSelected> seats,
    @factoryParam int flightId,
  )   : _seats = seats,
        _flightId = flightId,
        super(const BTState.initial(
          data: BTModelState(indexView: 0),
        )) {
    on<_Started>(_onStarted);
    on<_ChangeTicIndexView>(_onChangeTicIndexView);
  }
  FutureOr<void> _onStarted(
    _Started event,
    Emitter<BTState> state,
  ) {}

  FutureOr<void> _onChangeTicIndexView(
    _ChangeTicIndexView event,
    Emitter<BTState> emit,
  ) {
    emit(BTState.changeTicIndexViewSuccess(
        data: data.copyWith(
      indexView: event.index,
    )));
  }
}
