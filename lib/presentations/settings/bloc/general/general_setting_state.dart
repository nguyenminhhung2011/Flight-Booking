part of "general_setting_bloc.dart";

@freezed
class GeneralSettingState with _$GeneralSettingState {
  const GeneralSettingState._();

  const factory GeneralSettingState.initial(
      {required GeneralSettingModelState data}) = _Initial;

  const factory GeneralSettingState.loading(
      {required GeneralSettingModelState data}) = _Loading;

  const factory GeneralSettingState.fetchUserDataInfoSuccess(
      {required GeneralSettingModelState data}) = _FetchUserDataInfoSuccess;

  const factory GeneralSettingState.fetchUserDataInfoFailed({
    required GeneralSettingModelState data,
    required String message,
  }) = _FetchUserDataInfoFailed;

  const factory GeneralSettingState.updateUserInfoSuccess(
      {required GeneralSettingModelState data}) = _UpdateUserInfoSuccess;

  const factory GeneralSettingState.updateUserInfoFailed({
    required GeneralSettingModelState data,
    required String message,
  }) = _UpdateUserInfoFailed;

  bool get isLoading => this is _Loading;
}
