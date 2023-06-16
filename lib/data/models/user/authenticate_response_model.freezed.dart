// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticate_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticateResponse _$AuthenticateResponseFromJson(Map<String, dynamic> json) {
  return _AuthenticateResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthenticateResponse {
  String get message => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticateResponseCopyWith<AuthenticateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticateResponseCopyWith<$Res> {
  factory $AuthenticateResponseCopyWith(AuthenticateResponse value,
          $Res Function(AuthenticateResponse) then) =
      _$AuthenticateResponseCopyWithImpl<$Res, AuthenticateResponse>;
  @useResult
  $Res call({String message, bool isSuccess, String token});
}

/// @nodoc
class _$AuthenticateResponseCopyWithImpl<$Res,
        $Val extends AuthenticateResponse>
    implements $AuthenticateResponseCopyWith<$Res> {
  _$AuthenticateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isSuccess = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthenticateResponseCopyWith<$Res>
    implements $AuthenticateResponseCopyWith<$Res> {
  factory _$$_AuthenticateResponseCopyWith(_$_AuthenticateResponse value,
          $Res Function(_$_AuthenticateResponse) then) =
      __$$_AuthenticateResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, bool isSuccess, String token});
}

/// @nodoc
class __$$_AuthenticateResponseCopyWithImpl<$Res>
    extends _$AuthenticateResponseCopyWithImpl<$Res, _$_AuthenticateResponse>
    implements _$$_AuthenticateResponseCopyWith<$Res> {
  __$$_AuthenticateResponseCopyWithImpl(_$_AuthenticateResponse _value,
      $Res Function(_$_AuthenticateResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isSuccess = null,
    Object? token = null,
  }) {
    return _then(_$_AuthenticateResponse(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthenticateResponse implements _AuthenticateResponse {
  const _$_AuthenticateResponse(
      {this.message = "", this.isSuccess = false, this.token = ""});

  factory _$_AuthenticateResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AuthenticateResponseFromJson(json);

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final bool isSuccess;
  @override
  @JsonKey()
  final String token;

  @override
  String toString() {
    return 'AuthenticateResponse(message: $message, isSuccess: $isSuccess, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticateResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, isSuccess, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticateResponseCopyWith<_$_AuthenticateResponse> get copyWith =>
      __$$_AuthenticateResponseCopyWithImpl<_$_AuthenticateResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticateResponseToJson(
      this,
    );
  }
}

abstract class _AuthenticateResponse implements AuthenticateResponse {
  const factory _AuthenticateResponse(
      {final String message,
      final bool isSuccess,
      final String token}) = _$_AuthenticateResponse;

  factory _AuthenticateResponse.fromJson(Map<String, dynamic> json) =
      _$_AuthenticateResponse.fromJson;

  @override
  String get message;
  @override
  bool get isSuccess;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticateResponseCopyWith<_$_AuthenticateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
