import 'package:freezed_annotation/freezed_annotation.dart';

part 'airport_detail_mobile_model_state.freezed.dart';

@freezed
class AirportDetailMobileModelState with _$AirportDetailMobileModelState {
  const factory AirportDetailMobileModelState({
    required int tabIndex,
  }) = _AirportDetailMobileModelState;
}
