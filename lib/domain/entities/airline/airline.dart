import 'package:freezed_annotation/freezed_annotation.dart';
part 'airline.freezed.dart';

@freezed
class Airline with _$Airline {
  const factory Airline({
    required int id,
    required String airlineName,
  }) = _Airline;
}
