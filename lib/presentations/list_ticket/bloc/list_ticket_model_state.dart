import 'package:flight_booking/core/components/enum/item_view_enum.dart';
import 'package:flight_booking/core/components/enum/tic_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/ticket/ticket.dart';
part 'list_ticket_model_state.freezed.dart';

@freezed
class ListTicketModelState with _$ListTicketModelState {
  const factory ListTicketModelState({
    required List<Ticket> tickets,
    required ItemViewEnum itemView,
  }) = _ListTicketModelState;
}
