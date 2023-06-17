// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'airport_mobile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AirportMobileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int pageSize) fetchAirport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int pageSize)? fetchAirport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int pageSize)? fetchAirport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchAirport value) fetchAirport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchAirport value)? fetchAirport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchAirport value)? fetchAirport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirportMobileEventCopyWith<$Res> {
  factory $AirportMobileEventCopyWith(
          AirportMobileEvent value, $Res Function(AirportMobileEvent) then) =
      _$AirportMobileEventCopyWithImpl<$Res, AirportMobileEvent>;
}

/// @nodoc
class _$AirportMobileEventCopyWithImpl<$Res, $Val extends AirportMobileEvent>
    implements $AirportMobileEventCopyWith<$Res> {
  _$AirportMobileEventCopyWithImpl(this._value, this._then);

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
    extends _$AirportMobileEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AirportMobileEvent.started()';
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
    required TResult Function() started,
    required TResult Function(int pageSize) fetchAirport,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int pageSize)? fetchAirport,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int pageSize)? fetchAirport,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchAirport value) fetchAirport,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchAirport value)? fetchAirport,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchAirport value)? fetchAirport,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AirportMobileEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_FetchAirportCopyWith<$Res> {
  factory _$$_FetchAirportCopyWith(
          _$_FetchAirport value, $Res Function(_$_FetchAirport) then) =
      __$$_FetchAirportCopyWithImpl<$Res>;
  @useResult
  $Res call({int pageSize});
}

/// @nodoc
class __$$_FetchAirportCopyWithImpl<$Res>
    extends _$AirportMobileEventCopyWithImpl<$Res, _$_FetchAirport>
    implements _$$_FetchAirportCopyWith<$Res> {
  __$$_FetchAirportCopyWithImpl(
      _$_FetchAirport _value, $Res Function(_$_FetchAirport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageSize = null,
  }) {
    return _then(_$_FetchAirport(
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FetchAirport implements _FetchAirport {
  const _$_FetchAirport({required this.pageSize});

  @override
  final int pageSize;

  @override
  String toString() {
    return 'AirportMobileEvent.fetchAirport(pageSize: $pageSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchAirport &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchAirportCopyWith<_$_FetchAirport> get copyWith =>
      __$$_FetchAirportCopyWithImpl<_$_FetchAirport>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int pageSize) fetchAirport,
  }) {
    return fetchAirport(pageSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int pageSize)? fetchAirport,
  }) {
    return fetchAirport?.call(pageSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int pageSize)? fetchAirport,
    required TResult orElse(),
  }) {
    if (fetchAirport != null) {
      return fetchAirport(pageSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchAirport value) fetchAirport,
  }) {
    return fetchAirport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchAirport value)? fetchAirport,
  }) {
    return fetchAirport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchAirport value)? fetchAirport,
    required TResult orElse(),
  }) {
    if (fetchAirport != null) {
      return fetchAirport(this);
    }
    return orElse();
  }
}

abstract class _FetchAirport implements AirportMobileEvent {
  const factory _FetchAirport({required final int pageSize}) = _$_FetchAirport;

  int get pageSize;
  @JsonKey(ignore: true)
  _$$_FetchAirportCopyWith<_$_FetchAirport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AirportMobileState {
  AirportMobileModelState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AirportMobileModelState data) initial,
    required TResult Function(AirportMobileModelState data)
        fetchAirportsSuccess,
    required TResult Function(AirportMobileModelState data, String message)
        fetchAirportsFailed,
    required TResult Function(AirportMobileModelState data, int typeLoading)
        loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AirportMobileModelState data)? initial,
    TResult? Function(AirportMobileModelState data)? fetchAirportsSuccess,
    TResult? Function(AirportMobileModelState data, String message)?
        fetchAirportsFailed,
    TResult? Function(AirportMobileModelState data, int typeLoading)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AirportMobileModelState data)? initial,
    TResult Function(AirportMobileModelState data)? fetchAirportsSuccess,
    TResult Function(AirportMobileModelState data, String message)?
        fetchAirportsFailed,
    TResult Function(AirportMobileModelState data, int typeLoading)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchAirportSuccess value) fetchAirportsSuccess,
    required TResult Function(_FetchAirportFailed value) fetchAirportsFailed,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult? Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult? Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AirportMobileStateCopyWith<AirportMobileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirportMobileStateCopyWith<$Res> {
  factory $AirportMobileStateCopyWith(
          AirportMobileState value, $Res Function(AirportMobileState) then) =
      _$AirportMobileStateCopyWithImpl<$Res, AirportMobileState>;
  @useResult
  $Res call({AirportMobileModelState data});

  $AirportMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class _$AirportMobileStateCopyWithImpl<$Res, $Val extends AirportMobileState>
    implements $AirportMobileStateCopyWith<$Res> {
  _$AirportMobileStateCopyWithImpl(this._value, this._then);

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
              as AirportMobileModelState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AirportMobileModelStateCopyWith<$Res> get data {
    return $AirportMobileModelStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $AirportMobileStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AirportMobileModelState data});

  @override
  $AirportMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AirportMobileStateCopyWithImpl<$Res, _$_Initial>
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
              as AirportMobileModelState,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final AirportMobileModelState data;

  @override
  String toString() {
    return 'AirportMobileState.initial(data: $data)';
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
    required TResult Function(AirportMobileModelState data) initial,
    required TResult Function(AirportMobileModelState data)
        fetchAirportsSuccess,
    required TResult Function(AirportMobileModelState data, String message)
        fetchAirportsFailed,
    required TResult Function(AirportMobileModelState data, int typeLoading)
        loading,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AirportMobileModelState data)? initial,
    TResult? Function(AirportMobileModelState data)? fetchAirportsSuccess,
    TResult? Function(AirportMobileModelState data, String message)?
        fetchAirportsFailed,
    TResult? Function(AirportMobileModelState data, int typeLoading)? loading,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AirportMobileModelState data)? initial,
    TResult Function(AirportMobileModelState data)? fetchAirportsSuccess,
    TResult Function(AirportMobileModelState data, String message)?
        fetchAirportsFailed,
    TResult Function(AirportMobileModelState data, int typeLoading)? loading,
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
    required TResult Function(_FetchAirportSuccess value) fetchAirportsSuccess,
    required TResult Function(_FetchAirportFailed value) fetchAirportsFailed,
    required TResult Function(_Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult? Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult? Function(_Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends AirportMobileState {
  const factory _Initial({required final AirportMobileModelState data}) =
      _$_Initial;
  const _Initial._() : super._();

  @override
  AirportMobileModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchAirportSuccessCopyWith<$Res>
    implements $AirportMobileStateCopyWith<$Res> {
  factory _$$_FetchAirportSuccessCopyWith(_$_FetchAirportSuccess value,
          $Res Function(_$_FetchAirportSuccess) then) =
      __$$_FetchAirportSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AirportMobileModelState data});

  @override
  $AirportMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FetchAirportSuccessCopyWithImpl<$Res>
    extends _$AirportMobileStateCopyWithImpl<$Res, _$_FetchAirportSuccess>
    implements _$$_FetchAirportSuccessCopyWith<$Res> {
  __$$_FetchAirportSuccessCopyWithImpl(_$_FetchAirportSuccess _value,
      $Res Function(_$_FetchAirportSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_FetchAirportSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AirportMobileModelState,
    ));
  }
}

/// @nodoc

class _$_FetchAirportSuccess extends _FetchAirportSuccess {
  const _$_FetchAirportSuccess({required this.data}) : super._();

  @override
  final AirportMobileModelState data;

  @override
  String toString() {
    return 'AirportMobileState.fetchAirportsSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchAirportSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchAirportSuccessCopyWith<_$_FetchAirportSuccess> get copyWith =>
      __$$_FetchAirportSuccessCopyWithImpl<_$_FetchAirportSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AirportMobileModelState data) initial,
    required TResult Function(AirportMobileModelState data)
        fetchAirportsSuccess,
    required TResult Function(AirportMobileModelState data, String message)
        fetchAirportsFailed,
    required TResult Function(AirportMobileModelState data, int typeLoading)
        loading,
  }) {
    return fetchAirportsSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AirportMobileModelState data)? initial,
    TResult? Function(AirportMobileModelState data)? fetchAirportsSuccess,
    TResult? Function(AirportMobileModelState data, String message)?
        fetchAirportsFailed,
    TResult? Function(AirportMobileModelState data, int typeLoading)? loading,
  }) {
    return fetchAirportsSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AirportMobileModelState data)? initial,
    TResult Function(AirportMobileModelState data)? fetchAirportsSuccess,
    TResult Function(AirportMobileModelState data, String message)?
        fetchAirportsFailed,
    TResult Function(AirportMobileModelState data, int typeLoading)? loading,
    required TResult orElse(),
  }) {
    if (fetchAirportsSuccess != null) {
      return fetchAirportsSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchAirportSuccess value) fetchAirportsSuccess,
    required TResult Function(_FetchAirportFailed value) fetchAirportsFailed,
    required TResult Function(_Loading value) loading,
  }) {
    return fetchAirportsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult? Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult? Function(_Loading value)? loading,
  }) {
    return fetchAirportsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (fetchAirportsSuccess != null) {
      return fetchAirportsSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchAirportSuccess extends AirportMobileState {
  const factory _FetchAirportSuccess(
      {required final AirportMobileModelState data}) = _$_FetchAirportSuccess;
  const _FetchAirportSuccess._() : super._();

  @override
  AirportMobileModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_FetchAirportSuccessCopyWith<_$_FetchAirportSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchAirportFailedCopyWith<$Res>
    implements $AirportMobileStateCopyWith<$Res> {
  factory _$$_FetchAirportFailedCopyWith(_$_FetchAirportFailed value,
          $Res Function(_$_FetchAirportFailed) then) =
      __$$_FetchAirportFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AirportMobileModelState data, String message});

  @override
  $AirportMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FetchAirportFailedCopyWithImpl<$Res>
    extends _$AirportMobileStateCopyWithImpl<$Res, _$_FetchAirportFailed>
    implements _$$_FetchAirportFailedCopyWith<$Res> {
  __$$_FetchAirportFailedCopyWithImpl(
      _$_FetchAirportFailed _value, $Res Function(_$_FetchAirportFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_FetchAirportFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AirportMobileModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchAirportFailed extends _FetchAirportFailed {
  const _$_FetchAirportFailed({required this.data, required this.message})
      : super._();

  @override
  final AirportMobileModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'AirportMobileState.fetchAirportsFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchAirportFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchAirportFailedCopyWith<_$_FetchAirportFailed> get copyWith =>
      __$$_FetchAirportFailedCopyWithImpl<_$_FetchAirportFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AirportMobileModelState data) initial,
    required TResult Function(AirportMobileModelState data)
        fetchAirportsSuccess,
    required TResult Function(AirportMobileModelState data, String message)
        fetchAirportsFailed,
    required TResult Function(AirportMobileModelState data, int typeLoading)
        loading,
  }) {
    return fetchAirportsFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AirportMobileModelState data)? initial,
    TResult? Function(AirportMobileModelState data)? fetchAirportsSuccess,
    TResult? Function(AirportMobileModelState data, String message)?
        fetchAirportsFailed,
    TResult? Function(AirportMobileModelState data, int typeLoading)? loading,
  }) {
    return fetchAirportsFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AirportMobileModelState data)? initial,
    TResult Function(AirportMobileModelState data)? fetchAirportsSuccess,
    TResult Function(AirportMobileModelState data, String message)?
        fetchAirportsFailed,
    TResult Function(AirportMobileModelState data, int typeLoading)? loading,
    required TResult orElse(),
  }) {
    if (fetchAirportsFailed != null) {
      return fetchAirportsFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchAirportSuccess value) fetchAirportsSuccess,
    required TResult Function(_FetchAirportFailed value) fetchAirportsFailed,
    required TResult Function(_Loading value) loading,
  }) {
    return fetchAirportsFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult? Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult? Function(_Loading value)? loading,
  }) {
    return fetchAirportsFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (fetchAirportsFailed != null) {
      return fetchAirportsFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchAirportFailed extends AirportMobileState {
  const factory _FetchAirportFailed(
      {required final AirportMobileModelState data,
      required final String message}) = _$_FetchAirportFailed;
  const _FetchAirportFailed._() : super._();

  @override
  AirportMobileModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_FetchAirportFailedCopyWith<_$_FetchAirportFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $AirportMobileStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AirportMobileModelState data, int typeLoading});

  @override
  $AirportMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AirportMobileStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? typeLoading = null,
  }) {
    return _then(_$_Loading(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AirportMobileModelState,
      typeLoading: null == typeLoading
          ? _value.typeLoading
          : typeLoading // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data, required this.typeLoading}) : super._();

  @override
  final AirportMobileModelState data;
  @override
  final int typeLoading;

  @override
  String toString() {
    return 'AirportMobileState.loading(data: $data, typeLoading: $typeLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.typeLoading, typeLoading) ||
                other.typeLoading == typeLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, typeLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AirportMobileModelState data) initial,
    required TResult Function(AirportMobileModelState data)
        fetchAirportsSuccess,
    required TResult Function(AirportMobileModelState data, String message)
        fetchAirportsFailed,
    required TResult Function(AirportMobileModelState data, int typeLoading)
        loading,
  }) {
    return loading(data, typeLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AirportMobileModelState data)? initial,
    TResult? Function(AirportMobileModelState data)? fetchAirportsSuccess,
    TResult? Function(AirportMobileModelState data, String message)?
        fetchAirportsFailed,
    TResult? Function(AirportMobileModelState data, int typeLoading)? loading,
  }) {
    return loading?.call(data, typeLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AirportMobileModelState data)? initial,
    TResult Function(AirportMobileModelState data)? fetchAirportsSuccess,
    TResult Function(AirportMobileModelState data, String message)?
        fetchAirportsFailed,
    TResult Function(AirportMobileModelState data, int typeLoading)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data, typeLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchAirportSuccess value) fetchAirportsSuccess,
    required TResult Function(_FetchAirportFailed value) fetchAirportsFailed,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult? Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult? Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends AirportMobileState {
  const factory _Loading(
      {required final AirportMobileModelState data,
      required final int typeLoading}) = _$_Loading;
  const _Loading._() : super._();

  @override
  AirportMobileModelState get data;
  int get typeLoading;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}
