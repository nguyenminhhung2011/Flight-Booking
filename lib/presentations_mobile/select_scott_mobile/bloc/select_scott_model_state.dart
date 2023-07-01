import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/flight/flight.dart';
import '../../../domain/entities/seat_selected/seat_selected.dart';
import '../../../domain/entities/ticket/ticket.dart';
import '../../../domain/entities/ticket/ticket_information.dart';

part 'select_scott_model_state.freezed.dart';

@freezed
class SelectScottModelState with _$SelectScottModelState {
  const factory SelectScottModelState({
    Customer? customerSelected,
    Flight? flight,
    SeatSelected? currentSeat,
    required int tab,
    required int selectCustomer,
    required List<SeatSelected> chairsSelected,
    required List<TicketInformation> ticInformation,
    required List<Ticket> tics,
    required List<Ticket> redTics,
  }) = _SelectScottModelState;
}
