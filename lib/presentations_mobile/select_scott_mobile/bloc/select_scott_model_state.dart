import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/customer/customer.dart';

part 'select_scott_model_state.freezed.dart';

@freezed
class SelectScottModelState with _$SelectScottModelState {
  const factory SelectScottModelState({
    required int tab,
    required List<Customer> listCustomer,
    required int selectCustomer,
  }) = _SelectScottModelState;
}
