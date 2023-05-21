import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model_state.freezed.dart';

@freezed
class AuthModelState with _$AuthModelState {
  const factory AuthModelState() = _AuthModelState;
}
