import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/place/place_model.dart';

part 'add_edit_airport_model_state.freezed.dart';

@freezed
class AddEditAirportModelState with _$AddEditAirportModelState {
  const factory AddEditAirportModelState({
    required TextEditingController name,
    required TextEditingController location,
    required String headerText,
    required List<Uint8List> images,
    required List<PlaceModel> provinces,
    required List<PlaceModel> districts,
    required List<PlaceModel> wards,
    required int provincesSelected,
    required int districtsSelected,
    required int wardsSelected,
  }) = _AddEditAirportModelState;
}
