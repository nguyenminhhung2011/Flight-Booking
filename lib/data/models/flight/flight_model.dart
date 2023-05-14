import 'package:flight_booking/domain/entities/flight/flight.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'flight_model.g.dart';

@JsonSerializable(explicitToJson: true)
class FlightModel {
  @JsonKey(name: 'Id')
  final String id;
  @JsonKey(name: 'IdStartAirport')
  final String idStartAirport;
  @JsonKey(name: 'IdComeAirport')
  final String idComeAirport;
  @JsonKey(name: 'TimeStart')
  final int timeStart;
  @JsonKey(name: 'TimeEnd')
  final int timeEnd;
  @JsonKey(name: 'NoCustomer')
  final int noCustomer;

  FlightModel(
    this.id,
    this.idStartAirport,
    this.idComeAirport,
    this.timeStart,
    this.timeEnd,
    this.noCustomer,
  );

  Map<String, dynamic> toJson() => _$FlightModelToJson(this);
  factory FlightModel.fromJson(Map<String, dynamic> json) =>
      _$FlightModelFromJson(json);

  Flight toEntity() => Flight(
        id: id,
        idStartAirport: idStartAirport,
        idComeAirport: idComeAirport,
        timeStart: DateTime.fromMillisecondsSinceEpoch(timeStart),
        timeEnd: DateTime.fromMillisecondsSinceEpoch(timeEnd),
        noCustomer: noCustomer,
      );
}
