import 'package:freezed_annotation/freezed_annotation.dart';
part 'flight.freezed.dart';

@freezed
class Flight with _$Flight {
  const factory Flight({
    required String id,
    required String idStartAirport,
    required String idComeAirport,
    required DateTime timeStart,
    required DateTime timeEnd,
    required int noCustomer,
  }) = _Flight;
}
