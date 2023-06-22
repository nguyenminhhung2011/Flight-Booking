import 'package:flight_booking/data/models/ticket/ticket_information_model_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/ticket/ticket_information.dart';

part 'ticket_information_model.g.dart';

@JsonSerializable(explicitToJson: false)
class TicketInformationModel {
  @JsonKey(name: 'id')
  late TicketInformationModelId id;
  @JsonKey(name: 'quantity')
  late int quantity;
  @JsonKey(name: 'price')
  late double price;
  @JsonKey(name: 'seatPosition')
  late int seatPosition;
  @JsonKey(name: 'seatHeader')
  late String seatHeader;

  TicketInformationModel(
    this.id,
    this.quantity,
    this.price,
    this.seatPosition,
    this.seatHeader,
  );

  Map<String, dynamic> toJson() => _$TicketInformationModelToJson(this);
  factory TicketInformationModel.fromJson(Map<String, dynamic> json) =>
      _$TicketInformationModelFromJson(json);

  TicketInformation get toEntity => TicketInformation(
        id: id.toEntity,
        quantity: quantity,
        price: price,
        seatPosition: seatPosition,
        seatHeader: seatHeader,
      );
}
