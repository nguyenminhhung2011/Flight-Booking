import 'package:flight_booking/data/models/ticket/ticket_information_model.dart';
import 'package:flight_booking/domain/entities/ticket/ticket.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_model.g.dart';

@JsonSerializable(explicitToJson: true)
class TicketModel {
  @JsonKey(name: 'id')
  late String id;
  @JsonKey(name: 'name')
  late String name;
  @JsonKey(name: 'gender')
  late String gender;
  @JsonKey(name: 'phoneNumber')
  late String phoneNumber;
  @JsonKey(name: 'emailAddress')
  late String emailAddress;
  @JsonKey(name: 'luggage')
  late int luggage;
  @JsonKey(name: 'seat')
  late int seat;
  @JsonKey(name: 'dateBorn')
  late DateTime dateBorn;
  @JsonKey(name: 'timeBought')
  late DateTime timeBought;
  @JsonKey(name: 'ticketInformation')
  late TicketInformationModel ticketInformation;

  TicketModel();

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
        dateBorn: dateBorn,
        timeBought: timeBought,
        seat: seat,
        ticketInformation: ticketInformation.toEntity,
      );
}
