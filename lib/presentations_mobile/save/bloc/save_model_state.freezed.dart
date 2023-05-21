// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SaveModelState {
  int get tab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaveModelStateCopyWith<SaveModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveModelStateCopyWith<$Res> {
  factory $SaveModelStateCopyWith(
          SaveModelState value, $Res Function(SaveModelState) then) =
      _$SaveModelStateCopyWithImpl<$Res, SaveModelState>;
  @useResult
  $Res call({int tab});
}

/// @nodoc
class _$SaveModelStateCopyWithImpl<$Res, $Val extends SaveModelState>
    implements $SaveModelStateCopyWith<$Res> {
  _$SaveModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = null,
  }) {
    return _then(_value.copyWith(
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SaveModelStateCopyWith<$Res>
    implements $SaveModelStateCopyWith<$Res> {
  factory _$$_SaveModelStateCopyWith(
          _$_SaveModelState value, $Res Function(_$_SaveModelState) then) =
      __$$_SaveModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tab});
}

/// @nodoc
class __$$_SaveModelStateCopyWithImpl<$Res>
    extends _$SaveModelStateCopyWithImpl<$Res, _$_SaveModelState>
    implements _$$_SaveModelStateCopyWith<$Res> {
  __$$_SaveModelStateCopyWithImpl(
      _$_SaveModelState _value, $Res Function(_$_SaveModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = null,
  }) {
    return _then(_$_SaveModelState(
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SaveModelState implements _SaveModelState {
  const _$_SaveModelState({required this.tab});

  @override
  final int tab;

  @override
  String toString() {
    return 'SaveModelState(tab: $tab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveModelState &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveModelStateCopyWith<_$_SaveModelState> get copyWith =>
      __$$_SaveModelStateCopyWithImpl<_$_SaveModelState>(this, _$identity);
}

abstract class _SaveModelState implements SaveModelState {
  const factory _SaveModelState({required final int tab}) = _$_SaveModelState;

  @override
  int get tab;
  @override
  @JsonKey(ignore: true)
  _$$_SaveModelStateCopyWith<_$_SaveModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
