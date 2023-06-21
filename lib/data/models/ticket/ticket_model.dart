import 'package:flight_booking/data/models/flight/flight_model.dart';
import 'package:flight_booking/data/models/payment/payment_model.dart';
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

  @JsonKey(name: 'phone_number')
  late String phoneNumber;

  @JsonKey(name: 'email_address')
  late String emailAddress;

  @JsonKey(name: 'luggage')
  late int luggage;

  @JsonKey(name: 'seat')
  late int seat;

  @JsonKey(name: "type")
  late int type;

  @JsonKey(name: 'dateBorn')
  late DateTime dateBorn;

  @JsonKey(name: 'time_bought')
  late DateTime timeBought;

  @JsonKey(name: 'ticket_information')
  late TicketInformationModel ticketInformation;

  @JsonKey(name: 'flight')
  late FlightModel flight;

  @JsonKey(name: "payment")
  late PaymentModel payment;

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
        type: type,
        timeBought: timeBought,
        seat: seat,
        ticketInformation: ticketInformation.toEntity,
        flight: flight.toEntity(),
        payment: payment.toEntity,
      );
}
