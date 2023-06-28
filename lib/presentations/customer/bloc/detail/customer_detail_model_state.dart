import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/customer/customer.dart';

part 'customer_detail_model_state.freezed.dart';

@freezed
class CustomerDetailModelState with _$CustomerDetailModelState {
  const factory CustomerDetailModelState({
    Customer? customer,
  }) = _CustomerDetailModelState;
}
