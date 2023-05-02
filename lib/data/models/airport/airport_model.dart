import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/airport/airport.dart';
part 'airport_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AirportModel {
  @JsonKey(name: 'Id')
  final String id;
  @JsonKey(name: 'Name')
  final String name;
  @JsonKey(name: 'Image')
  final String image;
  AirportModel(
    this.id,
    this.name,
    this.image,
  );

  Map<String, dynamic> toJson() => _$AirportModelToJson(this);
  factory AirportModel.fromJson(Map<String, dynamic> json) =>
      _$AirportModelFromJson(json);

  Airport toEntity() => Airport(id: id, name: name, image: image);
}
