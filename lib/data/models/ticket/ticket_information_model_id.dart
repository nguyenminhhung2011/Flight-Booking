import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/ticket/ticket_information_id.dart';
import '../flight/flight_model.dart';
part 'ticket_information_model_id.g.dart';

@JsonSerializable(explicitToJson: true)
class TicketInformationModelId {
  @JsonKey(name: 'ticketType')
  late int ticketType;
  @JsonKey(name: 'flight')
  late FlightModel flight;

  TicketInformationModelId(
    this.ticketType,
    this.flight,
  );

  Map<String, dynamic> toJson() => _$TicketInformationModelIdToJson(this);
  factory TicketInformationModelId.fromJson(Map<String, dynamic> json) =>
      _$TicketInformationModelIdFromJson(json);

  TicketInformationId get toEntity => TicketInformationId(
        ticketType: ticketType,
        flight: flight.toEntity(),
      );
}
