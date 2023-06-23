import 'package:flight_booking/domain/entities/ticket/ticket_information_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_information.freezed.dart';

@freezed
class TicketInformation with _$TicketInformation {
  const factory TicketInformation(
      {required TicketInformationId id,
      required int quantity,
      required double price,
      required int seatPosition,
      required String seatHeader}) = _TicketInformation;
}
