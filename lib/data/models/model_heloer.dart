import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/data/models/airport/airport_model.dart';
import 'package:flight_booking/data/models/ticket/ticket_information_model.dart';
import 'package:flight_booking/data/models/ticket/ticket_information_model_id.dart';
import 'package:flight_booking/domain/entities/airport/airport.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/airline/airline.dart';
import '../../domain/entities/customer/customer.dart';
import '../../domain/entities/flight/flight.dart';
import '../../domain/entities/ticket/ticket_information.dart';
import 'airline/airline_model.dart';
import 'customer/customer_model.dart';
import 'flight/flight_model.dart';

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
        identifyNum: customer.identifyNum,
        phoneNumber: customer.phoneNumber,
        email: customer.email,
        gender: customer.gender,
        birthday: customer.birthday.millisecondsSinceEpoch,
      );

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

  static Customer defaultCustomer = Customer(
    id: -1,
    name: 'Was deleted',
    phoneNumber: '09328282448',
    email: 'hung@gmail.com',
    identifyNum: '928494',
    gender: 'Female',
    birthday: DateTime.now(),
  );
}
