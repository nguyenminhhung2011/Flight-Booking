import '../ticket/ticket.dart';
import '../ticket/ticket_information.dart';

class SeatSelected {
  final int seatIndex;
  final TicketInformation ticInformation;
  SeatSelected({
    required this.seatIndex,
    required this.ticInformation,
  });
}

class TicInformationLocal {
  final SeatSelected seat;
  final Ticket tic;
  TicInformationLocal({
    required this.seat,
    required this.tic,
  });
}
