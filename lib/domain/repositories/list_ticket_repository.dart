import 'package:injectable/injectable.dart';

import '../entities/ticket/ticket.dart';

abstract class ListTicketRepository {
  Future<List<Ticket>> getListTicket();
}
