import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/user/user.dart';

part 'general_setting_model_state.freezed.dart';

@freezed
class GeneralSettingModelState with _$GeneralSettingModelState {
  const factory GeneralSettingModelState({required User user}) =
      _GeneralSettingModelState;
}
