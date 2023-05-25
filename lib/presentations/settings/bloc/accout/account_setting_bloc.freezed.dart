// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_setting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountSettingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() fetchUserData,
    required TResult Function(
            String password, String newPassword, String retypePassword)
        updateUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? fetchUserData,
    TResult? Function(
            String password, String newPassword, String retypePassword)?
        updateUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? fetchUserData,
    TResult Function(
            String password, String newPassword, String retypePassword)?
        updateUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_FetchUserData value) fetchUserData,
    required TResult Function(_UpdateUserData value) updateUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_FetchUserData value)? fetchUserData,
    TResult? Function(_UpdateUserData value)? updateUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_FetchUserData value)? fetchUserData,
    TResult Function(_UpdateUserData value)? updateUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSettingEventCopyWith<$Res> {
  factory $AccountSettingEventCopyWith(
          AccountSettingEvent value, $Res Function(AccountSettingEvent) then) =
      _$AccountSettingEventCopyWithImpl<$Res, AccountSettingEvent>;
}

/// @nodoc
class _$AccountSettingEventCopyWithImpl<$Res, $Val extends AccountSettingEvent>
    implements $AccountSettingEventCopyWith<$Res> {
  _$AccountSettingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OnStartedCopyWith<$Res> {
  factory _$$_OnStartedCopyWith(
          _$_OnStarted value, $Res Function(_$_OnStarted) then) =
      __$$_OnStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnStartedCopyWithImpl<$Res>
    extends _$AccountSettingEventCopyWithImpl<$Res, _$_OnStarted>
    implements _$$_OnStartedCopyWith<$Res> {
  __$$_OnStartedCopyWithImpl(
      _$_OnStarted _value, $Res Function(_$_OnStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnStarted extends _OnStarted {
  const _$_OnStarted() : super._();

  @override
  String toString() {
    return 'AccountSettingEvent.onStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() fetchUserData,
    required TResult Function(
            String password, String newPassword, String retypePassword)
        updateUserData,
  }) {
    return onStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? fetchUserData,
    TResult? Function(
            String password, String newPassword, String retypePassword)?
        updateUserData,
  }) {
    return onStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? fetchUserData,
    TResult Function(
            String password, String newPassword, String retypePassword)?
        updateUserData,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_FetchUserData value) fetchUserData,
    required TResult Function(_UpdateUserData value) updateUserData,
  }) {
    return onStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_FetchUserData value)? fetchUserData,
    TResult? Function(_UpdateUserData value)? updateUserData,
  }) {
    return onStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_FetchUserData value)? fetchUserData,
    TResult Function(_UpdateUserData value)? updateUserData,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(this);
    }
    return orElse();
  }
}

abstract class _OnStarted extends AccountSettingEvent {
  const factory _OnStarted() = _$_OnStarted;
  const _OnStarted._() : super._();
}

/// @nodoc
abstract class _$$_FetchUserDataCopyWith<$Res> {
  factory _$$_FetchUserDataCopyWith(
          _$_FetchUserData value, $Res Function(_$_FetchUserData) then) =
      __$$_FetchUserDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchUserDataCopyWithImpl<$Res>
    extends _$AccountSettingEventCopyWithImpl<$Res, _$_FetchUserData>
    implements _$$_FetchUserDataCopyWith<$Res> {
  __$$_FetchUserDataCopyWithImpl(
      _$_FetchUserData _value, $Res Function(_$_FetchUserData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchUserData extends _FetchUserData {
  const _$_FetchUserData() : super._();

  @override
  String toString() {
    return 'AccountSettingEvent.fetchUserData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchUserData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() fetchUserData,
    required TResult Function(
            String password, String newPassword, String retypePassword)
        updateUserData,
  }) {
    return fetchUserData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? fetchUserData,
    TResult? Function(
            String password, String newPassword, String retypePassword)?
        updateUserData,
  }) {
    return fetchUserData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? fetchUserData,
    TResult Function(
            String password, String newPassword, String retypePassword)?
        updateUserData,
    required TResult orElse(),
  }) {
    if (fetchUserData != null) {
      return fetchUserData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_FetchUserData value) fetchUserData,
    required TResult Function(_UpdateUserData value) updateUserData,
  }) {
    return fetchUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_FetchUserData value)? fetchUserData,
    TResult? Function(_UpdateUserData value)? updateUserData,
  }) {
    return fetchUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_FetchUserData value)? fetchUserData,
    TResult Function(_UpdateUserData value)? updateUserData,
    required TResult orElse(),
  }) {
    if (fetchUserData != null) {
      return fetchUserData(this);
    }
    return orElse();
  }
}

abstract class _FetchUserData extends AccountSettingEvent {
  const factory _FetchUserData() = _$_FetchUserData;
  const _FetchUserData._() : super._();
}

/// @nodoc
abstract class _$$_UpdateUserDataCopyWith<$Res> {
  factory _$$_UpdateUserDataCopyWith(
          _$_UpdateUserData value, $Res Function(_$_UpdateUserData) then) =
      __$$_UpdateUserDataCopyWithImpl<$Res>;
  @useResult
  $Res call({String password, String newPassword, String retypePassword});
}

/// @nodoc
class __$$_UpdateUserDataCopyWithImpl<$Res>
    extends _$AccountSettingEventCopyWithImpl<$Res, _$_UpdateUserData>
    implements _$$_UpdateUserDataCopyWith<$Res> {
  __$$_UpdateUserDataCopyWithImpl(
      _$_UpdateUserData _value, $Res Function(_$_UpdateUserData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? newPassword = null,
    Object? retypePassword = null,
  }) {
    return _then(_$_UpdateUserData(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      retypePassword: null == retypePassword
          ? _value.retypePassword
          : retypePassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateUserData extends _UpdateUserData {
  const _$_UpdateUserData(
      {required this.password,
      required this.newPassword,
      required this.retypePassword})
      : super._();

  @override
  final String password;
  @override
  final String newPassword;
  @override
  final String retypePassword;

  @override
  String toString() {
    return 'AccountSettingEvent.updateUserData(password: $password, newPassword: $newPassword, retypePassword: $retypePassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUserData &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.retypePassword, retypePassword) ||
                other.retypePassword == retypePassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, password, newPassword, retypePassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateUserDataCopyWith<_$_UpdateUserData> get copyWith =>
      __$$_UpdateUserDataCopyWithImpl<_$_UpdateUserData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() fetchUserData,
    required TResult Function(
            String password, String newPassword, String retypePassword)
        updateUserData,
  }) {
    return updateUserData(password, newPassword, retypePassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? fetchUserData,
    TResult? Function(
            String password, String newPassword, String retypePassword)?
        updateUserData,
  }) {
    return updateUserData?.call(password, newPassword, retypePassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? fetchUserData,
    TResult Function(
            String password, String newPassword, String retypePassword)?
        updateUserData,
    required TResult orElse(),
  }) {
    if (updateUserData != null) {
      return updateUserData(password, newPassword, retypePassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_FetchUserData value) fetchUserData,
    required TResult Function(_UpdateUserData value) updateUserData,
  }) {
    return updateUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_FetchUserData value)? fetchUserData,
    TResult? Function(_UpdateUserData value)? updateUserData,
  }) {
    return updateUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_FetchUserData value)? fetchUserData,
    TResult Function(_UpdateUserData value)? updateUserData,
    required TResult orElse(),
  }) {
    if (updateUserData != null) {
      return updateUserData(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserData extends AccountSettingEvent {
  const factory _UpdateUserData(
      {required final String password,
      required final String newPassword,
      required final String retypePassword}) = _$_UpdateUserData;
  const _UpdateUserData._() : super._();

  String get password;
  String get newPassword;
  String get retypePassword;
  @JsonKey(ignore: true)
  _$$_UpdateUserDataCopyWith<_$_UpdateUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountSettingState {
  AccountSettingModelState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountSettingModelState data) initial,
    required TResult Function(AccountSettingModelState data) loading,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataSuccess,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataFailed,
    required TResult Function(AccountSettingModelState data)
        updateUserDataSuccess,
    required TResult Function(AccountSettingModelState data)
        updateUserDataFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountSettingModelState data)? initial,
    TResult? Function(AccountSettingModelState data)? loading,
    TResult? Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult? Function(AccountSettingModelState data)? fetchUserDataFailed,
    TResult? Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult? Function(AccountSettingModelState data)? updateUserDataFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountSettingModelState data)? initial,
    TResult Function(AccountSettingModelState data)? loading,
    TResult Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult Function(AccountSettingModelState data)? fetchUserDataFailed,
    TResult Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult Function(AccountSettingModelState data)? updateUserDataFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchUserDataSuccess value) fetchUserDataSuccess,
    required TResult Function(_FetchUserDataFailed value) fetchUserDataFailed,
    required TResult Function(_UpdateUserDataSuccess value)
        updateUserDataSuccess,
    required TResult Function(_UpdateUserDataFailed value) updateUserDataFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult? Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult? Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult? Function(_UpdateUserDataFailed value)? updateUserDataFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountSettingStateCopyWith<AccountSettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSettingStateCopyWith<$Res> {
  factory $AccountSettingStateCopyWith(
          AccountSettingState value, $Res Function(AccountSettingState) then) =
      _$AccountSettingStateCopyWithImpl<$Res, AccountSettingState>;
  @useResult
  $Res call({AccountSettingModelState data});

  $AccountSettingModelStateCopyWith<$Res> get data;
}

/// @nodoc
class _$AccountSettingStateCopyWithImpl<$Res, $Val extends AccountSettingState>
    implements $AccountSettingStateCopyWith<$Res> {
  _$AccountSettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AccountSettingModelState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountSettingModelStateCopyWith<$Res> get data {
    return $AccountSettingModelStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $AccountSettingStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountSettingModelState data});

  @override
  $AccountSettingModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AccountSettingStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Initial(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AccountSettingModelState,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final AccountSettingModelState data;

  @override
  String toString() {
    return 'AccountSettingState.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountSettingModelState data) initial,
    required TResult Function(AccountSettingModelState data) loading,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataSuccess,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataFailed,
    required TResult Function(AccountSettingModelState data)
        updateUserDataSuccess,
    required TResult Function(AccountSettingModelState data)
        updateUserDataFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountSettingModelState data)? initial,
    TResult? Function(AccountSettingModelState data)? loading,
    TResult? Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult? Function(AccountSettingModelState data)? fetchUserDataFailed,
    TResult? Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult? Function(AccountSettingModelState data)? updateUserDataFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountSettingModelState data)? initial,
    TResult Function(AccountSettingModelState data)? loading,
    TResult Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult Function(AccountSettingModelState data)? fetchUserDataFailed,
    TResult Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult Function(AccountSettingModelState data)? updateUserDataFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchUserDataSuccess value) fetchUserDataSuccess,
    required TResult Function(_FetchUserDataFailed value) fetchUserDataFailed,
    required TResult Function(_UpdateUserDataSuccess value)
        updateUserDataSuccess,
    required TResult Function(_UpdateUserDataFailed value) updateUserDataFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult? Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult? Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult? Function(_UpdateUserDataFailed value)? updateUserDataFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends AccountSettingState {
  const factory _Initial({required final AccountSettingModelState data}) =
      _$_Initial;
  const _Initial._() : super._();

  @override
  AccountSettingModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $AccountSettingStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountSettingModelState data});

  @override
  $AccountSettingModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AccountSettingStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Loading(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AccountSettingModelState,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final AccountSettingModelState data;

  @override
  String toString() {
    return 'AccountSettingState.loading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountSettingModelState data) initial,
    required TResult Function(AccountSettingModelState data) loading,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataSuccess,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataFailed,
    required TResult Function(AccountSettingModelState data)
        updateUserDataSuccess,
    required TResult Function(AccountSettingModelState data)
        updateUserDataFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountSettingModelState data)? initial,
    TResult? Function(AccountSettingModelState data)? loading,
    TResult? Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult? Function(AccountSettingModelState data)? fetchUserDataFailed,
    TResult? Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult? Function(AccountSettingModelState data)? updateUserDataFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountSettingModelState data)? initial,
    TResult Function(AccountSettingModelState data)? loading,
    TResult Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult Function(AccountSettingModelState data)? fetchUserDataFailed,
    TResult Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult Function(AccountSettingModelState data)? updateUserDataFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchUserDataSuccess value) fetchUserDataSuccess,
    required TResult Function(_FetchUserDataFailed value) fetchUserDataFailed,
    required TResult Function(_UpdateUserDataSuccess value)
        updateUserDataSuccess,
    required TResult Function(_UpdateUserDataFailed value) updateUserDataFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult? Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult? Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult? Function(_UpdateUserDataFailed value)? updateUserDataFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends AccountSettingState {
  const factory _Loading({required final AccountSettingModelState data}) =
      _$_Loading;
  const _Loading._() : super._();

  @override
  AccountSettingModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchUserDataSuccessCopyWith<$Res>
    implements $AccountSettingStateCopyWith<$Res> {
  factory _$$_FetchUserDataSuccessCopyWith(_$_FetchUserDataSuccess value,
          $Res Function(_$_FetchUserDataSuccess) then) =
      __$$_FetchUserDataSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountSettingModelState data});

  @override
  $AccountSettingModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FetchUserDataSuccessCopyWithImpl<$Res>
    extends _$AccountSettingStateCopyWithImpl<$Res, _$_FetchUserDataSuccess>
    implements _$$_FetchUserDataSuccessCopyWith<$Res> {
  __$$_FetchUserDataSuccessCopyWithImpl(_$_FetchUserDataSuccess _value,
      $Res Function(_$_FetchUserDataSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_FetchUserDataSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AccountSettingModelState,
    ));
  }
}

/// @nodoc

class _$_FetchUserDataSuccess extends _FetchUserDataSuccess {
  const _$_FetchUserDataSuccess({required this.data}) : super._();

  @override
  final AccountSettingModelState data;

  @override
  String toString() {
    return 'AccountSettingState.fetchUserDataSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchUserDataSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchUserDataSuccessCopyWith<_$_FetchUserDataSuccess> get copyWith =>
      __$$_FetchUserDataSuccessCopyWithImpl<_$_FetchUserDataSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountSettingModelState data) initial,
    required TResult Function(AccountSettingModelState data) loading,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataSuccess,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataFailed,
    required TResult Function(AccountSettingModelState data)
        updateUserDataSuccess,
    required TResult Function(AccountSettingModelState data)
        updateUserDataFailed,
  }) {
    return fetchUserDataSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountSettingModelState data)? initial,
    TResult? Function(AccountSettingModelState data)? loading,
    TResult? Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult? Function(AccountSettingModelState data)? fetchUserDataFailed,
    TResult? Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult? Function(AccountSettingModelState data)? updateUserDataFailed,
  }) {
    return fetchUserDataSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountSettingModelState data)? initial,
    TResult Function(AccountSettingModelState data)? loading,
    TResult Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult Function(AccountSettingModelState data)? fetchUserDataFailed,
    TResult Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult Function(AccountSettingModelState data)? updateUserDataFailed,
    required TResult orElse(),
  }) {
    if (fetchUserDataSuccess != null) {
      return fetchUserDataSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchUserDataSuccess value) fetchUserDataSuccess,
    required TResult Function(_FetchUserDataFailed value) fetchUserDataFailed,
    required TResult Function(_UpdateUserDataSuccess value)
        updateUserDataSuccess,
    required TResult Function(_UpdateUserDataFailed value) updateUserDataFailed,
  }) {
    return fetchUserDataSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult? Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult? Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult? Function(_UpdateUserDataFailed value)? updateUserDataFailed,
  }) {
    return fetchUserDataSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    required TResult orElse(),
  }) {
    if (fetchUserDataSuccess != null) {
      return fetchUserDataSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchUserDataSuccess extends AccountSettingState {
  const factory _FetchUserDataSuccess(
      {required final AccountSettingModelState data}) = _$_FetchUserDataSuccess;
  const _FetchUserDataSuccess._() : super._();

  @override
  AccountSettingModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_FetchUserDataSuccessCopyWith<_$_FetchUserDataSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchUserDataFailedCopyWith<$Res>
    implements $AccountSettingStateCopyWith<$Res> {
  factory _$$_FetchUserDataFailedCopyWith(_$_FetchUserDataFailed value,
          $Res Function(_$_FetchUserDataFailed) then) =
      __$$_FetchUserDataFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountSettingModelState data});

  @override
  $AccountSettingModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FetchUserDataFailedCopyWithImpl<$Res>
    extends _$AccountSettingStateCopyWithImpl<$Res, _$_FetchUserDataFailed>
    implements _$$_FetchUserDataFailedCopyWith<$Res> {
  __$$_FetchUserDataFailedCopyWithImpl(_$_FetchUserDataFailed _value,
      $Res Function(_$_FetchUserDataFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_FetchUserDataFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AccountSettingModelState,
    ));
  }
}

/// @nodoc

class _$_FetchUserDataFailed extends _FetchUserDataFailed {
  const _$_FetchUserDataFailed({required this.data}) : super._();

  @override
  final AccountSettingModelState data;

  @override
  String toString() {
    return 'AccountSettingState.fetchUserDataFailed(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchUserDataFailed &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchUserDataFailedCopyWith<_$_FetchUserDataFailed> get copyWith =>
      __$$_FetchUserDataFailedCopyWithImpl<_$_FetchUserDataFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountSettingModelState data) initial,
    required TResult Function(AccountSettingModelState data) loading,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataSuccess,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataFailed,
    required TResult Function(AccountSettingModelState data)
        updateUserDataSuccess,
    required TResult Function(AccountSettingModelState data)
        updateUserDataFailed,
  }) {
    return fetchUserDataFailed(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountSettingModelState data)? initial,
    TResult? Function(AccountSettingModelState data)? loading,
    TResult? Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult? Function(AccountSettingModelState data)? fetchUserDataFailed,
    TResult? Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult? Function(AccountSettingModelState data)? updateUserDataFailed,
  }) {
    return fetchUserDataFailed?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountSettingModelState data)? initial,
    TResult Function(AccountSettingModelState data)? loading,
    TResult Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult Function(AccountSettingModelState data)? fetchUserDataFailed,
    TResult Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult Function(AccountSettingModelState data)? updateUserDataFailed,
    required TResult orElse(),
  }) {
    if (fetchUserDataFailed != null) {
      return fetchUserDataFailed(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchUserDataSuccess value) fetchUserDataSuccess,
    required TResult Function(_FetchUserDataFailed value) fetchUserDataFailed,
    required TResult Function(_UpdateUserDataSuccess value)
        updateUserDataSuccess,
    required TResult Function(_UpdateUserDataFailed value) updateUserDataFailed,
  }) {
    return fetchUserDataFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult? Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult? Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult? Function(_UpdateUserDataFailed value)? updateUserDataFailed,
  }) {
    return fetchUserDataFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    required TResult orElse(),
  }) {
    if (fetchUserDataFailed != null) {
      return fetchUserDataFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchUserDataFailed extends AccountSettingState {
  const factory _FetchUserDataFailed(
      {required final AccountSettingModelState data}) = _$_FetchUserDataFailed;
  const _FetchUserDataFailed._() : super._();

  @override
  AccountSettingModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_FetchUserDataFailedCopyWith<_$_FetchUserDataFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateUserDataSuccessCopyWith<$Res>
    implements $AccountSettingStateCopyWith<$Res> {
  factory _$$_UpdateUserDataSuccessCopyWith(_$_UpdateUserDataSuccess value,
          $Res Function(_$_UpdateUserDataSuccess) then) =
      __$$_UpdateUserDataSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountSettingModelState data});

  @override
  $AccountSettingModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_UpdateUserDataSuccessCopyWithImpl<$Res>
    extends _$AccountSettingStateCopyWithImpl<$Res, _$_UpdateUserDataSuccess>
    implements _$$_UpdateUserDataSuccessCopyWith<$Res> {
  __$$_UpdateUserDataSuccessCopyWithImpl(_$_UpdateUserDataSuccess _value,
      $Res Function(_$_UpdateUserDataSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_UpdateUserDataSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AccountSettingModelState,
    ));
  }
}

/// @nodoc

class _$_UpdateUserDataSuccess extends _UpdateUserDataSuccess {
  const _$_UpdateUserDataSuccess({required this.data}) : super._();

  @override
  final AccountSettingModelState data;

  @override
  String toString() {
    return 'AccountSettingState.updateUserDataSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUserDataSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateUserDataSuccessCopyWith<_$_UpdateUserDataSuccess> get copyWith =>
      __$$_UpdateUserDataSuccessCopyWithImpl<_$_UpdateUserDataSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountSettingModelState data) initial,
    required TResult Function(AccountSettingModelState data) loading,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataSuccess,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataFailed,
    required TResult Function(AccountSettingModelState data)
        updateUserDataSuccess,
    required TResult Function(AccountSettingModelState data)
        updateUserDataFailed,
  }) {
    return updateUserDataSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountSettingModelState data)? initial,
    TResult? Function(AccountSettingModelState data)? loading,
    TResult? Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult? Function(AccountSettingModelState data)? fetchUserDataFailed,
    TResult? Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult? Function(AccountSettingModelState data)? updateUserDataFailed,
  }) {
    return updateUserDataSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountSettingModelState data)? initial,
    TResult Function(AccountSettingModelState data)? loading,
    TResult Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult Function(AccountSettingModelState data)? fetchUserDataFailed,
    TResult Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult Function(AccountSettingModelState data)? updateUserDataFailed,
    required TResult orElse(),
  }) {
    if (updateUserDataSuccess != null) {
      return updateUserDataSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchUserDataSuccess value) fetchUserDataSuccess,
    required TResult Function(_FetchUserDataFailed value) fetchUserDataFailed,
    required TResult Function(_UpdateUserDataSuccess value)
        updateUserDataSuccess,
    required TResult Function(_UpdateUserDataFailed value) updateUserDataFailed,
  }) {
    return updateUserDataSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult? Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult? Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult? Function(_UpdateUserDataFailed value)? updateUserDataFailed,
  }) {
    return updateUserDataSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    required TResult orElse(),
  }) {
    if (updateUserDataSuccess != null) {
      return updateUserDataSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserDataSuccess extends AccountSettingState {
  const factory _UpdateUserDataSuccess(
          {required final AccountSettingModelState data}) =
      _$_UpdateUserDataSuccess;
  const _UpdateUserDataSuccess._() : super._();

  @override
  AccountSettingModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateUserDataSuccessCopyWith<_$_UpdateUserDataSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateUserDataFailedCopyWith<$Res>
    implements $AccountSettingStateCopyWith<$Res> {
  factory _$$_UpdateUserDataFailedCopyWith(_$_UpdateUserDataFailed value,
          $Res Function(_$_UpdateUserDataFailed) then) =
      __$$_UpdateUserDataFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountSettingModelState data});

  @override
  $AccountSettingModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_UpdateUserDataFailedCopyWithImpl<$Res>
    extends _$AccountSettingStateCopyWithImpl<$Res, _$_UpdateUserDataFailed>
    implements _$$_UpdateUserDataFailedCopyWith<$Res> {
  __$$_UpdateUserDataFailedCopyWithImpl(_$_UpdateUserDataFailed _value,
      $Res Function(_$_UpdateUserDataFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_UpdateUserDataFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AccountSettingModelState,
    ));
  }
}

/// @nodoc

class _$_UpdateUserDataFailed extends _UpdateUserDataFailed {
  const _$_UpdateUserDataFailed({required this.data}) : super._();

  @override
  final AccountSettingModelState data;

  @override
  String toString() {
    return 'AccountSettingState.updateUserDataFailed(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUserDataFailed &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateUserDataFailedCopyWith<_$_UpdateUserDataFailed> get copyWith =>
      __$$_UpdateUserDataFailedCopyWithImpl<_$_UpdateUserDataFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountSettingModelState data) initial,
    required TResult Function(AccountSettingModelState data) loading,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataSuccess,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataFailed,
    required TResult Function(AccountSettingModelState data)
        updateUserDataSuccess,
    required TResult Function(AccountSettingModelState data)
        updateUserDataFailed,
  }) {
    return updateUserDataFailed(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountSettingModelState data)? initial,
    TResult? Function(AccountSettingModelState data)? loading,
    TResult? Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult? Function(AccountSettingModelState data)? fetchUserDataFailed,
    TResult? Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult? Function(AccountSettingModelState data)? updateUserDataFailed,
  }) {
    return updateUserDataFailed?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountSettingModelState data)? initial,
    TResult Function(AccountSettingModelState data)? loading,
    TResult Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult Function(AccountSettingModelState data)? fetchUserDataFailed,
    TResult Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult Function(AccountSettingModelState data)? updateUserDataFailed,
    required TResult orElse(),
  }) {
    if (updateUserDataFailed != null) {
      return updateUserDataFailed(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchUserDataSuccess value) fetchUserDataSuccess,
    required TResult Function(_FetchUserDataFailed value) fetchUserDataFailed,
    required TResult Function(_UpdateUserDataSuccess value)
        updateUserDataSuccess,
    required TResult Function(_UpdateUserDataFailed value) updateUserDataFailed,
  }) {
    return updateUserDataFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult? Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult? Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult? Function(_UpdateUserDataFailed value)? updateUserDataFailed,
  }) {
    return updateUserDataFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    required TResult orElse(),
  }) {
    if (updateUserDataFailed != null) {
      return updateUserDataFailed(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserDataFailed extends AccountSettingState {
  const factory _UpdateUserDataFailed(
      {required final AccountSettingModelState data}) = _$_UpdateUserDataFailed;
  const _UpdateUserDataFailed._() : super._();

  @override
  AccountSettingModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateUserDataFailedCopyWith<_$_UpdateUserDataFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
