import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_ticket_model_state.freezed.dart';

@freezed
class BTModelState with _$BTModelState {
  const factory BTModelState({
    required int indexView,
  }) = _BTModelState;
}
