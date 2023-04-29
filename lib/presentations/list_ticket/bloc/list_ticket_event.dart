part of 'list_ticket_bloc.dart';

@freezed
class ListTicketEvent with _$ListTicketEvent {
  const factory ListTicketEvent.started() = _Started;
  const factory ListTicketEvent.changeTicketItemView(ItemViewEnum itemView) =
      _ChangeTicketItemView;
  const factory ListTicketEvent.fetchAllTicket() = _FetchAllTicket;
}
