import 'package:flight_booking/data/models/airport/airport_model.dart';
import 'package:flight_booking/data/models/model_helper.dart';
import 'package:flight_booking/domain/entities/airport/stop_airport.dart';
import 'package:flight_booking/domain/entities/flight/flight.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../airline/airline_model.dart';
import '../airport/stop_airport_model.dart';
part 'flight_model.g.dart';

@JsonSerializable(explicitToJson: false)
class FlightModel {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'arrivalAirport')
  final AirportModel? arrivalAirport;
  @JsonKey(name: 'departureAirport')
  final AirportModel? departureAirport;
  @JsonKey(name: 'departureTime')
  final int timeStart;
  @JsonKey(name: 'arrivalTime')
  final int timeEnd;
  @JsonKey(name: 'airline')
  final AirlineModel airline;
  @JsonKey(name: 'stopAirports')
  final List<StopAirportModel>? stopAirports;

  FlightModel(
    this.id,
    this.arrivalAirport,
    this.departureAirport,
    this.timeStart,
    this.timeEnd,
    this.airline,
    this.stopAirports,
  );

  Map<String, dynamic> toJson() => _$FlightModelToJson(this);
  factory FlightModel.fromJson(Map<String, dynamic> json) =>
      _$FlightModelFromJson(json);

  Flight toEntity() => Flight(
        id: id,
        arrivalAirport:
            arrivalAirport?.toEntity() ?? ModelHelper.defaultAirport,
        departureAirport:
            departureAirport?.toEntity() ?? ModelHelper.defaultAirport,
        timeStart: DateTime.fromMillisecondsSinceEpoch(timeStart)
            .add(const Duration(hours: 7)),
        timeEnd: DateTime.fromMillisecondsSinceEpoch(timeEnd)
            .add(const Duration(hours: 7)),
        airline: airline.toEntity(),
        stopAirports:
            stopAirports?.map((e) => e.toEntity).toList() ?? <StopAirport>[],
      );
}
