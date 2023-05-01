import 'package:flight_booking/domain/entities/ticket/ticket.dart';

class TicketModel {
  late String id;
  late String idFlight;
  late String idCustomer;
  late int timeBought;
  late double price;
  TicketModel();

  Ticket get toEntity => Ticket(
        id: id,
        idCustomer: idCustomer,
        idFlight: idFlight,
        timeBought: DateTime.fromMillisecondsSinceEpoch(timeBought),
        price: price,
      );
}
