import '../entities/ticket/ticket_information.dart';

abstract class TicketInformationRepository {
  Future<List<TicketInformation>?> getListTicketInformation();
  Future<TicketInformation?> addNewTicketInformation(
      TicketInformation ticketInformation);

  Future<bool> deleteTicketInformation(String id);

  Future<TicketInformation?> editTicketInformation(TicketInformation newTicket);
}
