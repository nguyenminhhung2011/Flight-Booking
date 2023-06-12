import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/airport/airport.dart';
part 'airport_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AirportModel {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'airportName')
  final String name;
  @JsonKey(name: 'imageUrl')
  final String image;
  @JsonKey(name: 'location')
  final String location;
  @JsonKey(name: 'description', includeIfNull: true)
  final String? description;
  @JsonKey(name: 'openTime', includeIfNull: true)
  final int? openTime;
  @JsonKey(name: 'closeTime', includeIfNull: true)
  final int? closeTime;

  AirportModel(
    this.id,
    this.name,
    this.image,
    this.location,
    this.description,
    this.openTime,
    this.closeTime,
  );

  Map<String, dynamic> toJson() => _$AirportModelToJson(this);
  factory AirportModel.fromJson(Map<String, dynamic> json) =>
      _$AirportModelFromJson(json);

  Airport toEntity() => Airport(
        id: id,
        name: name,
        image: image,
        location: location,
        description: description ?? '',
        openTime: intToTimeLeft(openTime),
        closeTime: intToTimeLeft(closeTime),
      );
}
