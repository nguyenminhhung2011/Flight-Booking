part of 'account_setting_bloc.dart';

@freezed
class AccountSettingState with _$AccountSettingState {
  const AccountSettingState._();

  const factory AccountSettingState.initial(
      {required AccountSettingModelState data}) = _Initial;
  const factory AccountSettingState.loading(
      {required AccountSettingModelState data}) = _Loading;
  const factory AccountSettingState.fetchUserDataSuccess(
      {required AccountSettingModelState data}) = _FetchUserDataSuccess;
  const factory AccountSettingState.fetchUserDataFailed({
    required AccountSettingModelState data,
    required String message,
  }) = _FetchUserDataFailed;
  const factory AccountSettingState.updateUserDataSuccess(
      {required AccountSettingModelState data}) = _UpdateUserDataSuccess;
  const factory AccountSettingState.updateUserDataFailed(
      {required AccountSettingModelState data,
      required String message}) = _UpdateUserDataFailed;

  const factory AccountSettingState.changePasswordSuccess(
      {required AccountSettingModelState data}) = _ChangePasswordSuccess;
  const factory AccountSettingState.changePasswordFailed(
      {required AccountSettingModelState data,
      required String message}) = _ChangePasswordFailed;

  bool get isFetchDataSuccess => this is _FetchUserDataSuccess;
  bool get isUpdateDataSuccess => this is _UpdateUserDataSuccess;

  bool get isLoading => this is _Loading;
}
