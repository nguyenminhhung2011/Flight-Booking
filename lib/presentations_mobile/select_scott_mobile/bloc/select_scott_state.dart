part of 'select_scott_bloc.dart';

@freezed
class SelectScottState with _$SelectScottState {
  const SelectScottState._();

  const factory SelectScottState.initial({
    required SelectScottModelState data,
  }) = _Initial;

  const factory SelectScottState.loading({
    required SelectScottModelState data,
    required int groupLoading,
  }) = _Loading;

  const factory SelectScottState.getTicInformationSuccess({
    required SelectScottModelState data,
  }) = _GetTicInformationSuccess;

  const factory SelectScottState.getTicInformationFailed({
    required SelectScottModelState data,
    required String message,
  }) = _GetTicInformationFailed;

  const factory SelectScottState.getAllTicOfFlightSuccess({
    required SelectScottModelState data,
  }) = _GetAllTicOfFlightSuccess;

  const factory SelectScottState.getAllTicOfFlightFailed({
    required SelectScottModelState data,
    required String message,
  }) = _GetAllTicOfFlightFailed;

  const factory SelectScottState.getFlightByIdSuccess({
    required SelectScottModelState data,
  }) = _GetFlightByIdSuccess;

  const factory SelectScottState.getFlightByIdFailed({
    required SelectScottModelState data,
    required String message,
  }) = _GetFlightByIdFailed;

  const factory SelectScottState.selectedSeatSuccess({
    required SelectScottModelState data,
    required int ticIndex,
  }) = _SelectedSeatSuccess;

  const factory SelectScottState.selectedSeatFailed({
    required SelectScottModelState data,
  }) = _SelectedSeatFailed;

  const factory SelectScottState.changeTabSuccess({
    required SelectScottModelState data,
  }) = _ChangeTabSuccess;

  const factory SelectScottState.removeTic({
    required SelectScottModelState data,
  }) = _RemoveTic;
  const factory SelectScottState.addNewTic({
    required SelectScottModelState data,
  }) = _AddNewTic;
  const factory SelectScottState.selectTic({
    required SelectScottModelState data,
  }) = _SelectTic;

  const factory SelectScottState.addTicToDBSuccess({
    required SelectScottModelState data,
    required int paymentId,
  }) = _AddTicToDBSuccess;

  const factory SelectScottState.addTicToDBFailed({
    required SelectScottModelState data,
    required String message,
  }) = _AddTicToDBFailed;

  bool get loading => maybeWhen(orElse: ()=> false , loading: (data, group)=> group == 0);
  bool get loadingAdd => maybeWhen(orElse: ()=> false , loading: (data, group)=> group ==5);
}
