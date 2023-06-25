import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/airport/airport.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/flight/flight.dart';
part 'payment_tab_model_state.freezed.dart';

@freezed
class PaymentTabModelState with _$PaymentTabModelState {
  const factory PaymentTabModelState({
    Flight? flight,
    Airport? airport,
    Customer? customer,
  }) = _PaymentTabModelState;
}
