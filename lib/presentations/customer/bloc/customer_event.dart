part of 'customer_bloc.dart';

@freezed
class CustomerEvent with _$CustomerEvent {
  const factory CustomerEvent.onStarted() = _OnStarted;
  const factory CustomerEvent.openCustomerDetail({required String customerId}) =
      _OpenCustomerDetail;
  const factory CustomerEvent.selectCustomer(
      {required String id, required int index}) = _SelectCustomer;
  const factory CustomerEvent.searchCustomers(
      {String? id, String? name, String? identify}) = _SearchCustomer;
  const factory CustomerEvent.fetchCustomerData() = _FetchCustomerData;
  const factory CustomerEvent.deleteCustomer({required int id}) =
      _DeleteCustomer;
  const factory CustomerEvent.editCustomer({required String id}) =
      _EditCustomer;
  const factory CustomerEvent.addCustomer() = _AddCustomer;
  const factory CustomerEvent.updateCustomers({
    required bool isEdit,
    required Customer customer,
  }) = _UpdateCustomers;

  const factory CustomerEvent.getTicInformation({
    required int flightId,
  }) = _GetTicInformation;

  const factory CustomerEvent.getLatestPaymentOfCustomer({
    required int customerId,
  }) = _GetLatestPaymentOfCustomer;
}
