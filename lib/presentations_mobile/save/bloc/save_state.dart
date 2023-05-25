part of 'save_bloc.dart';

@freezed
class SaveState with _$SaveState {
  const factory SaveState.initial({
    required SaveModelState data,
  }) = _Initial;
  const factory SaveState.loading({
    required SaveModelState data,
  }) = _Loading;
}
