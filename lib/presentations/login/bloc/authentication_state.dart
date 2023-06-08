part of 'authentication_bloc.dart';

enum AuthenticationStatus { authenticated, unauthenticated, unknown, checking }

class AuthenticationState {
  final AuthenticationStatus status;
  final User user;

  AuthenticationState._({
    this.status = AuthenticationStatus.unknown,
    this.user = User.empty,
  });

  AuthenticationState.authenticated({
    this.status = AuthenticationStatus.authenticated,
    required this.user,
  });

  AuthenticationState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  AuthenticationState.unknown() : this._();
}
