import 'package:flight_booking/domain/entities/flight/flight.dart';
import 'package:flight_booking/domain/entities/payment/payment.dart';
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
    required int type,
    required int luggage,
    required DateTime dateBorn,
    required DateTime timeBought,
    required TicketInformation ticketInformation,
    required Flight flight,
    required Payment payment,

  }) = _Ticket;
}
