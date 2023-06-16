import 'package:freezed_annotation/freezed_annotation.dart';
part 'authenticate_response_model.g.dart';
part 'authenticate_response_model.freezed.dart';

@freezed
class AuthenticateResponse with _$AuthenticateResponse {
  const factory AuthenticateResponse({
    @Default("") String message,
    @Default(false) bool isSuccess,
    @Default("") String token,
  }) = _AuthenticateResponse;
  factory AuthenticateResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthenticateResponseFromJson(json);
}
