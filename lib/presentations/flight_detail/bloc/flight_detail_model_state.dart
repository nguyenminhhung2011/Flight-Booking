import 'package:flight_booking/core/components/enum/item_view_enum.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/flight/flight.dart';
import '../../../domain/entities/ticket/ticket_information.dart';

part 'flight_detail_model_state.freezed.dart';

@freezed
class FlightDetailModelState with _$FlightDetailModelState {
  const factory FlightDetailModelState({
    required double animation,
    required ItemViewEnum itemView,
    required bool showMoreInfor,
    required List<TicketInformation> ticInformation,
    Flight? flight,
  }) = _FlightDetailModelState;
}
