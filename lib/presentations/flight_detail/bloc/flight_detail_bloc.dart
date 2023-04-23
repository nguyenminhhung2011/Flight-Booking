import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flight_booking/core/components/enum/item_view_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../list_flight/bloc/list_flight_bloc.dart';
import 'flight_detail_model_state.dart';

part 'flight_detail_event.dart';
part 'flight_detail_state.dart';

part 'flight_detail_bloc.freezed.dart';

@injectable
class FlightDetailBloc extends Bloc<FlightDetailEvent, FlightDetailState> {
  FlightDetailBloc()
      : super(
          const FlightDetailState.initial(
            data: FlightDetailModelState(
              animation: 1000.0,
              itemView: ItemViewEnum.gridView,
              showMoreInfor: false,
            ),
          ),
        ) {
    on<_Started>(_onStarted);
    on<_ChangeTypeView>(_onChangeTypeView);
    on<_showMoreInformation>(_onShowMoreInformation);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<FlightDetailState> emit,
  ) {
    emit(FlightDetailState.initial(data: state.data.copyWith(animation: 0)));
  }

  FutureOr<void> _onChangeTypeView(
      _ChangeTypeView event, Emitter<FlightDetailState> emit) {
    emit(state.copyWith(data: state.data.copyWith(itemView: event.view)));
  }

  FutureOr<void> _onShowMoreInformation(
      _showMoreInformation event, Emitter<FlightDetailState> emit) {
    emit(state.copyWith(
      data: state.data.copyWith(showMoreInfor: !state.data.showMoreInfor),
    ));
  }
}
