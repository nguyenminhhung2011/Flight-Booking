import 'package:freezed_annotation/freezed_annotation.dart';

import '../flight/flight.dart';
part 'ticket_information.freezed.dart';

@freezed
class TicketInformation with _$TicketInformation {
  const factory TicketInformation({
    required int id,
    required Flight flight,
    required int quantity,
    required double price,
    required int ticketType,
  }) = _TicketInformation;
}
