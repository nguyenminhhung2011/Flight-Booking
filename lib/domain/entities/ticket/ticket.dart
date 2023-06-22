import 'package:freezed_annotation/freezed_annotation.dart';
part 'ticket.freezed.dart';

@freezed
class Ticket with _$Ticket {
  const factory Ticket({
    required String id,
    required String name,
    required String gender,
    required String phoneNumber,
    required String emailAddress,
    required String seat,
    required int type,
    required double luggage,
    required DateTime dateBorn,
    required DateTime timeBought,
  }) = _Ticket;
}
