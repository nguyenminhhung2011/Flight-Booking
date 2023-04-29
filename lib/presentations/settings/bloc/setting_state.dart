part of "setting_bloc.dart";

@freezed
class SettingState with _$SettingState {
  const factory SettingState.initial({required SettingModelState data}) =
      _Initial;
  const factory SettingState.switchTab({required SettingModelState data}) =
      _SwitchTab;
}
