import 'package:flight_booking/domain/entities/ticket/ticket.dart';
import 'package:flight_booking/domain/repositories/list_ticket_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ListTicketUsecase {
  final ListTicketRepository _listTicketRepository;
  ListTicketUsecase(this._listTicketRepository);
  Future<List<Ticket>> fetchAllTickets() async {
    return await _listTicketRepository.getListTicket();
  }
}
