import 'package:flight_booking/domain/entities/ticket/ticket.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/entities/Flight/Flight.dart';

@injectable
class RestApi {
  Future<List<Ticket>> getListTicket() async {
    return [];
  }

  Future<List<Flight>> getListFlight() async {
    return [];
  }
}
