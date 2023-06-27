import 'package:flight_booking/core/components/enum/item_view_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/flight/flight.dart';
import '../../../domain/entities/seat_selected/seat_selected.dart';
import '../../../domain/entities/ticket/ticket.dart';
import '../../../domain/entities/ticket/ticket_information.dart';

part 'flight_detail_model_state.freezed.dart';

@freezed
class FlightDetailModelState with _$FlightDetailModelState {
  const factory FlightDetailModelState({
    Flight? flight,
    Customer? customerSelected,
    Ticket? ticSelected,
    required double animation,
    required bool showMoreInfor,
    required ItemViewEnum itemView,
    required List<SeatSelected> chairsSelected,
    required Map<int, TicketInformation> ticInformation,
    required List<Ticket> tics,
  }) = _FlightDetailModelState;
}
