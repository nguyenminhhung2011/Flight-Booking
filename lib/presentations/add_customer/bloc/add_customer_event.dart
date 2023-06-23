part of 'add_customer_bloc.dart';

@freezed
class AddCustomerEvent with _$AddCustomerEvent {
  const factory AddCustomerEvent.started() = _Started;

  const factory AddCustomerEvent.addCustomer({
    required String name,
    required String email,
    required String phoneNumber,
    required String gender,
    required String identifyNum,
    required DateTime dob,
  }) = _AddCustomer;

  const factory AddCustomerEvent.editCustomer({
    required String name,
    required String email,
    required String phoneNumber,
    required String gender,
    required String identifyNum,
    required DateTime dob,
  }) = _EditCustomer;

  const factory AddCustomerEvent.getCustomerById() = _GetCustomerById;
}
