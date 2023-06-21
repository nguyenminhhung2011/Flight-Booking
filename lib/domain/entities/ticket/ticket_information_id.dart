import 'package:freezed_annotation/freezed_annotation.dart';

import '../flight/flight.dart';
part 'ticket_information_id.freezed.dart';

@freezed
class TicketInformationId with _$TicketInformationId {
  const factory TicketInformationId({
    required int ticketType,
    required Flight flight,
  }) = _TicketInformationId;
}
