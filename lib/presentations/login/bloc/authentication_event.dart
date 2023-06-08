part of 'authentication_bloc.dart';

abstract class AuthenticationEvent {}

class OnStarted extends AuthenticationEvent {}

class LoginEvent extends AuthenticationEvent {
  final String username;
  final String password;

  LoginEvent({
    required this.username,
    required this.password,
  });
}

class LogoutEvent extends AuthenticationEvent {}
