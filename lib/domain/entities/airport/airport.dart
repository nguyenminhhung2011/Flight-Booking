import 'package:freezed_annotation/freezed_annotation.dart';
part 'airport.freezed.dart';

@freezed
class Airport with _$Airport {
  const factory Airport({
    required String id,
    required String name,
    required String image,
    required String location,
  }) = _Airport;
}
