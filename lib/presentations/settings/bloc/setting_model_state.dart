import 'package:freezed_annotation/freezed_annotation.dart';

part "setting_model_state.freezed.dart";

@freezed
class SettingModelState with _$SettingModelState {
  const factory SettingModelState({
    required int currentPage,
  }) = _SettingModelState;
}
