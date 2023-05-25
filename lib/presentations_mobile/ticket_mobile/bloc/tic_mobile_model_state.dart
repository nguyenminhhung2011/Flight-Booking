import 'package:flight_booking/domain/entities/ticket/ticket.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/components/enum/tic_type_enum.dart';
import '../../../domain/entities/airport/airport.dart';

part 'tic_mobile_model_state.freezed.dart';

@freezed
class TicMobileModelState with _$TicMobileModelState {
  const factory TicMobileModelState({
    required Airport? airportStart,
    required Airport? airportFinish,
    required List<Ticket> listTic,
    required TicTypeEnum typeTic,
  }) = _TicMobileModelState;
}
