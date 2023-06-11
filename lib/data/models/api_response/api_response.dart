import 'package:equatable/equatable.dart';
import 'package:flight_booking/core/components/network/app_exception.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ApiResponse<T> extends Equatable {
  final int? code;
  final String? message;

  @JsonKey(name: 'data', includeIfNull: false)
  final T? _data;

  final String? link;

  const ApiResponse({
    T? data,
    this.code,
    this.message,
    this.link,
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
