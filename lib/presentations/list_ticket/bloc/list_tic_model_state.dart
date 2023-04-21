import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/ticket/ticket.dart';

part 'list_tic_model_state.freezed.dart';

@freezed
class ListTicModelState with _$ListTicModelState {
  const factory ListTicModelState({
    required List<Ticket> tickets,
  }) = _ListTicModelState;
}
