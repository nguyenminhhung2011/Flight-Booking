import 'dart:async';
import 'dart:convert';

import 'package:flight_booking/core/components/utils/preferences.dart';
import 'package:flight_booking/domain/entities/user/user.dart';
import 'package:flight_booking/domain/usecase/user_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'authentication_state.dart';
part 'authentication_event.dart';

@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserUseCase _userUseCase;

  AuthenticationBloc(this._userUseCase) : super(AuthenticationState.unknown()) {
    on<OnStarted>(_onStarted);
    on<LoginEvent>(_onLoginEvent);
    on<LogoutEvent>(_onLogoutEvent);
  }

  FutureOr<void> _onStarted(
      OnStarted event, Emitter<AuthenticationState> emit) async {
    final userEntityJson = CommonAppSettingPref.getUserEntity();
    if (userEntityJson != null) {
      final user = jsonDecode(userEntityJson);
      emit(AuthenticationState.authenticated(user: user));
    }
    emit(AuthenticationState.unauthenticated());
  }

  FutureOr<void> _onLoginEvent(
      LoginEvent event, Emitter<AuthenticationState> emit) async {
    final user = await _userUseCase.login(event.username, event.password);
    if (user != null) {
      return emit(AuthenticationState.authenticated(user: user));
    }
    return emit(AuthenticationState.unauthenticated());
  }

  FutureOr<void> _onLogoutEvent(
      LogoutEvent event, Emitter<AuthenticationState> emit) {}
}
