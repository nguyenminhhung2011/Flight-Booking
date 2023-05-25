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
  const factory AccountSettingState.fetchUserDataFailed(
      {required AccountSettingModelState data}) = _FetchUserDataFailed;
  const factory AccountSettingState.updateUserDataSuccess(
      {required AccountSettingModelState data}) = _UpdateUserDataSuccess;
  const factory AccountSettingState.updateUserDataFailed(
      {required AccountSettingModelState data}) = _UpdateUserDataFailed;

  bool get isLoading => this is _Loading;
}
