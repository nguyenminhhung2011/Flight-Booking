part of 'search_mobile_bloc.dart';

@freezed
class SearchMobileEvent with _$SearchMobileEvent {
  const factory SearchMobileEvent.onStarted() = _Started;
  const factory SearchMobileEvent.textChange({required String text}) =
      _TextChange;
  const factory SearchMobileEvent.loadingComplete() = _LoadingComplete;
  const factory SearchMobileEvent.getDatabyText() = _GetDataByText;
  const factory SearchMobileEvent.changeTypeView() = _ChangeTypeView;
}
