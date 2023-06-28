import 'package:flight_booking/domain/entities/airport/stop_airport.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'airport_model.dart';

part 'stop_airport_model.g.dart';

@JsonSerializable(explicitToJson: true)
class StopAirportModel {
  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'airport')
  final AirportModel airport;

  @JsonKey(name: 'stopTime')
  final int stopTime;

  StopAirportModel({
    required this.airport,
    required this.description,
    required this.stopTime,
  });
  Map<String, dynamic> toJson() => _$StopAirportModelToJson(this);
  factory StopAirportModel.fromJson(Map<String, dynamic> json) =>
      _$StopAirportModelFromJson(json);
  StopAirport get toEntity => StopAirport(
        airport: airport.toEntity(),
        stopTime: DateTime.fromMillisecondsSinceEpoch(stopTime),
        description: description,
      );
}
