import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_mobile_model_state.freezed.dart';

@freezed
class SearchMobileModelState with _$SearchMobileModelState {
  const factory SearchMobileModelState({
    required String textSearch,
    required bool isGridView,
  }) = _SearchMobileModelState;
}
