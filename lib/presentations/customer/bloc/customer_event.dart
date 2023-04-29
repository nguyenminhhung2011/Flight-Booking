part of 'customer_bloc.dart';

@freezed
class CustomerEvent with _$CustomerEvent {
  const factory CustomerEvent.started() = _Started;

  const factory CustomerEvent.customerDetail() = _CustomerDetail;

  const factory CustomerEvent.searchCustomer() = _SearchCustomer;
  const factory CustomerEvent.getCustomers() = _GetCustomers;
}
