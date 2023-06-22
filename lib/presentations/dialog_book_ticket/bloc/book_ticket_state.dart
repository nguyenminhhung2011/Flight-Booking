part of 'book_ticket_bloc.dart';

@freezed
class BTState with _$BTState {
  const BTState._();

  const factory BTState.initial({required BTModelState data}) = _Initial;

  const factory BTState.loading({
    required BTModelState data,
    required int groupLoading,
  }) = _Loading;

  const factory BTState.changeTicIndexViewSuccess({
    required BTModelState data,
  }) = _ChangeTicIndexViewSuccess;
}
