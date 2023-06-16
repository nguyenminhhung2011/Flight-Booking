part of 'authentication_bloc.dart';

enum AuthenticationStatus { authenticated, unauthenticated, unknown, checking }

class AuthenticationState {
  final AuthenticationStatus status;
  final String token;

  AuthenticationState._({
    this.status = AuthenticationStatus.unknown,
    this.token = "",
  });

  AuthenticationState.authenticated({
    this.status = AuthenticationStatus.authenticated,
    required this.token,
  });

  AuthenticationState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  AuthenticationState.unknown() : this._();
}
