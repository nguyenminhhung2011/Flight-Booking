// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingModelState {
  int get currentPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingModelStateCopyWith<SettingModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingModelStateCopyWith<$Res> {
  factory $SettingModelStateCopyWith(
          SettingModelState value, $Res Function(SettingModelState) then) =
      _$SettingModelStateCopyWithImpl<$Res, SettingModelState>;
  @useResult
  $Res call({int currentPage});
}

/// @nodoc
class _$SettingModelStateCopyWithImpl<$Res, $Val extends SettingModelState>
    implements $SettingModelStateCopyWith<$Res> {
  _$SettingModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingModelStateCopyWith<$Res>
    implements $SettingModelStateCopyWith<$Res> {
  factory _$$_SettingModelStateCopyWith(_$_SettingModelState value,
          $Res Function(_$_SettingModelState) then) =
      __$$_SettingModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentPage});
}

/// @nodoc
class __$$_SettingModelStateCopyWithImpl<$Res>
    extends _$SettingModelStateCopyWithImpl<$Res, _$_SettingModelState>
    implements _$$_SettingModelStateCopyWith<$Res> {
  __$$_SettingModelStateCopyWithImpl(
      _$_SettingModelState _value, $Res Function(_$_SettingModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
  }) {
    return _then(_$_SettingModelState(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SettingModelState implements _SettingModelState {
  const _$_SettingModelState({required this.currentPage});

  @override
  final int currentPage;

  @override
  String toString() {
    return 'SettingModelState(currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingModelState &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingModelStateCopyWith<_$_SettingModelState> get copyWith =>
      __$$_SettingModelStateCopyWithImpl<_$_SettingModelState>(
          this, _$identity);
}

abstract class _SettingModelState implements SettingModelState {
  const factory _SettingModelState({required final int currentPage}) =
      _$_SettingModelState;

  @override
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$_SettingModelStateCopyWith<_$_SettingModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
