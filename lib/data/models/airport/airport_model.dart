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

  AirportModel(this.id, this.name, this.image, this.location);

  Map<String, dynamic> toJson() => _$AirportModelToJson(this);
  factory AirportModel.fromJson(Map<String, dynamic> json) =>
      _$AirportModelFromJson(json);

  Airport toEntity() => Airport(
        id: id,
        name: name,
        image: image,
        location: location,
      );
}
