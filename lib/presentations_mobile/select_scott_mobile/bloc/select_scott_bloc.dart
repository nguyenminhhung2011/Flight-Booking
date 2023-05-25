import 'dart:async';

import 'package:flight_booking/domain/entities/customer/customer.dart';
import 'package:flight_booking/presentations_mobile/select_scott_mobile/bloc/select_scott_model_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'select_scott_event.dart';
part 'select_scott_state.dart';

part 'select_scott_bloc.freezed.dart';

@injectable
class SelectScottBloc extends Bloc<SelectScottEvent, SelectScottState> {
  SelectScottModelState get data => state.data;
  SelectScottBloc()
      : super(
          const SelectScottState.initial(
              data: SelectScottModelState(
            tab: 0,
            listCustomer: <Customer>[],
            selectCustomer: 0,
          )),
        ) {
    on<_Started>(_onStarted);
    on<_ChangeTab>(_onChangeTab);
    on<_AddNewCustomer>(_onAddNewCustomer);
    on<_SelectCustomer>(_onSelectCustomer);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<SelectScottState> emit,
  ) {}

  FutureOr<void> _onChangeTab(
    _ChangeTab event,
    Emitter<SelectScottState> emit,
  ) {
    emit(state.copyWith(data: data.copyWith(tab: event.tab)));
  }

  FutureOr<void> _onAddNewCustomer(
    _AddNewCustomer event,
    Emitter<SelectScottState> emit,
  ) {
    emit(state.copyWith(
        data: data.copyWith(
      listCustomer: [event.customer, ...data.listCustomer],
      tab: 0,
      selectCustomer: 0,
    )));
  }

  FutureOr<void> _onSelectCustomer(
    _SelectCustomer event,
    Emitter<SelectScottState> emit,
  ) {
    emit(state.copyWith(data: data.copyWith(selectCustomer: event.index)));
  }
}
