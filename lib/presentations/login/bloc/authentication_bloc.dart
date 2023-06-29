import 'dart:async';
import 'package:flight_booking/core/components/utils/preferences.dart';
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
    emit(state.copyWith(status: AuthenticationStatus.checking));

    String accessToken = CommonAppSettingPref.getAccessToken();
    String refreshToken = CommonAppSettingPref.getRefreshToken();
    int expiredTime = CommonAppSettingPref.getExpiredTime();

    if (accessToken.isNotEmpty ||
        refreshToken.isNotEmpty ||
        expiredTime != -1) {
      final expiredTimeParsed =
          DateTime.fromMillisecondsSinceEpoch(expiredTime);
      final isExpired = DateTime.now().isAfter(expiredTimeParsed);

      if (!isExpired) {
        return emit(AuthenticationState.authenticated(token: accessToken));
      }
    }

    return emit(AuthenticationState.unauthenticated());
  }

  FutureOr<void> _onLoginEvent(
      LoginEvent event, Emitter<AuthenticationState> emit) async {
    emit(state.copyWith(status: AuthenticationStatus.checking));

    try {
      final token = await _userUseCase.login(event.username, event.password);

      if (token != null && token.isNotEmpty) {
        return emit(AuthenticationState.authenticated(token: token));
      }
    } catch (e) {
      return emit(AuthenticationState.unauthenticated(message: ""));
    }
  }

  FutureOr<void> _onLogoutEvent(
      LogoutEvent event, Emitter<AuthenticationState> emit) async {
    emit(state.copyWith(status: AuthenticationStatus.checking));

    final result = await _userUseCase.logout();
    if (result) {
      CommonAppSettingPref.removeAllAuthData();
      emit(state.copyWith(status: AuthenticationStatus.unauthenticated));
    }
  }
}
