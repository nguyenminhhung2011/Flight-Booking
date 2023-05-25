import 'dart:async';

import 'package:flight_booking/presentations_mobile/auth/bloc/auth_model_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.initial(data: AuthModelState())) {
    on<_Started>(_onStarted);
    on<_Register>(_onRegister);
    on<_Login>(_onLogin);
  }

  FutureOr<void> _onLogin(
    _Login event,
    Emitter<AuthState> emit,
  ) {}

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<AuthState> emit,
  ) {}

  FutureOr<void> _onRegister(
    _Register event,
    Emitter<AuthState> emit,
  ) {}
}
