// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PageResponseEntity<T> {
  int get currentPage => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  List<T> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageResponseEntityCopyWith<T, PageResponseEntity<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageResponseEntityCopyWith<T, $Res> {
  factory $PageResponseEntityCopyWith(PageResponseEntity<T> value,
          $Res Function(PageResponseEntity<T>) then) =
      _$PageResponseEntityCopyWithImpl<T, $Res, PageResponseEntity<T>>;
  @useResult
  $Res call({int currentPage, int pageSize, int totalPages, List<T> data});
}

/// @nodoc
class _$PageResponseEntityCopyWithImpl<T, $Res,
        $Val extends PageResponseEntity<T>>
    implements $PageResponseEntityCopyWith<T, $Res> {
  _$PageResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? pageSize = null,
    Object? totalPages = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PageResponseEntityCopyWith<T, $Res>
    implements $PageResponseEntityCopyWith<T, $Res> {
  factory _$$_PageResponseEntityCopyWith(_$_PageResponseEntity<T> value,
          $Res Function(_$_PageResponseEntity<T>) then) =
      __$$_PageResponseEntityCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int currentPage, int pageSize, int totalPages, List<T> data});
}

/// @nodoc
class __$$_PageResponseEntityCopyWithImpl<T, $Res>
    extends _$PageResponseEntityCopyWithImpl<T, $Res, _$_PageResponseEntity<T>>
    implements _$$_PageResponseEntityCopyWith<T, $Res> {
  __$$_PageResponseEntityCopyWithImpl(_$_PageResponseEntity<T> _value,
      $Res Function(_$_PageResponseEntity<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? pageSize = null,
    Object? totalPages = null,
    Object? data = null,
  }) {
    return _then(_$_PageResponseEntity<T>(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$_PageResponseEntity<T> implements _PageResponseEntity<T> {
  const _$_PageResponseEntity(
      {required this.currentPage,
      required this.pageSize,
      required this.totalPages,
      required final List<T> data})
      : _data = data;

  @override
  final int currentPage;
  @override
  final int pageSize;
  @override
  final int totalPages;
  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PageResponseEntity<$T>(currentPage: $currentPage, pageSize: $pageSize, totalPages: $totalPages, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageResponseEntity<T> &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPage, pageSize,
      totalPages, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PageResponseEntityCopyWith<T, _$_PageResponseEntity<T>> get copyWith =>
      __$$_PageResponseEntityCopyWithImpl<T, _$_PageResponseEntity<T>>(
          this, _$identity);
}

abstract class _PageResponseEntity<T> implements PageResponseEntity<T> {
  const factory _PageResponseEntity(
      {required final int currentPage,
      required final int pageSize,
      required final int totalPages,
      required final List<T> data}) = _$_PageResponseEntity<T>;

  @override
  int get currentPage;
  @override
  int get pageSize;
  @override
  int get totalPages;
  @override
  List<T> get data;
  @override
  @JsonKey(ignore: true)
  _$$_PageResponseEntityCopyWith<T, _$_PageResponseEntity<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
