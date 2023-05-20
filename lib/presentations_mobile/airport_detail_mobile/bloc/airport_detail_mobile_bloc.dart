import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flight_booking/presentations_mobile/airport_detail_mobile/bloc/airport_detail_mobile_model_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'airport_detail_mobile_state.dart';
part 'airport_detail_mobile_event.dart';
part 'airport_detail_mobile_bloc.freezed.dart';

@injectable
class AirportDetailMobileBloc
    extends Bloc<AirportDetailMobileEvent, AirportDetailMobileState> {
  AirportDetailMobileModelState get data => state.data;

  AirportDetailMobileBloc()
      : super(
          const AirportDetailMobileState.initial(
            data: AirportDetailMobileModelState(tabIndex: 0),
          ),
        ) {
    on<_Started>(_onStarted);
    on<_ChangeTabView>(_onChangeTabView);
    on<_LoadingComplete>(_onLoadingComplete);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<AirportDetailMobileState> emit,
  ) {
    add(const _LoadingComplete());
  }

  FutureOr<void> _onLoadingComplete(
    _LoadingComplete event,
    Emitter<AirportDetailMobileState> emit,
  ) {
    emit(AirportDetailMobileState.loading(data: data));
  }

  FutureOr<void> _onChangeTabView(
    _ChangeTabView event,
    Emitter<AirportDetailMobileState> emit,
  ) {
    emit(state.copyWith(
      data: state.data.copyWith(tabIndex: event.index),
    ));
  }
}
