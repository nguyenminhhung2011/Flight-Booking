import 'package:flight_booking/domain/entities/customer/customer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'ticket.freezed.dart';
part 'ticket.g.dart';

@freezed
class Ticket with _$Ticket {
  const factory Ticket({
    required int id,
    required String name,
    required String gender,
    required String phoneNumber,
    required String emailAddress,
    required int seat,
    required int type,
    required double luggage,
    required int birthday,
    required int timeBought,
    required double price,
  }) = _Ticket;

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);
}
