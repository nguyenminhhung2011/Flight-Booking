import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/airline/airline.dart';
part 'airline_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AirlineModel {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'airlineName')
  final String airlineName;

  AirlineModel(
    this.id,
    this.airlineName,
  );

  Map<String, dynamic> toJson() => _$AirlineModelToJson(this);
  factory AirlineModel.fromJson(Map<String, dynamic> json) =>
      _$AirlineModelFromJson(json);

  Airline toEntity() => Airline(
        id: id,
        airlineName: airlineName,
      );
}
