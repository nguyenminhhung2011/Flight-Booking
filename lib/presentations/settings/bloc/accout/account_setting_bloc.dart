import 'dart:async';

import 'package:bloc/bloc.dart';
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
          const AccountSettingState.initial(
            data: AccountSettingModelState(
              oldPassword: "",
              newPassword: "",
              retypePassword: "",
            ),
          ),
        ) {
    on<_OnStarted>(_onStarted);
    on<_FetchUserData>(_onFetchUserData);
    on<_UpdateUserData>(_onUpdateUserData);
  }

  FutureOr<void> _onStarted(
    _OnStarted event,
    Emitter<AccountSettingState> emit,
  ) {}

  FutureOr<void> _onFetchUserData(
      _FetchUserData event, Emitter<AccountSettingState> emit) {}

  FutureOr<void> _onUpdateUserData(
      _UpdateUserData event, Emitter<AccountSettingState> emit) {}
}
