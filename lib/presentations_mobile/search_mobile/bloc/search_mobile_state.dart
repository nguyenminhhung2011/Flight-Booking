part of 'search_mobile_bloc.dart';

@freezed
class SearchMobileState with _$SearchMobileState {
  const SearchMobileState._();

  const factory SearchMobileState.initial({
    required SearchMobileModelState data,
  }) = _Initial;

  const factory SearchMobileState.loading({
    required SearchMobileModelState data,
  }) = _Loading;

  const factory SearchMobileState.searchSuccess({
    required SearchMobileModelState data,
  }) = _SearchSuccess;

  const factory SearchMobileState.searchFailed({
    required SearchMobileModelState data,
    required String message,
  }) = _SearchFailed;

  bool get isLoading => this is _Loading;
}
