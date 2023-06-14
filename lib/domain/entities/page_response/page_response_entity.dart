import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_response_entity.freezed.dart';

@freezed
class PageResponseEntity<T> with _$PageResponseEntity {
  const factory PageResponseEntity({
    required int currentPage,
    required int pageSize,
    required int totalPages,
    required List<T> data,
  }) = _PageResponseEntity;
}
