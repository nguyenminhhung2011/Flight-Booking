import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flight_booking/domain/entities/user/user.dart';
import 'package:flight_booking/domain/usecase/user_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'account_setting_model_state.dart';

part 'account_setting_event.dart';
part 'account_setting_state.dart';

part 'account_setting_bloc.freezed.dart';

@injectable
class AccountSettingBloc
    extends Bloc<AccountSettingEvent, AccountSettingState> {
  final UserUseCase _userUseCase;

  AccountSettingBloc(this._userUseCase)
      : super(
          const _Initial(
            data: AccountSettingModelState(
              user: User.empty,
            ),
          ),
        ) {
    on<_OnStarted>(_onStarted);
    on<_FetchUserData>(_onFetchUserData);
    on<_UpdateUserData>(_onUpdateUserData);
    on<_ChangePassword>(_onChangePassword);
  }

  FutureOr<void> _onStarted(
    _OnStarted event,
    Emitter<AccountSettingState> emit,
  ) {}

  FutureOr<void> _onFetchUserData(
      _FetchUserData event, Emitter<AccountSettingState> emit) async {
    emit(_Loading(data: state.data));

    try {
      final result = await _userUseCase.getUserData();
      if (result != null) {
        return emit(
            _FetchUserDataSuccess(data: state.data.copyWith(user: result)));
      }
      throw Exception("Error user data is null");
    } catch (e) {
      return emit(
          _FetchUserDataFailed(data: state.data, message: e.toString()));
    }
  }

  FutureOr<void> _onUpdateUserData(
      _UpdateUserData event, Emitter<AccountSettingState> emit) async {
    emit(_Loading(data: state.data));

    try {
      final result = await _userUseCase.updateUserInfo(event.user);
      if (result != null) {
        return emit(
            _UpdateUserDataSuccess(data: state.data.copyWith(user: result)));
      }
      throw Exception("Error user data is null");
    } catch (e) {
      return emit(
          _UpdateUserDataFailed(data: state.data, message: e.toString()));
    }
  }

  FutureOr<void> _onChangePassword(
      _ChangePassword event, Emitter<AccountSettingState> emit) async {
    emit(_Loading(data: state.data));

    try {
      final result = await _userUseCase.changePassword(
          event.oldPassword, event.newPassword);
      if (result != null) {
        return emit(
            _ChangePasswordSuccess(data: state.data.copyWith(user: result)));
      }
      throw Exception("Error user data is null");
    } catch (e) {
      return emit(
          _UpdateUserDataFailed(data: state.data, message: e.toString()));
    }
  }
}
