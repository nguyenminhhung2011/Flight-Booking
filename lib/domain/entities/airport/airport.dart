import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'airport.freezed.dart';

@freezed
class Airport with _$Airport {
  const factory Airport({
    required int id,
    required String name,
    required String image,
    required String location,
    required String description,
    required TimeOfDay openTime,
    required TimeOfDay closeTime,
    required String code,
  }) = _Airport;
}
