// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_mobile_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchMobileModelState {
  String get textSearch => throw _privateConstructorUsedError;
  bool get isGridView => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchMobileModelStateCopyWith<SearchMobileModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchMobileModelStateCopyWith<$Res> {
  factory $SearchMobileModelStateCopyWith(SearchMobileModelState value,
          $Res Function(SearchMobileModelState) then) =
      _$SearchMobileModelStateCopyWithImpl<$Res, SearchMobileModelState>;
  @useResult
  $Res call({String textSearch, bool isGridView});
}

/// @nodoc
class _$SearchMobileModelStateCopyWithImpl<$Res,
        $Val extends SearchMobileModelState>
    implements $SearchMobileModelStateCopyWith<$Res> {
  _$SearchMobileModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textSearch = null,
    Object? isGridView = null,
  }) {
    return _then(_value.copyWith(
      textSearch: null == textSearch
          ? _value.textSearch
          : textSearch // ignore: cast_nullable_to_non_nullable
              as String,
      isGridView: null == isGridView
          ? _value.isGridView
          : isGridView // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchMobileModelStateCopyWith<$Res>
    implements $SearchMobileModelStateCopyWith<$Res> {
  factory _$$_SearchMobileModelStateCopyWith(_$_SearchMobileModelState value,
          $Res Function(_$_SearchMobileModelState) then) =
      __$$_SearchMobileModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String textSearch, bool isGridView});
}

/// @nodoc
class __$$_SearchMobileModelStateCopyWithImpl<$Res>
    extends _$SearchMobileModelStateCopyWithImpl<$Res,
        _$_SearchMobileModelState>
    implements _$$_SearchMobileModelStateCopyWith<$Res> {
  __$$_SearchMobileModelStateCopyWithImpl(_$_SearchMobileModelState _value,
      $Res Function(_$_SearchMobileModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textSearch = null,
    Object? isGridView = null,
  }) {
    return _then(_$_SearchMobileModelState(
      textSearch: null == textSearch
          ? _value.textSearch
          : textSearch // ignore: cast_nullable_to_non_nullable
              as String,
      isGridView: null == isGridView
          ? _value.isGridView
          : isGridView // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SearchMobileModelState implements _SearchMobileModelState {
  const _$_SearchMobileModelState(
      {required this.textSearch, required this.isGridView});

  @override
  final String textSearch;
  @override
  final bool isGridView;

  @override
  String toString() {
    return 'SearchMobileModelState(textSearch: $textSearch, isGridView: $isGridView)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchMobileModelState &&
            (identical(other.textSearch, textSearch) ||
                other.textSearch == textSearch) &&
            (identical(other.isGridView, isGridView) ||
                other.isGridView == isGridView));
  }

  @override
  int get hashCode => Object.hash(runtimeType, textSearch, isGridView);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchMobileModelStateCopyWith<_$_SearchMobileModelState> get copyWith =>
      __$$_SearchMobileModelStateCopyWithImpl<_$_SearchMobileModelState>(
          this, _$identity);
}

abstract class _SearchMobileModelState implements SearchMobileModelState {
  const factory _SearchMobileModelState(
      {required final String textSearch,
      required final bool isGridView}) = _$_SearchMobileModelState;

  @override
  String get textSearch;
  @override
  bool get isGridView;
  @override
  @JsonKey(ignore: true)
  _$$_SearchMobileModelStateCopyWith<_$_SearchMobileModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
