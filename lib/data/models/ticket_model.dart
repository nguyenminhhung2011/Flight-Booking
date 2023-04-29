class TicketModel {
  final String id;
  final String idFlights;
  final String idCustomer;
  final DateTime timeBought;
  final double price;
  TicketModel({
    required this.id,
    required this.idFlights,
    required this.idCustomer,
    required this.timeBought,
    required this.price,
  });
}
