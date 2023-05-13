part of "customer_detail_bloc.dart";

@freezed
class CustomerDetailState with _$CustomerDetailState {
  const CustomerDetailState._();

  const factory CustomerDetailState.initial({
    required CustomerDetailModelState data,
  }) = _Initial;

  const factory CustomerDetailState.loading(
      {required CustomerDetailModelState data}) = _Loading;
}
