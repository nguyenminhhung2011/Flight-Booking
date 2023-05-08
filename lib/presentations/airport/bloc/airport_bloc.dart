import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/usecase/airport_usecase.dart';
import 'airport_model_state.dart';

part 'airport_event.dart';
part 'airport_state.dart';

part 'airport_bloc.freezed.dart';

@injectable
class AirportBloc extends Bloc<AirportEvent, AirportState> {
  final AirportUsecase _airportUsecase;

  AirportModelState get data => state.data;

  AirportBloc(this._airportUsecase)
      : super(
          const AirportState.initial(
            data: AirportModelState(airports: [], pageView: 0),
          ),
        ) {
    on<_Started>(_onStarted);
    on<_FetchAirports>(_onFetchAirports);
    on<_ChangePageView>(_onChangePageView);
    on<_OpenAddEditAirportForm>(_onOpenAddEditAirport);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<AirportState> emit,
  ) {}

  FutureOr<void> _onFetchAirports(
    _FetchAirports event,
    Emitter<AirportState> emit,
  ) async {
    emit(AirportState.loading(data: state.data));
    try {
      final airports = await _airportUsecase.fetchAllAirports();
      emit(AirportState.fetchAirportsSuccess(
        data: state.data.copyWith(airports: airports),
      ));
    } catch (e) {
      emit(AirportState.fetchAirportsFailed(
        data: state.data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onChangePageView(
    _ChangePageView event,
    Emitter<AirportState> emit,
  ) {
    emit(state.copyWith(
      data: state.data.copyWith(pageView: 1 - data.pageView),
    ));
  }

  FutureOr<void> _onOpenAddEditAirport(
    _OpenAddEditAirportForm event,
    Emitter<AirportState> emit,
  ) {
    emit(AirportState.loading(data: data));
    emit(AirportState.openAddEditAirportSucceess(data: data, id: event.id));
  }
}
