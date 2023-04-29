part of 'add_edit_flight_bloc.dart';

@freezed
class AddEditFlightState with _$AddEditFlightState {
  const AddEditFlightState._();

  const factory AddEditFlightState.initial(
      {required AddEditFlightModelState data}) = _Initial;

  const factory AddEditFlightState.loading(
      {required AddEditFlightModelState data}) = _Loading;
}
