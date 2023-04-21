part of 'list_tic_bloc.dart';

@freezed
class ListTicState with _$ListTicState {
  const ListTicState._();
  const factory ListTicState.initial({
    required ListTicModelState data,
  }) = _Initial;
  const factory ListTicState.loading({
    required ListTicModelState data,
  }) = _Loading;

  const factory ListTicState.selectListTicSuccess({
    required ListTicModelState data,
    required String ticId,
  }) = _SelectListTicSuccess;

  const factory ListTicState.selectListTicFailed({
    required ListTicModelState data,
    required String message,
  }) = _SelectListTicFailed;
}
