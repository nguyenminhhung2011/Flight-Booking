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

  @JsonKey(name: 'price')
  late double price;

  @JsonKey(name: "type")
  late int type;

  @JsonKey(name: 'birthday')
  late int dateBorn;

  @JsonKey(name: 'timeBought')
  late int timeBought;

  TicketModel({
    required this.id,
    required this.name,
    required this.gender,
    required this.phoneNumber,
    required this.emailAddress,
    required this.luggage,
    required this.seat,
    required this.type,
    required this.dateBorn,
    required this.timeBought,
  });

  Map<String, dynamic> toJson() => _$TicketModelToJson(this);

  factory TicketModel.fromJson(Map<String, dynamic> json) =>
      _$TicketModelFromJson(json);

  Ticket get toEntity => Ticket(
        id: id,
        name: name,
        gender: gender,
        phoneNumber: phoneNumber,
        emailAddress: emailAddress,
        luggage: luggage,
        birthday: dateBorn,
        price: price,
        type: type,
        timeBought: timeBought,
        seat: seat,
      );
}
