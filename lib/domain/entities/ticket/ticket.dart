import 'package:freezed_annotation/freezed_annotation.dart';
part 'ticket.freezed.dart';

@freezed
class Ticket with _$Ticket {
  const factory Ticket({
    required String id,
    required String idCustomer,
    required String idFlight,
    required DateTime timeBought,
    required double price,
  }) = _Ticket;
}
