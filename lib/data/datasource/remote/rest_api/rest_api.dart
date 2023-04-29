import 'package:flight_booking/data/models/flight_model.dart';
import 'package:flight_booking/domain/entities/ticket/ticket.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/entities/flight/flight.dart';

@injectable
class RestApi {
  Future<List<Ticket>> getListTicket() async {
    return [];
  }

  Future<List<FlightModel>> getListFlight() async {
    return [];
  }

  Future<bool> addNewFlight(Flight flight) async {
    return false;
  }

  Future<bool> deleteFlight(String id) async {
    return false;
  }

  Future<bool> editlight(Flight newFlight) async {
    return false;
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
