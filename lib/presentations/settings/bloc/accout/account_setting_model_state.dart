import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_setting_model_state.freezed.dart';

@freezed
class AccountSettingModelState with _$AccountSettingModelState {
  const factory AccountSettingModelState({required String password}) =
      _AccountSettingModelState;
}
