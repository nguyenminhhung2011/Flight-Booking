import 'package:flight_booking/domain/entities/ticket/ticket.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'ticket_model.g.dart';

@JsonSerializable(explicitToJson: true)
class TicketModel {
  @JsonKey(name: 'Id')
  late String id;
  @JsonKey(name: 'IdFlight')
  late String idFlight;
  @JsonKey(name: 'IdCustomer')
  late String idCustomer;
  @JsonKey(name: 'TimeBought')
  late int timeBought;
  @JsonKey(name: 'Price')
  late double price;

  TicketModel();

  Map<String, dynamic> toJson() => _$TicketModelToJson(this);
  factory TicketModel.fromJson(Map<String, dynamic> json) =>
      _$TicketModelFromJson(json);

  Ticket get toEntity => Ticket(
        id: id,
        idCustomer: idCustomer,
        idFlight: idFlight,
        timeBought: DateTime.fromMillisecondsSinceEpoch(timeBought),
        price: price,
      );
}
