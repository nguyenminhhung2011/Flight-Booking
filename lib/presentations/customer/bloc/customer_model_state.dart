import 'package:flight_booking/domain/entities/customer/customer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "customer_model_state.freezed.dart";

@freezed
class CustomerModelState with _$CustomerModelState {
  const factory CustomerModelState({required List<Customer> customers}) =
      _CustomerModelState;

  const factory CustomerModelState.detailCustomer(
      {required Customer customer}) = _DetailCustomer;
}
