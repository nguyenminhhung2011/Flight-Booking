import 'package:flight_booking/domain/entities/ticket/ticket_information.dart';

import '../../domain/repositories/ticket_information_repository.dart';

class TicketInformationRepositoryImpl extends TicketInformationRepository {
  @override
  Future<TicketInformation?> addNewTicketInformation(
    TicketInformation ticketInformation,
  ) {
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteTicketInformation(String id) {
    throw UnimplementedError();
  }

  @override
  Future<TicketInformation?> editTicketInformation(
    TicketInformation newTicket,
  ) {
    throw UnimplementedError();
  }

  @override
  Future<List<TicketInformation>?> getListTicketInformation() {
    throw UnimplementedError();
  }
}
