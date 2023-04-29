part of 'customer_bloc.dart';

@freezed
class CustomerState with _$CustomerState {
  const CustomerState._();
  const factory CustomerState.initial({required CustomerModelState data}) =
      _Initial;

  const factory CustomerState.loading({required CustomerModelState data}) =
      _Loading;

  const factory CustomerState.getCustomerSuccess({
    required CustomerModelState data,
  }) = _GetCustomerSuccess;

  const factory CustomerState.getCustomerFailed({
    required CustomerModelState data,
    required String message,
  }) = _GetCustomerFailed;

  const factory CustomerState.selectCustomerSuccess({
    required CustomerModelState data,
    required String id,
  }) = _SelectCustomerSuccess;

  const factory CustomerState.selectCustomerFailed({
    required CustomerModelState data,
    required String message,
  }) = _SelectCustomerFailed;
}
