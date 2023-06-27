import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/data/models/airport/airport_model.dart';
import 'package:flight_booking/data/models/credit_card/credit_card_model.dart';
import 'package:flight_booking/data/models/ticket/ticket_information_model.dart';
import 'package:flight_booking/data/models/ticket/ticket_information_model_id.dart';
import 'package:flight_booking/data/models/ticket/ticket_model.dart';
import 'package:flight_booking/domain/entities/airport/airport.dart';
import 'package:flight_booking/domain/entities/payment/payment.dart';
import 'package:flight_booking/domain/entities/ticket/ticket.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/airline/airline.dart';
import '../../domain/entities/credit_card/credit_card.dart';
import '../../domain/entities/customer/customer.dart';
import '../../domain/entities/flight/flight.dart';
import '../../domain/entities/ticket/ticket_information.dart';
import 'airline/airline_model.dart';
import 'customer/customer_model.dart';
import 'flight/flight_model.dart';
import 'payment/payment_model.dart';

class ModelHelper {
  static AirportModel airportConvert(Airport airport) => AirportModel(
        airport.id,
        airport.name,
        airport.image,
        airport.location,
        airport.description,
        timeOfDayToInt(airport.openTime),
        timeOfDayToInt(airport.closeTime),
      );
  static TicketModel ticConvert(Ticket tic) => TicketModel(
        price: tic.price,
        id: tic.id,
        name: tic.name,
        gender: tic.gender,
        phoneNumber: tic.phoneNumber,
        emailAddress: tic.emailAddress,
        luggage: tic.luggage,
        seat: tic.seat,
        type: tic.type,
        dateBorn: tic.birthday,
        timeBought: tic.timeBought,
      );

  static FlightModel flightConvert(Flight flight) => FlightModel(
        flight.id,
        airportConvert(flight.arrivalAirport),
        airportConvert(flight.departureAirport),
        flight.timeStart.subtract(const Duration(hours: 7)),
        flight.timeEnd.subtract(const Duration(hours: 7)),
        airlineConvert(flight.airline),
      );

  static AirlineModel airlineConvert(Airline airline) => AirlineModel(
        airline.id,
        airline.airlineName,
      );

  static TicketInformationModel ticInformationCovert(
          TicketInformation ticketInformation) =>
      TicketInformationModel(
        TicketInformationModelId(
          ticketInformation.id.ticketType,
          flightConvert(ticketInformation.id.flight),
        ),
        ticketInformation.quantity,
        ticketInformation.price,
        ticketInformation.seatPosition,
        ticketInformation.seatHeader,
      );

  static CustomerModel customerConvert(Customer customer) => CustomerModel(
        id: customer.id,
        name: customer.name,
        email: customer.email,
        gender: customer.gender,
        creditCard: creditCardConvert(customer.creditCard),
        identifyNum: customer.identifyNum,
        phoneNumber: customer.phone,
        birthday: customer.birthday,
      );

  static CreditCardModel creditCardConvert(CreditCard creditCard) {
    return CreditCardModel(
      id: creditCard.id,
      creditNum: creditCard.creditNum,
      expiredDate: creditCard.expiredDate,
      cvc: creditCard.cvc,
      nameCard: creditCard.nameCard,
    );
  }

  static Airport defaultAirport = Airport(
      id: -1,
      name: 'Was deleted',
      image: 'Was deleted',
      location: 'Was deleted',
      description: 'Was deleted',
      openTime: TimeOfDay.now(),
      closeTime: TimeOfDay.now());

  static Flight defaultFlight = Flight(
    id: -1,
    arrivalAirport: defaultAirport,
    departureAirport: defaultAirport,
    timeStart: DateTime.now(),
    timeEnd: DateTime.now(),
    airline: const Airline(id: -1, airlineName: 'Was deleted'),
  );

  static Customer defaultCustomer = const Customer(
    id: -1,
    name: 'Was deleted',
    phone: '09328282448',
    email: 'hung@gmail.com',
    identifyNum: '928494',
    gender: 'Female',
    birthday: 0,
  );

  static PaymentModel paymentConverter(Payment payment) {
    return PaymentModel(
      id: payment.id,
      createDate: payment.createdDate,
      total: payment.total,
      paymentStatus: payment.paymentStatus.name.toUpperCase(),
      paymentType: payment.paymentType.name.toUpperCase(),
      customer: customerConvert(payment.customer ?? defaultCustomer),
      tickets: payment.ticket.map((e) => ticConvert(e)).toList(),
      flight: null,
    );
  }
}
