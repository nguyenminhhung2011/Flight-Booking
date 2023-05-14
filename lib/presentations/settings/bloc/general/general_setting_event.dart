part of "general_setting_bloc.dart";

@freezed
class GeneralSettingEvent with _$GeneralSettingEvent {
  const GeneralSettingEvent._();
  const factory GeneralSettingEvent.onStarted() = _OnStarted;
  const factory GeneralSettingEvent.fetchUserInfoData() = _FetchUserInfoData;
  const factory GeneralSettingEvent.updateUserInfoData({required User user}) =
      _UpdateUserInfoData;
}
