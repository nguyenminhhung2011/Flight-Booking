part of 'flight_detail_bloc.dart';

@freezed
class FlightDetailState with _$FlightDetailState {
  const FlightDetailState._();
  const factory FlightDetailState.initial({
    required FlightDetailModelState data,
  }) = _Initial;
  const factory FlightDetailState.loading({
    required FlightDetailModelState data,
    required int loadingField,
  }) = _Loading;

  const factory FlightDetailState.getFlightByIdSuccess({
    required FlightDetailModelState data,
  }) = _GetFlightByIdSuccess;

  const factory FlightDetailState.getFlightByIdFailed({
    required FlightDetailModelState data,
    required String message,
  }) = _GetFlightByIdFailed;

  bool get loadingGetFlight => maybeWhen(
      orElse: () => false, loading: (data, loadingField) => loadingField == 0);
}
