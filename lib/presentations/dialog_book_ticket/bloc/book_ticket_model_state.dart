import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/flight/flight.dart';
import '../../../domain/entities/seat_selected/seat_selected.dart';
import '../../../domain/entities/ticket/ticket.dart';
import '../../../domain/entities/ticket/ticket_information.dart';

part 'book_ticket_model_state.freezed.dart';

@freezed
class BTModelState with _$BTModelState {
  const factory BTModelState({
    Customer? customerSelected,
    Flight? flight,
    SeatSelected? currentSeat,
    required int indexView,
    required List<Customer> customers,
    required List<SeatSelected> chairsSelected,
    required List<TicketInformation> ticInformation,
    required List<Ticket> tics,
  }) = _BTModelState;
}
