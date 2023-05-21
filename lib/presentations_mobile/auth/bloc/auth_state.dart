part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.initial({required AuthModelState data}) = _Initial;
  const factory AuthState.loading({required AuthModelState data}) = _Loading;
  const factory AuthState.loginSuccess({
    required AuthModelState data,
  }) = _LoginSuccess;
  const factory AuthState.loginFailed({
    required AuthModelState data,
    required String message,
  }) = _LoginFailed;

  const factory AuthState.registerSuccess({
    required AuthModelState data,
  }) = _RegisterSuccess;
  const factory AuthState.registerFailed({
    required AuthModelState data,
    required String message,
  }) = _RegisterFailed;
}
