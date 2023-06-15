import 'package:flight_booking/data/models/airport/airport_model.dart';
import 'package:flight_booking/domain/entities/flight/flight.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../airline/airline_model.dart';
part 'flight_model.g.dart';

@JsonSerializable(explicitToJson: true)
class FlightModel {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'arrivalAirport')
  final AirportModel arrivalAirport;
  @JsonKey(name: 'departureAirport')
  final AirportModel departureAirport;
  @JsonKey(name: 'arrivalTime')
  final DateTime timeStart;
  @JsonKey(name: 'departureTime')
  final DateTime timeEnd;
  @JsonKey(name: 'airline')
  final AirlineModel airline;

  FlightModel(
    this.id,
    this.arrivalAirport,
    this.departureAirport,
    this.timeStart,
    this.timeEnd,
    this.airline,
  );

  Map<String, dynamic> toJson() => _$FlightModelToJson(this);
  factory FlightModel.fromJson(Map<String, dynamic> json) =>
      _$FlightModelFromJson(json);

  Flight toEntity() => Flight(
        id: id,
        arrivalAirport: arrivalAirport.toEntity(),
        departureAirport: departureAirport.toEntity(),
        timeStart: timeStart.add(const Duration(hours: 7)),
        timeEnd: timeEnd.add(const Duration(hours: 7)),
        airline: airline.toEntity(),
      );
}
