import 'package:equatable/equatable.dart';
import 'package:flight_booking/core/components/network/app_exception.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ApiResponse<T> extends Equatable {
  final int code;
  final String message;
  final String? link;
  final bool success;

  @JsonKey(name: 'data', includeIfNull: false)
  final T? _data;

  const ApiResponse({
    T? data,
    this.code = 500,
    this.message = "",
    this.link,
    this.success = false,
  }) : _data = data;

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$ApiResponseToJson(this, toJsonT);

  factory ApiResponse.fromJson(
      Map<String, dynamic> json, T Function(Object?) fromT) {
    return _$ApiResponseFromJson(json, fromT);
  }

  @override
  List<Object> get props => [];

  T get data => _getData();

  T _getData() {
    if (0 != code && (message?.isNotEmpty ?? false || _data == null)) {
      throw AppException(message: message!);
    }
    return _data as T;
  }
}
