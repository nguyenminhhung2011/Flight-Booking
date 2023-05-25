import 'dart:async';

import 'package:flight_booking/domain/entities/airport/airport.dart';
import 'package:flight_booking/domain/usecase/ticket_usecase.dart';
import 'package:flight_booking/presentations_mobile/ticket_mobile/bloc/tic_mobile_model_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/components/enum/tic_type_enum.dart';
import '../../../domain/entities/ticket/ticket.dart';

part 'tic_mobile_event.dart';
part 'tic_mobile_state.dart';

part 'tic_mobile_bloc.freezed.dart';

@injectable
class TicMobileBloc extends Bloc<TicMobileEvent, TicMobileState> {
  final TicketUsecase _ticketUsecase;
  TicMobileModelState get data => state.data;
  TicMobileBloc(this._ticketUsecase)
      : super(const TicMobileState.initial(
            data: TicMobileModelState(
          airportStart: null,
          airportFinish: null,
          typeTic: TicTypeEnum.businessClass,
          listTic: <Ticket>[],
        ))) {
    on<_Started>(_onStarted);
    on<_FetchTic>(_onFetchTic);
    on<_ChangeAirportStart>(_onChangeAirportStart);
    on<_ChangeAirportFinish>(_onChangeAirportFinish);
    on<_ChangeTypeTic>(_onChangeTicType);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<TicMobileState> emit,
  ) {}

  FutureOr<void> _onFetchTic(
    _FetchTic event,
    Emitter<TicMobileState> emit,
  ) async {
    try {
      emit(TicMobileState.loading(data: data));
      final result = await _ticketUsecase.fetchAllTickets();
      emit(TicMobileState.fetchTicSuccess(
        data: data.copyWith(listTic: result),
      ));
    } catch (e) {
      emit(TicMobileState.fetchTicFailed(data: data, message: e.toString()));
    }
  }

  FutureOr<void> _onChangeAirportStart(
    _ChangeAirportStart event,
    Emitter<TicMobileState> emit,
  ) {
    emit(state.copyWith(
      data: data.copyWith(airportStart: event.airport),
    ));
  }

  FutureOr<void> _onChangeAirportFinish(
    _ChangeAirportFinish event,
    Emitter<TicMobileState> emit,
  ) {
    emit(state.copyWith(
      data: data.copyWith(airportFinish: event.airport),
    ));
  }

  FutureOr<void> _onChangeTicType(
    _ChangeTypeTic event,
    Emitter<TicMobileState> emit,
  ) {
    emit(state.copyWith(
      data: data.copyWith(typeTic: event.type),
    ));
  }
}
