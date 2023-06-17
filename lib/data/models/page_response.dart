import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_response.g.dart';

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class PageResponse<T> {
  @JsonKey(name: "currentPage")
  final int currentPage;
  @JsonKey(name: "pageSize")
  final int pageSize;
  @JsonKey(name: "totalPages")
  final int totalPages;
  @JsonKey(name: "responseData")
  final List<T> responseData;

  PageResponse({
    required this.currentPage,
    required this.pageSize,
    required this.totalPages,
    required this.responseData,
  });
  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$PageResponseToJson(this, toJsonT);

  factory PageResponse.fromJson(
      Map<String, dynamic> json, T Function(Object?) fromT) {
    return _$PageResponseFromJson(json, fromT);
  }
}
