import '../entities/ticket/ticket.dart';

abstract class TicketRepository {
  Future<List<Ticket>?> getListTicket();
  Future<Ticket?> addNewTicket(Ticket ticket);

  Future<bool> deleteTicket(String id);

  Future<bool> editlight(Ticket newTicket);
}
