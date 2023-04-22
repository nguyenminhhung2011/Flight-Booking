// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_flight_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListFlightEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String flightID) selectFlight,
    required TResult Function() getFlights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String flightID)? selectFlight,
    TResult? Function()? getFlights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String flightID)? selectFlight,
    TResult Function()? getFlights,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFlight value) selectFlight,
    required TResult Function(_GetFlights value) getFlights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFlight value)? selectFlight,
    TResult? Function(_GetFlights value)? getFlights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFlight value)? selectFlight,
    TResult Function(_GetFlights value)? getFlights,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListFlightEventCopyWith<$Res> {
  factory $ListFlightEventCopyWith(
          ListFlightEvent value, $Res Function(ListFlightEvent) then) =
      _$ListFlightEventCopyWithImpl<$Res, ListFlightEvent>;
}

/// @nodoc
class _$ListFlightEventCopyWithImpl<$Res, $Val extends ListFlightEvent>
    implements $ListFlightEventCopyWith<$Res> {
  _$ListFlightEventCopyWithImpl(this._value, this._then);

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
    extends _$ListFlightEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ListFlightEvent.started()';
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
    required TResult Function(String flightID) selectFlight,
    required TResult Function() getFlights,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String flightID)? selectFlight,
    TResult? Function()? getFlights,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String flightID)? selectFlight,
    TResult Function()? getFlights,
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
    required TResult Function(_SelectFlight value) selectFlight,
    required TResult Function(_GetFlights value) getFlights,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFlight value)? selectFlight,
    TResult? Function(_GetFlights value)? getFlights,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFlight value)? selectFlight,
    TResult Function(_GetFlights value)? getFlights,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ListFlightEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_SelectFlightCopyWith<$Res> {
  factory _$$_SelectFlightCopyWith(
          _$_SelectFlight value, $Res Function(_$_SelectFlight) then) =
      __$$_SelectFlightCopyWithImpl<$Res>;
  @useResult
  $Res call({String flightID});
}

/// @nodoc
class __$$_SelectFlightCopyWithImpl<$Res>
    extends _$ListFlightEventCopyWithImpl<$Res, _$_SelectFlight>
    implements _$$_SelectFlightCopyWith<$Res> {
  __$$_SelectFlightCopyWithImpl(
      _$_SelectFlight _value, $Res Function(_$_SelectFlight) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flightID = null,
  }) {
    return _then(_$_SelectFlight(
      null == flightID
          ? _value.flightID
          : flightID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectFlight implements _SelectFlight {
  const _$_SelectFlight(this.flightID);

  @override
  final String flightID;

  @override
  String toString() {
    return 'ListFlightEvent.selectFlight(flightID: $flightID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectFlight &&
            (identical(other.flightID, flightID) ||
                other.flightID == flightID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flightID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectFlightCopyWith<_$_SelectFlight> get copyWith =>
      __$$_SelectFlightCopyWithImpl<_$_SelectFlight>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String flightID) selectFlight,
    required TResult Function() getFlights,
  }) {
    return selectFlight(flightID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String flightID)? selectFlight,
    TResult? Function()? getFlights,
  }) {
    return selectFlight?.call(flightID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String flightID)? selectFlight,
    TResult Function()? getFlights,
    required TResult orElse(),
  }) {
    if (selectFlight != null) {
      return selectFlight(flightID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFlight value) selectFlight,
    required TResult Function(_GetFlights value) getFlights,
  }) {
    return selectFlight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFlight value)? selectFlight,
    TResult? Function(_GetFlights value)? getFlights,
  }) {
    return selectFlight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFlight value)? selectFlight,
    TResult Function(_GetFlights value)? getFlights,
    required TResult orElse(),
  }) {
    if (selectFlight != null) {
      return selectFlight(this);
    }
    return orElse();
  }
}

abstract class _SelectFlight implements ListFlightEvent {
  const factory _SelectFlight(final String flightID) = _$_SelectFlight;

  String get flightID;
  @JsonKey(ignore: true)
  _$$_SelectFlightCopyWith<_$_SelectFlight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetFlightsCopyWith<$Res> {
  factory _$$_GetFlightsCopyWith(
          _$_GetFlights value, $Res Function(_$_GetFlights) then) =
      __$$_GetFlightsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetFlightsCopyWithImpl<$Res>
    extends _$ListFlightEventCopyWithImpl<$Res, _$_GetFlights>
    implements _$$_GetFlightsCopyWith<$Res> {
  __$$_GetFlightsCopyWithImpl(
      _$_GetFlights _value, $Res Function(_$_GetFlights) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetFlights implements _GetFlights {
  const _$_GetFlights();

  @override
  String toString() {
    return 'ListFlightEvent.getFlights()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetFlights);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String flightID) selectFlight,
    required TResult Function() getFlights,
  }) {
    return getFlights();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String flightID)? selectFlight,
    TResult? Function()? getFlights,
  }) {
    return getFlights?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String flightID)? selectFlight,
    TResult Function()? getFlights,
    required TResult orElse(),
  }) {
    if (getFlights != null) {
      return getFlights();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFlight value) selectFlight,
    required TResult Function(_GetFlights value) getFlights,
  }) {
    return getFlights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFlight value)? selectFlight,
    TResult? Function(_GetFlights value)? getFlights,
  }) {
    return getFlights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFlight value)? selectFlight,
    TResult Function(_GetFlights value)? getFlights,
    required TResult orElse(),
  }) {
    if (getFlights != null) {
      return getFlights(this);
    }
    return orElse();
  }
}

abstract class _GetFlights implements ListFlightEvent {
  const factory _GetFlights() = _$_GetFlights;
}

/// @nodoc
mixin _$ListFlightState {
  ListFlightModelState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListFlightStateCopyWith<ListFlightState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListFlightStateCopyWith<$Res> {
  factory $ListFlightStateCopyWith(
          ListFlightState value, $Res Function(ListFlightState) then) =
      _$ListFlightStateCopyWithImpl<$Res, ListFlightState>;
  @useResult
  $Res call({ListFlightModelState data});

  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class _$ListFlightStateCopyWithImpl<$Res, $Val extends ListFlightState>
    implements $ListFlightStateCopyWith<$Res> {
  _$ListFlightStateCopyWithImpl(this._value, this._then);

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
              as ListFlightModelState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ListFlightModelStateCopyWith<$Res> get data {
    return $ListFlightModelStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ListFlightStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListFlightModelState data});

  @override
  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ListFlightStateCopyWithImpl<$Res, _$_Initial>
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
              as ListFlightModelState,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final ListFlightModelState data;

  @override
  String toString() {
    return 'ListFlightState.initial(data: $data)';
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
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
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
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends ListFlightState {
  const factory _Initial({required final ListFlightModelState data}) =
      _$_Initial;
  const _Initial._() : super._();

  @override
  ListFlightModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $ListFlightStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListFlightModelState data});

  @override
  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$ListFlightStateCopyWithImpl<$Res, _$_Loading>
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
              as ListFlightModelState,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final ListFlightModelState data;

  @override
  String toString() {
    return 'ListFlightState.loading(data: $data)';
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
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
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
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends ListFlightState {
  const factory _Loading({required final ListFlightModelState data}) =
      _$_Loading;
  const _Loading._() : super._();

  @override
  ListFlightModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectListFlightSuccessCopyWith<$Res>
    implements $ListFlightStateCopyWith<$Res> {
  factory _$$_SelectListFlightSuccessCopyWith(_$_SelectListFlightSuccess value,
          $Res Function(_$_SelectListFlightSuccess) then) =
      __$$_SelectListFlightSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListFlightModelState data, String flightId});

  @override
  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SelectListFlightSuccessCopyWithImpl<$Res>
    extends _$ListFlightStateCopyWithImpl<$Res, _$_SelectListFlightSuccess>
    implements _$$_SelectListFlightSuccessCopyWith<$Res> {
  __$$_SelectListFlightSuccessCopyWithImpl(_$_SelectListFlightSuccess _value,
      $Res Function(_$_SelectListFlightSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? flightId = null,
  }) {
    return _then(_$_SelectListFlightSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListFlightModelState,
      flightId: null == flightId
          ? _value.flightId
          : flightId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectListFlightSuccess extends _SelectListFlightSuccess {
  const _$_SelectListFlightSuccess({required this.data, required this.flightId})
      : super._();

  @override
  final ListFlightModelState data;
  @override
  final String flightId;

  @override
  String toString() {
    return 'ListFlightState.selectListFlightSuccess(data: $data, flightId: $flightId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectListFlightSuccess &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.flightId, flightId) ||
                other.flightId == flightId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, flightId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectListFlightSuccessCopyWith<_$_SelectListFlightSuccess>
      get copyWith =>
          __$$_SelectListFlightSuccessCopyWithImpl<_$_SelectListFlightSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
  }) {
    return selectListFlightSuccess(data, flightId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
  }) {
    return selectListFlightSuccess?.call(data, flightId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    required TResult orElse(),
  }) {
    if (selectListFlightSuccess != null) {
      return selectListFlightSuccess(data, flightId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
  }) {
    return selectListFlightSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
  }) {
    return selectListFlightSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    required TResult orElse(),
  }) {
    if (selectListFlightSuccess != null) {
      return selectListFlightSuccess(this);
    }
    return orElse();
  }
}

abstract class _SelectListFlightSuccess extends ListFlightState {
  const factory _SelectListFlightSuccess(
      {required final ListFlightModelState data,
      required final String flightId}) = _$_SelectListFlightSuccess;
  const _SelectListFlightSuccess._() : super._();

  @override
  ListFlightModelState get data;
  String get flightId;
  @override
  @JsonKey(ignore: true)
  _$$_SelectListFlightSuccessCopyWith<_$_SelectListFlightSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectListFlightFailedCopyWith<$Res>
    implements $ListFlightStateCopyWith<$Res> {
  factory _$$_SelectListFlightFailedCopyWith(_$_SelectListFlightFailed value,
          $Res Function(_$_SelectListFlightFailed) then) =
      __$$_SelectListFlightFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListFlightModelState data, String message});

  @override
  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SelectListFlightFailedCopyWithImpl<$Res>
    extends _$ListFlightStateCopyWithImpl<$Res, _$_SelectListFlightFailed>
    implements _$$_SelectListFlightFailedCopyWith<$Res> {
  __$$_SelectListFlightFailedCopyWithImpl(_$_SelectListFlightFailed _value,
      $Res Function(_$_SelectListFlightFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_SelectListFlightFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListFlightModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectListFlightFailed extends _SelectListFlightFailed {
  const _$_SelectListFlightFailed({required this.data, required this.message})
      : super._();

  @override
  final ListFlightModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'ListFlightState.selectListFlightFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectListFlightFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectListFlightFailedCopyWith<_$_SelectListFlightFailed> get copyWith =>
      __$$_SelectListFlightFailedCopyWithImpl<_$_SelectListFlightFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
  }) {
    return selectListFlightFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
  }) {
    return selectListFlightFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    required TResult orElse(),
  }) {
    if (selectListFlightFailed != null) {
      return selectListFlightFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
  }) {
    return selectListFlightFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
  }) {
    return selectListFlightFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    required TResult orElse(),
  }) {
    if (selectListFlightFailed != null) {
      return selectListFlightFailed(this);
    }
    return orElse();
  }
}

abstract class _SelectListFlightFailed extends ListFlightState {
  const factory _SelectListFlightFailed(
      {required final ListFlightModelState data,
      required final String message}) = _$_SelectListFlightFailed;
  const _SelectListFlightFailed._() : super._();

  @override
  ListFlightModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_SelectListFlightFailedCopyWith<_$_SelectListFlightFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetFlightsSuccessCopyWith<$Res>
    implements $ListFlightStateCopyWith<$Res> {
  factory _$$_GetFlightsSuccessCopyWith(_$_GetFlightsSuccess value,
          $Res Function(_$_GetFlightsSuccess) then) =
      __$$_GetFlightsSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListFlightModelState data});

  @override
  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetFlightsSuccessCopyWithImpl<$Res>
    extends _$ListFlightStateCopyWithImpl<$Res, _$_GetFlightsSuccess>
    implements _$$_GetFlightsSuccessCopyWith<$Res> {
  __$$_GetFlightsSuccessCopyWithImpl(
      _$_GetFlightsSuccess _value, $Res Function(_$_GetFlightsSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetFlightsSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListFlightModelState,
    ));
  }
}

/// @nodoc

class _$_GetFlightsSuccess extends _GetFlightsSuccess {
  const _$_GetFlightsSuccess({required this.data}) : super._();

  @override
  final ListFlightModelState data;

  @override
  String toString() {
    return 'ListFlightState.getFlightsSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetFlightsSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetFlightsSuccessCopyWith<_$_GetFlightsSuccess> get copyWith =>
      __$$_GetFlightsSuccessCopyWithImpl<_$_GetFlightsSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
  }) {
    return getFlightsSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
  }) {
    return getFlightsSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    required TResult orElse(),
  }) {
    if (getFlightsSuccess != null) {
      return getFlightsSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
  }) {
    return getFlightsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
  }) {
    return getFlightsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    required TResult orElse(),
  }) {
    if (getFlightsSuccess != null) {
      return getFlightsSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetFlightsSuccess extends ListFlightState {
  const factory _GetFlightsSuccess({required final ListFlightModelState data}) =
      _$_GetFlightsSuccess;
  const _GetFlightsSuccess._() : super._();

  @override
  ListFlightModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetFlightsSuccessCopyWith<_$_GetFlightsSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetFlightsFailedCopyWith<$Res>
    implements $ListFlightStateCopyWith<$Res> {
  factory _$$_GetFlightsFailedCopyWith(
          _$_GetFlightsFailed value, $Res Function(_$_GetFlightsFailed) then) =
      __$$_GetFlightsFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListFlightModelState data, String message});

  @override
  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetFlightsFailedCopyWithImpl<$Res>
    extends _$ListFlightStateCopyWithImpl<$Res, _$_GetFlightsFailed>
    implements _$$_GetFlightsFailedCopyWith<$Res> {
  __$$_GetFlightsFailedCopyWithImpl(
      _$_GetFlightsFailed _value, $Res Function(_$_GetFlightsFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetFlightsFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListFlightModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetFlightsFailed extends _GetFlightsFailed {
  const _$_GetFlightsFailed({required this.data, required this.message})
      : super._();

  @override
  final ListFlightModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'ListFlightState.getFlightsFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetFlightsFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetFlightsFailedCopyWith<_$_GetFlightsFailed> get copyWith =>
      __$$_GetFlightsFailedCopyWithImpl<_$_GetFlightsFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
  }) {
    return getFlightsFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
  }) {
    return getFlightsFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    required TResult orElse(),
  }) {
    if (getFlightsFailed != null) {
      return getFlightsFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
  }) {
    return getFlightsFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
  }) {
    return getFlightsFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    required TResult orElse(),
  }) {
    if (getFlightsFailed != null) {
      return getFlightsFailed(this);
    }
    return orElse();
  }
}

abstract class _GetFlightsFailed extends ListFlightState {
  const factory _GetFlightsFailed(
      {required final ListFlightModelState data,
      required final String message}) = _$_GetFlightsFailed;
  const _GetFlightsFailed._() : super._();

  @override
  ListFlightModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetFlightsFailedCopyWith<_$_GetFlightsFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
