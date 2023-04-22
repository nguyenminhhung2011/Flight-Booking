import '../entities/ticket/ticket.dart';

abstract class ListTicRepository {
  Future<List<Ticket>> getListTicket();
}
