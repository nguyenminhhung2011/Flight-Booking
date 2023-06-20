import 'package:flight_booking/domain/entities/ticket/ticket_information.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'ticket.freezed.dart';

@freezed
class Ticket with _$Ticket {
  const factory Ticket({
    required String id,
    required String name,
    required String gender,
    required String phoneNumber,
    required String emailAddress,
    required int seat,
    required int luggage,
    required DateTime dateBorn,
    required DateTime timeBought,
    required TicketInformation ticketInformation,
  }) = _Ticket;
}
