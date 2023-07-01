part of 'authentication_bloc.dart';

enum AuthenticationStatus { authenticated, unauthenticated, unknown, checking }

class AuthenticationState {
  final AuthenticationStatus status;
  final String token;
  final String message;

  AuthenticationState._({
    this.message = "",
    this.status = AuthenticationStatus.unknown,
    this.token = "",
  });

  AuthenticationState({
    this.message = "",
    required this.status,
    required this.token,
  });

  AuthenticationState.authenticated({
    this.message = "",
    this.status = AuthenticationStatus.authenticated,
    required this.token,
  });

  AuthenticationState.unauthenticated(
      {String message = "Login Session Expired"})
      : this._(status: AuthenticationStatus.unauthenticated, message: message);

  AuthenticationState.unknown() : this._();

  AuthenticationState copyWith({AuthenticationStatus? status, String? token}) {
    return AuthenticationState(
      status: status ?? this.status,
      token: token ?? this.token,
    );
  }
}
