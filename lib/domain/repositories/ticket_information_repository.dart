import '../entities/ticket/ticket_information.dart';

abstract class TicketInformationRepository {
  Future<List<TicketInformation>?> getListTicketInformation();
  Future<List<TicketInformation>?> getListTicketInformationByFlightId(int id);

  Future<bool> addGroupTicketInformation(
    List<TicketInformation> groupData,
    int flight,
  );

  Future<bool> deleteTicketInformation(String id);

  Future<TicketInformation?> editTicketInformation(TicketInformation newTicket);
}
