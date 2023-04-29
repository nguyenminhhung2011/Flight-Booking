import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flight_booking/core/components/enum/date_time_enum.dart';
import 'package:flight_booking/core/constant/constant.dart';
import 'package:flight_booking/domain/entities/flight/flight.dart';
import 'package:flight_booking/presentations/add_edit_flight/bloc/add_edit_flight_model_state.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/usecase/flight_usecase.dart';
import '../../../generated/l10n.dart';

part 'add_edit_flight_event.dart';
part 'add_edit_flight_state.dart';
part 'add_edit_flight_bloc.freezed.dart';

const _idNull = '';
const _noCustomerDefault = 0;

@injectable
class AddEditFlightBloc extends Bloc<AddEditFlightEvent, AddEditFlightState> {
  final String _flightId;
  final FlightsUsecase _flightsUsecase;

  AddEditFlightModelState get data => state.data;

  AddEditFlightBloc(
    @factoryParam String flightId,
    this._flightsUsecase,
  )   : _flightId = flightId,
        super(
          AddEditFlightState.initial(
            data: AddEditFlightModelState(
              airPortStart: TextEditingController(),
              airPortFinish: TextEditingController(),
              timeEnd: DateTime.now(),
              timeStart: DateTime.now(),
              headerText: S.current.addNewFlight,
              noCustomer: _noCustomerDefault,
            ),
          ),
        ) {
    on<_Started>(_onStarted);
    on<_EditFlight>(_onEditFlight);
    on<_AddNewFlight>(_onAddNewFlight);
    on<_UpdateDateField>(_onUpdateDateField);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<AddEditFlightState> emit,
  ) {
    if (_flightId != _idNull) {
      // emit(
      //   state.copyWith(
      //     data: data.copyWith(
      //       headerText: S.current.editFlight,
      //       airPortStart: ,
      //       airPortFinish: TextEditingController(),
      //       timeEnd: DateTime.now(),
      //       timeStart: DateTime.now(),
      //       noCustomer: _noCustomerDefault,
      //     ),
      //   ),
      // );
    }
    emit(
      state.copyWith(
        data: data.copyWith(
          headerText: _flightId != _idNull
              ? S.current.editFlight
              : S.current.addNewFlight,
        ),
      ),
    );
  }

  FutureOr<void> _onEditFlight(
    _EditFlight event,
    Emitter<AddEditFlightState> emit,
  ) async {
    emit(AddEditFlightState.loading(data: state.data));
    try {
      final newFlight = Flight(
        id: event.id,
        idStartAirport: data.airPortStart.text,
        idComeAirport: data.airPortFinish.text,
        timeStart: data.timeStart,
        timeEnd: data.timeEnd,
        noCustomer: data.noCustomer,
      );
      final edit = await _flightsUsecase.editlight(newFlight);
      if (edit) {
        emit(AddEditFlightState.editFlightSuccess(data: data));
      }
      emit(AddEditFlightState.editFlightFailed(data: state.data, message: ''));
    } catch (e) {
      emit(AddEditFlightState.editFlightFailed(
        data: state.data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onAddNewFlight(
    _AddNewFlight event,
    Emitter<AddEditFlightState> emit,
  ) async {
    emit(AddEditFlightState.loading(data: state.data));
    try {
      final newFlight = Flight(
        id: randomString(),
        idStartAirport: data.airPortStart.text,
        idComeAirport: data.airPortFinish.text,
        timeStart: data.timeStart,
        timeEnd: data.timeEnd,
        noCustomer: data.noCustomer,
      );
      final add = await _flightsUsecase.addNewFlight(newFlight);
      if (add != _idNull) {
        emit(AddEditFlightState.addNewFlightSuccess(data: data, idReturn: add));
      }
      emit(
          AddEditFlightState.addNewFlightFailed(data: state.data, message: ''));
    } catch (e) {
      emit(AddEditFlightState.addNewFlightFailed(
        data: state.data,
        message: e.toString(),
      ));
    }
  }

  FutureOr<void> _onUpdateDateField(
    _UpdateDateField event,
    Emitter<AddEditFlightState> emit,
  ) {
    AddEditFlightModelState addEditFlightModelState;
    if (event.enumTime == DateTimeEnum.timeStart) {
      addEditFlightModelState = data.copyWith(timeStart: event.dateTime);
    } else {
      addEditFlightModelState = data.copyWith(timeEnd: event.dateTime);
    }
    emit(state.copyWith(data: addEditFlightModelState));
  }
}
