import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/ticket/ticket_information.dart';
import '../flight/flight_model.dart';

part 'ticket_information_model.g.dart';

@JsonSerializable(explicitToJson: true)
class TicketInformationModel {
  @JsonKey(name: 'id')
  late int id;
  @JsonKey(name: 'flight')
  late FlightModel flight;
  @JsonKey(name: 'quantity')
  late int quantity;
  @JsonKey(name: 'price')
  late double price;
  @JsonKey(name: 'ticketType')
  late int ticketType;

  TicketInformationModel();

  Map<String, dynamic> toJson() => _$TicketInformationModelToJson(this);
  factory TicketInformationModel.fromJson(Map<String, dynamic> json) =>
      _$TicketInformationModelFromJson(json);

  TicketInformation get toEntity => TicketInformation(
        id: id,
        flight: flight.toEntity(),
        quantity: quantity,
        price: price,
        ticketType: ticketType,
      );
}
