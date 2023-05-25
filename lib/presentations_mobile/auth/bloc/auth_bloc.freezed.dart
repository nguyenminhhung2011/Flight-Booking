// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(String email, String password, String rePassword)
        register,
    required TResult Function(String email, String password) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(String email, String password, String rePassword)?
        register,
    TResult? Function(String email, String password)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String email, String password, String rePassword)?
        register,
    TResult Function(String email, String password)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) onStarted,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AuthEvent.onStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(String email, String password, String rePassword)
        register,
    required TResult Function(String email, String password) login,
  }) {
    return onStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(String email, String password, String rePassword)?
        register,
    TResult? Function(String email, String password)? login,
  }) {
    return onStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String email, String password, String rePassword)?
        register,
    TResult Function(String email, String password)? login,
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
    required TResult Function(_Started value) onStarted,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
  }) {
    return onStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
  }) {
    return onStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_RegisterCopyWith<$Res> {
  factory _$$_RegisterCopyWith(
          _$_Register value, $Res Function(_$_Register) then) =
      __$$_RegisterCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String rePassword});
}

/// @nodoc
class __$$_RegisterCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Register>
    implements _$$_RegisterCopyWith<$Res> {
  __$$_RegisterCopyWithImpl(
      _$_Register _value, $Res Function(_$_Register) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? rePassword = null,
  }) {
    return _then(_$_Register(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      rePassword: null == rePassword
          ? _value.rePassword
          : rePassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Register implements _Register {
  const _$_Register(
      {required this.email, required this.password, required this.rePassword});

  @override
  final String email;
  @override
  final String password;
  @override
  final String rePassword;

  @override
  String toString() {
    return 'AuthEvent.register(email: $email, password: $password, rePassword: $rePassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Register &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.rePassword, rePassword) ||
                other.rePassword == rePassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, rePassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterCopyWith<_$_Register> get copyWith =>
      __$$_RegisterCopyWithImpl<_$_Register>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(String email, String password, String rePassword)
        register,
    required TResult Function(String email, String password) login,
  }) {
    return register(email, password, rePassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(String email, String password, String rePassword)?
        register,
    TResult? Function(String email, String password)? login,
  }) {
    return register?.call(email, password, rePassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String email, String password, String rePassword)?
        register,
    TResult Function(String email, String password)? login,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(email, password, rePassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) onStarted,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthEvent {
  const factory _Register(
      {required final String email,
      required final String password,
      required final String rePassword}) = _$_Register;

  String get email;
  String get password;
  String get rePassword;
  @JsonKey(ignore: true)
  _$$_RegisterCopyWith<_$_Register> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginCopyWith<$Res> {
  factory _$$_LoginCopyWith(_$_Login value, $Res Function(_$_Login) then) =
      __$$_LoginCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_LoginCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Login>
    implements _$$_LoginCopyWith<$Res> {
  __$$_LoginCopyWithImpl(_$_Login _value, $Res Function(_$_Login) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_Login(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Login implements _Login {
  const _$_Login({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Login &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      __$$_LoginCopyWithImpl<_$_Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(String email, String password, String rePassword)
        register,
    required TResult Function(String email, String password) login,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(String email, String password, String rePassword)?
        register,
    TResult? Function(String email, String password)? login,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String email, String password, String rePassword)?
        register,
    TResult Function(String email, String password)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) onStarted,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login(
      {required final String email, required final String password}) = _$_Login;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  AuthModelState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModelState data) initial,
    required TResult Function(AuthModelState data) loading,
    required TResult Function(AuthModelState data) loginSuccess,
    required TResult Function(AuthModelState data, String message) loginFailed,
    required TResult Function(AuthModelState data) registerSuccess,
    required TResult Function(AuthModelState data, String message)
        registerFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthModelState data)? initial,
    TResult? Function(AuthModelState data)? loading,
    TResult? Function(AuthModelState data)? loginSuccess,
    TResult? Function(AuthModelState data, String message)? loginFailed,
    TResult? Function(AuthModelState data)? registerSuccess,
    TResult? Function(AuthModelState data, String message)? registerFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModelState data)? initial,
    TResult Function(AuthModelState data)? loading,
    TResult Function(AuthModelState data)? loginSuccess,
    TResult Function(AuthModelState data, String message)? loginFailed,
    TResult Function(AuthModelState data)? registerSuccess,
    TResult Function(AuthModelState data, String message)? registerFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterFailed value) registerFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterFailed value)? registerFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterFailed value)? registerFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({AuthModelState data});

  $AuthModelStateCopyWith<$Res> get data;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

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
              as AuthModelState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthModelStateCopyWith<$Res> get data {
    return $AuthModelStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthModelState data});

  @override
  $AuthModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
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
              as AuthModelState,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final AuthModelState data;

  @override
  String toString() {
    return 'AuthState.initial(data: $data)';
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
    required TResult Function(AuthModelState data) initial,
    required TResult Function(AuthModelState data) loading,
    required TResult Function(AuthModelState data) loginSuccess,
    required TResult Function(AuthModelState data, String message) loginFailed,
    required TResult Function(AuthModelState data) registerSuccess,
    required TResult Function(AuthModelState data, String message)
        registerFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthModelState data)? initial,
    TResult? Function(AuthModelState data)? loading,
    TResult? Function(AuthModelState data)? loginSuccess,
    TResult? Function(AuthModelState data, String message)? loginFailed,
    TResult? Function(AuthModelState data)? registerSuccess,
    TResult? Function(AuthModelState data, String message)? registerFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModelState data)? initial,
    TResult Function(AuthModelState data)? loading,
    TResult Function(AuthModelState data)? loginSuccess,
    TResult Function(AuthModelState data, String message)? loginFailed,
    TResult Function(AuthModelState data)? registerSuccess,
    TResult Function(AuthModelState data, String message)? registerFailed,
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
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterFailed value) registerFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterFailed value)? registerFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterFailed value)? registerFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends AuthState {
  const factory _Initial({required final AuthModelState data}) = _$_Initial;
  const _Initial._() : super._();

  @override
  AuthModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthModelState data});

  @override
  $AuthModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Loading>
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
              as AuthModelState,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final AuthModelState data;

  @override
  String toString() {
    return 'AuthState.loading(data: $data)';
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
    required TResult Function(AuthModelState data) initial,
    required TResult Function(AuthModelState data) loading,
    required TResult Function(AuthModelState data) loginSuccess,
    required TResult Function(AuthModelState data, String message) loginFailed,
    required TResult Function(AuthModelState data) registerSuccess,
    required TResult Function(AuthModelState data, String message)
        registerFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthModelState data)? initial,
    TResult? Function(AuthModelState data)? loading,
    TResult? Function(AuthModelState data)? loginSuccess,
    TResult? Function(AuthModelState data, String message)? loginFailed,
    TResult? Function(AuthModelState data)? registerSuccess,
    TResult? Function(AuthModelState data, String message)? registerFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModelState data)? initial,
    TResult Function(AuthModelState data)? loading,
    TResult Function(AuthModelState data)? loginSuccess,
    TResult Function(AuthModelState data, String message)? loginFailed,
    TResult Function(AuthModelState data)? registerSuccess,
    TResult Function(AuthModelState data, String message)? registerFailed,
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
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterFailed value) registerFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterFailed value)? registerFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterFailed value)? registerFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends AuthState {
  const factory _Loading({required final AuthModelState data}) = _$_Loading;
  const _Loading._() : super._();

  @override
  AuthModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginSuccessCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$_LoginSuccessCopyWith(
          _$_LoginSuccess value, $Res Function(_$_LoginSuccess) then) =
      __$$_LoginSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthModelState data});

  @override
  $AuthModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoginSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_LoginSuccess>
    implements _$$_LoginSuccessCopyWith<$Res> {
  __$$_LoginSuccessCopyWithImpl(
      _$_LoginSuccess _value, $Res Function(_$_LoginSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_LoginSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthModelState,
    ));
  }
}

/// @nodoc

class _$_LoginSuccess extends _LoginSuccess {
  const _$_LoginSuccess({required this.data}) : super._();

  @override
  final AuthModelState data;

  @override
  String toString() {
    return 'AuthState.loginSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginSuccessCopyWith<_$_LoginSuccess> get copyWith =>
      __$$_LoginSuccessCopyWithImpl<_$_LoginSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModelState data) initial,
    required TResult Function(AuthModelState data) loading,
    required TResult Function(AuthModelState data) loginSuccess,
    required TResult Function(AuthModelState data, String message) loginFailed,
    required TResult Function(AuthModelState data) registerSuccess,
    required TResult Function(AuthModelState data, String message)
        registerFailed,
  }) {
    return loginSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthModelState data)? initial,
    TResult? Function(AuthModelState data)? loading,
    TResult? Function(AuthModelState data)? loginSuccess,
    TResult? Function(AuthModelState data, String message)? loginFailed,
    TResult? Function(AuthModelState data)? registerSuccess,
    TResult? Function(AuthModelState data, String message)? registerFailed,
  }) {
    return loginSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModelState data)? initial,
    TResult Function(AuthModelState data)? loading,
    TResult Function(AuthModelState data)? loginSuccess,
    TResult Function(AuthModelState data, String message)? loginFailed,
    TResult Function(AuthModelState data)? registerSuccess,
    TResult Function(AuthModelState data, String message)? registerFailed,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterFailed value) registerFailed,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterFailed value)? registerFailed,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterFailed value)? registerFailed,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoginSuccess extends AuthState {
  const factory _LoginSuccess({required final AuthModelState data}) =
      _$_LoginSuccess;
  const _LoginSuccess._() : super._();

  @override
  AuthModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoginSuccessCopyWith<_$_LoginSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginFailedCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$_LoginFailedCopyWith(
          _$_LoginFailed value, $Res Function(_$_LoginFailed) then) =
      __$$_LoginFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthModelState data, String message});

  @override
  $AuthModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoginFailedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_LoginFailed>
    implements _$$_LoginFailedCopyWith<$Res> {
  __$$_LoginFailedCopyWithImpl(
      _$_LoginFailed _value, $Res Function(_$_LoginFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_LoginFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginFailed extends _LoginFailed {
  const _$_LoginFailed({required this.data, required this.message}) : super._();

  @override
  final AuthModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.loginFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginFailedCopyWith<_$_LoginFailed> get copyWith =>
      __$$_LoginFailedCopyWithImpl<_$_LoginFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModelState data) initial,
    required TResult Function(AuthModelState data) loading,
    required TResult Function(AuthModelState data) loginSuccess,
    required TResult Function(AuthModelState data, String message) loginFailed,
    required TResult Function(AuthModelState data) registerSuccess,
    required TResult Function(AuthModelState data, String message)
        registerFailed,
  }) {
    return loginFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthModelState data)? initial,
    TResult? Function(AuthModelState data)? loading,
    TResult? Function(AuthModelState data)? loginSuccess,
    TResult? Function(AuthModelState data, String message)? loginFailed,
    TResult? Function(AuthModelState data)? registerSuccess,
    TResult? Function(AuthModelState data, String message)? registerFailed,
  }) {
    return loginFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModelState data)? initial,
    TResult Function(AuthModelState data)? loading,
    TResult Function(AuthModelState data)? loginSuccess,
    TResult Function(AuthModelState data, String message)? loginFailed,
    TResult Function(AuthModelState data)? registerSuccess,
    TResult Function(AuthModelState data, String message)? registerFailed,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterFailed value) registerFailed,
  }) {
    return loginFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterFailed value)? registerFailed,
  }) {
    return loginFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterFailed value)? registerFailed,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(this);
    }
    return orElse();
  }
}

abstract class _LoginFailed extends AuthState {
  const factory _LoginFailed(
      {required final AuthModelState data,
      required final String message}) = _$_LoginFailed;
  const _LoginFailed._() : super._();

  @override
  AuthModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_LoginFailedCopyWith<_$_LoginFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegisterSuccessCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$_RegisterSuccessCopyWith(
          _$_RegisterSuccess value, $Res Function(_$_RegisterSuccess) then) =
      __$$_RegisterSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthModelState data});

  @override
  $AuthModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_RegisterSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_RegisterSuccess>
    implements _$$_RegisterSuccessCopyWith<$Res> {
  __$$_RegisterSuccessCopyWithImpl(
      _$_RegisterSuccess _value, $Res Function(_$_RegisterSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_RegisterSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthModelState,
    ));
  }
}

/// @nodoc

class _$_RegisterSuccess extends _RegisterSuccess {
  const _$_RegisterSuccess({required this.data}) : super._();

  @override
  final AuthModelState data;

  @override
  String toString() {
    return 'AuthState.registerSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterSuccessCopyWith<_$_RegisterSuccess> get copyWith =>
      __$$_RegisterSuccessCopyWithImpl<_$_RegisterSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModelState data) initial,
    required TResult Function(AuthModelState data) loading,
    required TResult Function(AuthModelState data) loginSuccess,
    required TResult Function(AuthModelState data, String message) loginFailed,
    required TResult Function(AuthModelState data) registerSuccess,
    required TResult Function(AuthModelState data, String message)
        registerFailed,
  }) {
    return registerSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthModelState data)? initial,
    TResult? Function(AuthModelState data)? loading,
    TResult? Function(AuthModelState data)? loginSuccess,
    TResult? Function(AuthModelState data, String message)? loginFailed,
    TResult? Function(AuthModelState data)? registerSuccess,
    TResult? Function(AuthModelState data, String message)? registerFailed,
  }) {
    return registerSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModelState data)? initial,
    TResult Function(AuthModelState data)? loading,
    TResult Function(AuthModelState data)? loginSuccess,
    TResult Function(AuthModelState data, String message)? loginFailed,
    TResult Function(AuthModelState data)? registerSuccess,
    TResult Function(AuthModelState data, String message)? registerFailed,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterFailed value) registerFailed,
  }) {
    return registerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterFailed value)? registerFailed,
  }) {
    return registerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterFailed value)? registerFailed,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(this);
    }
    return orElse();
  }
}

abstract class _RegisterSuccess extends AuthState {
  const factory _RegisterSuccess({required final AuthModelState data}) =
      _$_RegisterSuccess;
  const _RegisterSuccess._() : super._();

  @override
  AuthModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterSuccessCopyWith<_$_RegisterSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegisterFailedCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$_RegisterFailedCopyWith(
          _$_RegisterFailed value, $Res Function(_$_RegisterFailed) then) =
      __$$_RegisterFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthModelState data, String message});

  @override
  $AuthModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_RegisterFailedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_RegisterFailed>
    implements _$$_RegisterFailedCopyWith<$Res> {
  __$$_RegisterFailedCopyWithImpl(
      _$_RegisterFailed _value, $Res Function(_$_RegisterFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_RegisterFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterFailed extends _RegisterFailed {
  const _$_RegisterFailed({required this.data, required this.message})
      : super._();

  @override
  final AuthModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.registerFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterFailedCopyWith<_$_RegisterFailed> get copyWith =>
      __$$_RegisterFailedCopyWithImpl<_$_RegisterFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModelState data) initial,
    required TResult Function(AuthModelState data) loading,
    required TResult Function(AuthModelState data) loginSuccess,
    required TResult Function(AuthModelState data, String message) loginFailed,
    required TResult Function(AuthModelState data) registerSuccess,
    required TResult Function(AuthModelState data, String message)
        registerFailed,
  }) {
    return registerFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthModelState data)? initial,
    TResult? Function(AuthModelState data)? loading,
    TResult? Function(AuthModelState data)? loginSuccess,
    TResult? Function(AuthModelState data, String message)? loginFailed,
    TResult? Function(AuthModelState data)? registerSuccess,
    TResult? Function(AuthModelState data, String message)? registerFailed,
  }) {
    return registerFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModelState data)? initial,
    TResult Function(AuthModelState data)? loading,
    TResult Function(AuthModelState data)? loginSuccess,
    TResult Function(AuthModelState data, String message)? loginFailed,
    TResult Function(AuthModelState data)? registerSuccess,
    TResult Function(AuthModelState data, String message)? registerFailed,
    required TResult orElse(),
  }) {
    if (registerFailed != null) {
      return registerFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterFailed value) registerFailed,
  }) {
    return registerFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterFailed value)? registerFailed,
  }) {
    return registerFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterFailed value)? registerFailed,
    required TResult orElse(),
  }) {
    if (registerFailed != null) {
      return registerFailed(this);
    }
    return orElse();
  }
}

abstract class _RegisterFailed extends AuthState {
  const factory _RegisterFailed(
      {required final AuthModelState data,
      required final String message}) = _$_RegisterFailed;
  const _RegisterFailed._() : super._();

  @override
  AuthModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterFailedCopyWith<_$_RegisterFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
