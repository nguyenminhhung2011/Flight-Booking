import 'dart:async';

import 'package:flight_booking/domain/entities/user/user.dart';
import 'package:flight_booking/domain/usecase/user_usecase.dart';
import 'package:flight_booking/presentations/settings/bloc/general/general_setting_model_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part "general_setting_event.dart";
part 'general_setting_state.dart';

part 'general_setting_bloc.freezed.dart';

@injectable
class GeneralSettingBloc
    extends Bloc<GeneralSettingEvent, GeneralSettingState> {
  final UserUseCase _userUseCase;

  GeneralSettingBloc(this._userUseCase)
      : super(
          GeneralSettingState.initial(
            data: GeneralSettingModelState(user: User.empty),
          ),
        ) {
    on<_OnStarted>(_onStarted);
    on<_FetchUserInfoData>(_onFetchUserInfoData);
    on<_UpdateUserInfoData>(_onUpdateUserInfoData);
  }

  FutureOr<void> _onStarted(
      _OnStarted event, Emitter<GeneralSettingState> emit) {}

  FutureOr<void> _onFetchUserInfoData(
      _FetchUserInfoData event, Emitter<GeneralSettingState> emit) async {
    emit(_Loading(data: state.data));

    final result = await _userUseCase.getUserData();

    if (result == null) {
      emit(
        _FetchUserDataInfoFailed(
            data: state.data.copyWith(user: User.empty),
            message: "Something wrong happened !!!"),
      );
    } else {
      emit(_FetchUserDataInfoSuccess(
          data: GeneralSettingModelState(user: result)));
    }
  }

  FutureOr<void> _onUpdateUserInfoData(
      _UpdateUserInfoData event, Emitter<GeneralSettingState> emit) async {
    emit(_Loading(data: state.data));

    final result = await _userUseCase.updateUserInfo(event.user);

    if (result != null) {
      emit(GeneralSettingState.updateUserInfoSuccess(
          data: GeneralSettingModelState(user: result)));
    } else {
      emit(GeneralSettingState.updateUserInfoFailed(
          data: state.data, message: "Something wrong happened !!!"));
    }
  }
}
