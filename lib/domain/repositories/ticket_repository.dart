import '../entities/payment/payment.dart';
import '../entities/ticket/ticket.dart';

abstract class TicketRepository {
  Future<List<Ticket>?> getListTicket();
  Future<Ticket?> addNewTicket(Ticket ticket);

  Future<bool> deleteTicket(String id);

  Future<Ticket?> editTicket(Ticket newTicket);
  Future<Payment?> bookTicket({
    required List<Ticket> tics,
    required int customerId,
    required int flightId,
    required String paymentType,
  });
}
