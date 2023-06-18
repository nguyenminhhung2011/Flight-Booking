import 'dart:async';
import 'package:flight_booking/core/components/utils/preferences.dart';
import 'package:flight_booking/presentations_mobile/auth/bloc/auth_model_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/repositories/user_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

const _lengthPassword = 8;

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserRepository _userRepository;
  AuthModelState get data => state.data;
  AuthBloc(
    this._userRepository,
  ) : super(const AuthState.initial(data: AuthModelState())) {
    on<_Started>(_onStarted);
    on<_Register>(_onRegister);
    on<_Login>(_onLogin);
  }

  FutureOr<void> _onLogin(
    _Login event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthState.loading(data: data));
    if (event.password.length < _lengthPassword) {
      emit(AuthState.loginFailed(
        data: data,
        message: 'length of password must be more 8 characters',
      ));
      return;
    }
    try {
      final user = await _userRepository.login(event.email, event.password);
      // if (user == null) {
      //   emit(AuthState.loginFailed(data: data, message: 'Can\'t login'));
      //   return;
      // }
      // final saveUser = await CommonAppSettingPref.setUserId(user.data!.id);
      // if (!saveUser) {
      //   emit(AuthState.loginFailed(
      //     data: data,
      //     message: 'Can\'t save user to local',
      //   ));
      //   return;
      // }
      emit(AuthState.loginSuccess(data: data));
    } catch (exception) {
      emit(AuthState.loginFailed(data: data, message: exception.toString()));
    }
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<AuthState> emit,
  ) {
    final userEntityJson = CommonAppSettingPref.getUserEntity();
    if (userEntityJson != null) {
      // final user = jsonDecode(userEntityJson);
      // emit(AuthState.initial(user: user));
    }
    // do something
  }

  FutureOr<void> _onRegister(
    _Register event,
    Emitter<AuthState> emit,
  ) {}
}
