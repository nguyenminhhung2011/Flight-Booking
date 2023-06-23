import 'package:flight_booking/domain/entities/ticket/ticket.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_model.g.dart';

@JsonSerializable(explicitToJson: false)
class TicketModel {
  @JsonKey(name: 'id')
  late int id;

  @JsonKey(name: 'name')
  late String name;

  @JsonKey(name: 'gender')
  late String gender;

  @JsonKey(name: 'phoneNumber')
  late String phoneNumber;

  @JsonKey(name: 'emailAddress')
  late String emailAddress;

  @JsonKey(name: 'luggage')
  late double luggage;

  @JsonKey(name: 'seat')
  late int seat;

  @JsonKey(name: "type")
  late int type;

  @JsonKey(name: 'birthday')
  late int dateBorn;

  @JsonKey(name: 'timeBought')
  late int timeBought;

  TicketModel();

  Map<String, dynamic> toJson() => _$TicketModelToJson(this);

  factory TicketModel.fromJson(Map<String, dynamic> json) =>
      _$TicketModelFromJson(json);

  Ticket get toEntity => Ticket(
        id: id.toString(),
        name: name,
        gender: gender,
        phoneNumber: phoneNumber,
        emailAddress: emailAddress,
        luggage: luggage,
        dateBorn: DateTime.fromMillisecondsSinceEpoch(dateBorn),
        type: type,
        timeBought: DateTime.fromMillisecondsSinceEpoch(timeBought),
        seat: seat.toString(),
      );
}
