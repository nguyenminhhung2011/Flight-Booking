import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_edit_airport_model_state.freezed.dart';

@freezed
class AddEditAirportModelState with _$AddEditAirportModelState {
  const factory AddEditAirportModelState({
    required TextEditingController name,
    required TextEditingController location,
    required String headerText,
    required List<Uint8List> images,
  }) = _AddEditAirportModelState;
}
