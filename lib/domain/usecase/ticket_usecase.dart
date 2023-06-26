import 'package:flight_booking/domain/entities/ticket/ticket.dart';
import 'package:flight_booking/domain/repositories/ticket_repository.dart';
import 'package:injectable/injectable.dart';

import '../entities/payment/payment.dart';

@injectable
class TicketUsecase {
  final TicketRepository _listTicketRepository;
  TicketUsecase(this._listTicketRepository);
  Future<List<Ticket>> fetchAllTickets() async {
    return await _listTicketRepository.getListTicket() ?? [];
  }

  Future<Payment?> bookTicket({
    required List<Ticket> tics,
    required int customerId,
    required int flightId,
    required String paymentType,
  }) async =>
      await _listTicketRepository.bookTicket(
        tics: tics,
        customerId: customerId,
        flightId: flightId,
        paymentType: paymentType,
      );
}
