import 'package:json_annotation/json_annotation.dart';
part 'payment_success_response.g.dart';

@JsonSerializable(explicitToJson: false)
class PaymentSuccessResponse {
  @JsonKey(name: "success")
  final bool success;

  PaymentSuccessResponse(this.success);

  Map<String, dynamic> toJson() => _$PaymentSuccessResponseToJson(this);

  factory PaymentSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentSuccessResponseFromJson(json);
}
