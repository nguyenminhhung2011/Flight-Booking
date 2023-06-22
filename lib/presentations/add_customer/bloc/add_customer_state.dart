part of 'add_customer_bloc.dart';

@freezed
class AddCustomerState with _$AddCustomerState {
  const factory AddCustomerState.loading({
    required AddCustomerModelState data,
  }) = _Loading;
  const factory AddCustomerState.initial({
    required AddCustomerModelState data,
  }) = _Initial;
  const factory AddCustomerState.addCustomerSuccess({
    required AddCustomerModelState data,
    required Customer customer,
  }) = _AddCustomerSuccess;
  const factory AddCustomerState.addCustomerFailed({
    required AddCustomerModelState data,
    required String message,
  }) = _AddCustomerFailed;
}
