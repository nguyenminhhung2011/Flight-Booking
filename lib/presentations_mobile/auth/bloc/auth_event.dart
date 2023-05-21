part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.onStarted() = _Started;
  const factory AuthEvent.register({
    required String email,
    required String password,
    required String rePassword,
  }) = _Register;
  const factory AuthEvent.login({
    required String email,
    required String password,
  }) = _Login;
}
