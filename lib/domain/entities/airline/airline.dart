import 'package:freezed_annotation/freezed_annotation.dart';
part 'airline.freezed.dart';
part 'airline.g.dart';

@freezed
class Airline with _$Airline {
  const factory Airline({
    required int id,
    required String airlineName,
  }) = _Airline;

  factory Airline.fromJson(Map<String, dynamic> json) =>
      _$AirlineFromJson(json);
}
