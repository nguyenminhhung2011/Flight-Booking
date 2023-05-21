import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_model_state.freezed.dart';

@freezed
class SaveModelState with _$SaveModelState {
  const factory SaveModelState({required int tab}) = _SaveModelState;
}
