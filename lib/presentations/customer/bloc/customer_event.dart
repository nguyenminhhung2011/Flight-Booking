part of 'customer_bloc.dart';

@freezed
class CustomerEvent with _$CustomerEvent {
  const factory CustomerEvent.onStarted() = _OnStarted;
  const factory CustomerEvent.openCustomerDetail({required String customerId}) =
      _OpenCustomerDetail;
  const factory CustomerEvent.selectCustomer(
      {required String id, required int index}) = _SelectCustomer;
  const factory CustomerEvent.searchCustomer(
      {String? id, String? name, String? identify}) = _SearchCustomer;
  const factory CustomerEvent.fetchCustomerData() = _FetchCustomerData;
  const factory CustomerEvent.deleteCustomer({required String id}) =
      _DeleteCustomer;
  const factory CustomerEvent.editCustomer({required String id}) =
      _EditCustomer;
}
