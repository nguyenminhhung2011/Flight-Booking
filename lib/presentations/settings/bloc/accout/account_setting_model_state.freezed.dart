// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_setting_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountSettingModelState {
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountSettingModelStateCopyWith<AccountSettingModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSettingModelStateCopyWith<$Res> {
  factory $AccountSettingModelStateCopyWith(AccountSettingModelState value,
          $Res Function(AccountSettingModelState) then) =
      _$AccountSettingModelStateCopyWithImpl<$Res, AccountSettingModelState>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$AccountSettingModelStateCopyWithImpl<$Res,
        $Val extends AccountSettingModelState>
    implements $AccountSettingModelStateCopyWith<$Res> {
  _$AccountSettingModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountSettingModelStateCopyWith<$Res>
    implements $AccountSettingModelStateCopyWith<$Res> {
  factory _$$_AccountSettingModelStateCopyWith(
          _$_AccountSettingModelState value,
          $Res Function(_$_AccountSettingModelState) then) =
      __$$_AccountSettingModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_AccountSettingModelStateCopyWithImpl<$Res>
    extends _$AccountSettingModelStateCopyWithImpl<$Res,
        _$_AccountSettingModelState>
    implements _$$_AccountSettingModelStateCopyWith<$Res> {
  __$$_AccountSettingModelStateCopyWithImpl(_$_AccountSettingModelState _value,
      $Res Function(_$_AccountSettingModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_AccountSettingModelState(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AccountSettingModelState implements _AccountSettingModelState {
  const _$_AccountSettingModelState({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'AccountSettingModelState(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountSettingModelState &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountSettingModelStateCopyWith<_$_AccountSettingModelState>
      get copyWith => __$$_AccountSettingModelStateCopyWithImpl<
          _$_AccountSettingModelState>(this, _$identity);
}

abstract class _AccountSettingModelState implements AccountSettingModelState {
  const factory _AccountSettingModelState({required final String password}) =
      _$_AccountSettingModelState;

  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_AccountSettingModelStateCopyWith<_$_AccountSettingModelState>
      get copyWith => throw _privateConstructorUsedError;
}
