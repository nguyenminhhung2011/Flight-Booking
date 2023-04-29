import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flight_booking/core/components/enum/item_view_enum.dart';
import 'package:flight_booking/domain/usecase/list_ticket_usecase.dart';
import 'package:flight_booking/presentations/list_ticket/bloc/list_ticket_model_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'list_ticket_event.dart';
part 'list_ticket_state.dart';

part 'list_ticket_bloc.freezed.dart';

@injectable
class ListTicketBloc extends Bloc<ListTicketEvent, ListTicketState> {
  final ListTicketUsecase _listTicketUsecase;
  ListTicketBloc(this._listTicketUsecase)
      : super(
          const ListTicketState.initial(
            data: ListTicketModelState(
              tickets: [],
              itemView: ItemViewEnum.gridView,
            ),
          ),
        ) {
    on<_Started>(_onStarted);
    on<_FetchAllTicket>(_onFetchAllTickets);
    on<_ChangeTicketItemView>(_onChangeTicketItemView);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<ListTicketState> emit,
  ) {}

  FutureOr<void> _onFetchAllTickets(
    _FetchAllTicket event,
    Emitter<ListTicketState> emit,
  ) async {
    try {
      emit(ListTicketState.loading(data: state.data));
      final result = await _listTicketUsecase.fetchAllTickets();
      emit(ListTicketState.fetchTicketsSuccess(
        data: state.data.copyWith(tickets: result),
      ));
    } catch (e) {
      emit(ListTicketState.fetchTicketsFailed(
        data: state.data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onChangeTicketItemView(
    _ChangeTicketItemView event,
    Emitter<ListTicketState> emit,
  ) {
    emit(
      state.copyWith(data: state.data.copyWith(itemView: event.itemView)),
    );
  }
}
