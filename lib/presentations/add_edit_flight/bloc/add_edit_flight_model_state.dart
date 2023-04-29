import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_edit_flight_model_state.freezed.dart';

@freezed
class AddEditFlightModelState with _$AddEditFlightModelState {
  const factory AddEditFlightModelState({
    required TextEditingController airPortStart,
    required TextEditingController airPortFinish,
    required DateTime timeStart,
    required DateTime timeEnd,
    required String headerText,
    required int noCustomer,
  }) = _AddEditFlightModelState;
}
