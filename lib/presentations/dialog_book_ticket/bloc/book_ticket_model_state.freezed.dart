// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_ticket_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BTModelState {
  int get indexView => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BTModelStateCopyWith<BTModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BTModelStateCopyWith<$Res> {
  factory $BTModelStateCopyWith(
          BTModelState value, $Res Function(BTModelState) then) =
      _$BTModelStateCopyWithImpl<$Res, BTModelState>;
  @useResult
  $Res call({int indexView});
}

/// @nodoc
class _$BTModelStateCopyWithImpl<$Res, $Val extends BTModelState>
    implements $BTModelStateCopyWith<$Res> {
  _$BTModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexView = null,
  }) {
    return _then(_value.copyWith(
      indexView: null == indexView
          ? _value.indexView
          : indexView // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BTModelStateCopyWith<$Res>
    implements $BTModelStateCopyWith<$Res> {
  factory _$$_BTModelStateCopyWith(
          _$_BTModelState value, $Res Function(_$_BTModelState) then) =
      __$$_BTModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int indexView});
}

/// @nodoc
class __$$_BTModelStateCopyWithImpl<$Res>
    extends _$BTModelStateCopyWithImpl<$Res, _$_BTModelState>
    implements _$$_BTModelStateCopyWith<$Res> {
  __$$_BTModelStateCopyWithImpl(
      _$_BTModelState _value, $Res Function(_$_BTModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexView = null,
  }) {
    return _then(_$_BTModelState(
      indexView: null == indexView
          ? _value.indexView
          : indexView // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BTModelState implements _BTModelState {
  const _$_BTModelState({required this.indexView});

  @override
  final int indexView;

  @override
  String toString() {
    return 'BTModelState(indexView: $indexView)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BTModelState &&
            (identical(other.indexView, indexView) ||
                other.indexView == indexView));
  }

  @override
  int get hashCode => Object.hash(runtimeType, indexView);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BTModelStateCopyWith<_$_BTModelState> get copyWith =>
      __$$_BTModelStateCopyWithImpl<_$_BTModelState>(this, _$identity);
}

abstract class _BTModelState implements BTModelState {
  const factory _BTModelState({required final int indexView}) = _$_BTModelState;

  @override
  int get indexView;
  @override
  @JsonKey(ignore: true)
  _$$_BTModelStateCopyWith<_$_BTModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
