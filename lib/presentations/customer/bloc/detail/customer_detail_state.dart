part of 'customer_detail_bloc.dart';

@freezed
class CustomerDetailState with _$CustomerDetailState {
  const factory CustomerDetailState.initial({
    required CustomerDetailModelState data,
  }) = _Initial;
}
