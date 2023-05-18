part of 'airport_detail_mobile_bloc.dart';

@freezed
class AirportDetailMobileState with _$AirportDetailMobileState {
  const AirportDetailMobileState._();

  const factory AirportDetailMobileState.initial({
    required AirportDetailMobileModelState data,
  }) = _Initial;

  const factory AirportDetailMobileState.loading({
    required AirportDetailMobileModelState data,
  }) = _Loading;

  bool get isLoading => this is _Loading;
}
