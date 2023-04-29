import 'package:flight_booking/core/components/enum/item_view_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flight_detail_model_state.freezed.dart';

@freezed
class FlightDetailModelState with _$FlightDetailModelState {
  const factory FlightDetailModelState({
    required double animation,
    required ItemViewEnum itemView,
    required bool showMoreInfor,
  }) = _FlightDetailModelState;
}
