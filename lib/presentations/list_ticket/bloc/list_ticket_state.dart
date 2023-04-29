part of 'list_ticket_bloc.dart';

@freezed
class ListTicketState with _$ListTicketState {
  const ListTicketState._();
  const factory ListTicketState.initial({
    required ListTicketModelState data,
  }) = _Initial;

  const factory ListTicketState.loading({
    required ListTicketModelState data,
  }) = _Loading;

  const factory ListTicketState.fetchTicketsSuccess({
    required ListTicketModelState data,
  }) = _FetchTicketsSuccess;

  const factory ListTicketState.fetchTicketsFailed({
    required ListTicketModelState data,
    required String message,
  }) = _FetchTicketsFailed;
}
