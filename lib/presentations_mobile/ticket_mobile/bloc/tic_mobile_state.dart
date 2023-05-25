part of 'tic_mobile_bloc.dart';

@freezed
class TicMobileState with _$TicMobileState {
  const TicMobileState._();
  const factory TicMobileState.initial({
    required TicMobileModelState data,
  }) = _Initial;

  const factory TicMobileState.loading({
    required TicMobileModelState data,
  }) = _Loading;
  const factory TicMobileState.fetchTicSuccess({
    required TicMobileModelState data,
  }) = _FetchTicSuccess;

  const factory TicMobileState.fetchTicFailed({
    required TicMobileModelState data,
    required String message,
  }) = _FetchTicFailed;
}
