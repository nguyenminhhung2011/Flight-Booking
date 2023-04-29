import 'package:flight_booking/domain/entities/ticket/ticket.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/entities/flight/flight.dart';

@injectable
class RestApi {
  Future<List<Ticket>> getListTicket() async {
    return [];
  }

  Future<List<Flight>> getListFlight() async {
    return [];
  }

  Future<bool> addNewTicket(Ticket tic) async {
    return false;
  }

  Future<bool> deleteTicket(String ticketId) async {
    return false;
  }

  Future<bool> editTicket(Ticket newTic) async {
    return false;
  }
}
