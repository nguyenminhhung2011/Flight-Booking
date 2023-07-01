// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flight_mobile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FlightMobileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int pageSize, int cursor) fetchFlight,
    required TResult Function(int month, int day, int year) getFlightByDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int pageSize, int cursor)? fetchFlight,
    TResult? Function(int month, int day, int year)? getFlightByDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int pageSize, int cursor)? fetchFlight,
    TResult Function(int month, int day, int year)? getFlightByDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchFlight value) fetchFlight,
    required TResult Function(_GetFlightByDate value) getFlightByDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchFlight value)? fetchFlight,
    TResult? Function(_GetFlightByDate value)? getFlightByDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchFlight value)? fetchFlight,
    TResult Function(_GetFlightByDate value)? getFlightByDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlightMobileEventCopyWith<$Res> {
  factory $FlightMobileEventCopyWith(
          FlightMobileEvent value, $Res Function(FlightMobileEvent) then) =
      _$FlightMobileEventCopyWithImpl<$Res, FlightMobileEvent>;
}

/// @nodoc
class _$FlightMobileEventCopyWithImpl<$Res, $Val extends FlightMobileEvent>
    implements $FlightMobileEventCopyWith<$Res> {
  _$FlightMobileEventCopyWithImpl(this._value, this._then);

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
    extends _$FlightMobileEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'FlightMobileEvent.started()';
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
    required TResult Function(int pageSize, int cursor) fetchFlight,
    required TResult Function(int month, int day, int year) getFlightByDate,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int pageSize, int cursor)? fetchFlight,
    TResult? Function(int month, int day, int year)? getFlightByDate,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int pageSize, int cursor)? fetchFlight,
    TResult Function(int month, int day, int year)? getFlightByDate,
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
    required TResult Function(_FetchFlight value) fetchFlight,
    required TResult Function(_GetFlightByDate value) getFlightByDate,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchFlight value)? fetchFlight,
    TResult? Function(_GetFlightByDate value)? getFlightByDate,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchFlight value)? fetchFlight,
    TResult Function(_GetFlightByDate value)? getFlightByDate,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FlightMobileEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_FetchFlightCopyWith<$Res> {
  factory _$$_FetchFlightCopyWith(
          _$_FetchFlight value, $Res Function(_$_FetchFlight) then) =
      __$$_FetchFlightCopyWithImpl<$Res>;
  @useResult
  $Res call({int pageSize, int cursor});
}

/// @nodoc
class __$$_FetchFlightCopyWithImpl<$Res>
    extends _$FlightMobileEventCopyWithImpl<$Res, _$_FetchFlight>
    implements _$$_FetchFlightCopyWith<$Res> {
  __$$_FetchFlightCopyWithImpl(
      _$_FetchFlight _value, $Res Function(_$_FetchFlight) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageSize = null,
    Object? cursor = null,
  }) {
    return _then(_$_FetchFlight(
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      cursor: null == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FetchFlight implements _FetchFlight {
  const _$_FetchFlight({required this.pageSize, required this.cursor});

  @override
  final int pageSize;
  @override
  final int cursor;

  @override
  String toString() {
    return 'FlightMobileEvent.fetchFlight(pageSize: $pageSize, cursor: $cursor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchFlight &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.cursor, cursor) || other.cursor == cursor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageSize, cursor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchFlightCopyWith<_$_FetchFlight> get copyWith =>
      __$$_FetchFlightCopyWithImpl<_$_FetchFlight>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int pageSize, int cursor) fetchFlight,
    required TResult Function(int month, int day, int year) getFlightByDate,
  }) {
    return fetchFlight(pageSize, cursor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int pageSize, int cursor)? fetchFlight,
    TResult? Function(int month, int day, int year)? getFlightByDate,
  }) {
    return fetchFlight?.call(pageSize, cursor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int pageSize, int cursor)? fetchFlight,
    TResult Function(int month, int day, int year)? getFlightByDate,
    required TResult orElse(),
  }) {
    if (fetchFlight != null) {
      return fetchFlight(pageSize, cursor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchFlight value) fetchFlight,
    required TResult Function(_GetFlightByDate value) getFlightByDate,
  }) {
    return fetchFlight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchFlight value)? fetchFlight,
    TResult? Function(_GetFlightByDate value)? getFlightByDate,
  }) {
    return fetchFlight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchFlight value)? fetchFlight,
    TResult Function(_GetFlightByDate value)? getFlightByDate,
    required TResult orElse(),
  }) {
    if (fetchFlight != null) {
      return fetchFlight(this);
    }
    return orElse();
  }
}

abstract class _FetchFlight implements FlightMobileEvent {
  const factory _FetchFlight(
      {required final int pageSize,
      required final int cursor}) = _$_FetchFlight;

  int get pageSize;
  int get cursor;
  @JsonKey(ignore: true)
  _$$_FetchFlightCopyWith<_$_FetchFlight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetFlightByDateCopyWith<$Res> {
  factory _$$_GetFlightByDateCopyWith(
          _$_GetFlightByDate value, $Res Function(_$_GetFlightByDate) then) =
      __$$_GetFlightByDateCopyWithImpl<$Res>;
  @useResult
  $Res call({int month, int day, int year});
}

/// @nodoc
class __$$_GetFlightByDateCopyWithImpl<$Res>
    extends _$FlightMobileEventCopyWithImpl<$Res, _$_GetFlightByDate>
    implements _$$_GetFlightByDateCopyWith<$Res> {
  __$$_GetFlightByDateCopyWithImpl(
      _$_GetFlightByDate _value, $Res Function(_$_GetFlightByDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? day = null,
    Object? year = null,
  }) {
    return _then(_$_GetFlightByDate(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetFlightByDate implements _GetFlightByDate {
  const _$_GetFlightByDate(
      {required this.month, required this.day, required this.year});

  @override
  final int month;
  @override
  final int day;
  @override
  final int year;

  @override
  String toString() {
    return 'FlightMobileEvent.getFlightByDate(month: $month, day: $day, year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetFlightByDate &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.year, year) || other.year == year));
  }

  @override
  int get hashCode => Object.hash(runtimeType, month, day, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetFlightByDateCopyWith<_$_GetFlightByDate> get copyWith =>
      __$$_GetFlightByDateCopyWithImpl<_$_GetFlightByDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int pageSize, int cursor) fetchFlight,
    required TResult Function(int month, int day, int year) getFlightByDate,
  }) {
    return getFlightByDate(month, day, year);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int pageSize, int cursor)? fetchFlight,
    TResult? Function(int month, int day, int year)? getFlightByDate,
  }) {
    return getFlightByDate?.call(month, day, year);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int pageSize, int cursor)? fetchFlight,
    TResult Function(int month, int day, int year)? getFlightByDate,
    required TResult orElse(),
  }) {
    if (getFlightByDate != null) {
      return getFlightByDate(month, day, year);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchFlight value) fetchFlight,
    required TResult Function(_GetFlightByDate value) getFlightByDate,
  }) {
    return getFlightByDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchFlight value)? fetchFlight,
    TResult? Function(_GetFlightByDate value)? getFlightByDate,
  }) {
    return getFlightByDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchFlight value)? fetchFlight,
    TResult Function(_GetFlightByDate value)? getFlightByDate,
    required TResult orElse(),
  }) {
    if (getFlightByDate != null) {
      return getFlightByDate(this);
    }
    return orElse();
  }
}

abstract class _GetFlightByDate implements FlightMobileEvent {
  const factory _GetFlightByDate(
      {required final int month,
      required final int day,
      required final int year}) = _$_GetFlightByDate;

  int get month;
  int get day;
  int get year;
  @JsonKey(ignore: true)
  _$$_GetFlightByDateCopyWith<_$_GetFlightByDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FlightMobileState {
  FlightMobileModelState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlightMobileModelState data) initial,
    required TResult Function(FlightMobileModelState data) fetchFlightsSuccess,
    required TResult Function(FlightMobileModelState data, String message)
        fetchFlightsFailed,
    required TResult Function(FlightMobileModelState data)
        getFlightByDateSuccess,
    required TResult Function(FlightMobileModelState data, String message)
        getFlightByDateFailed,
    required TResult Function(FlightMobileModelState data, int typeLoading)
        loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlightMobileModelState data)? initial,
    TResult? Function(FlightMobileModelState data)? fetchFlightsSuccess,
    TResult? Function(FlightMobileModelState data, String message)?
        fetchFlightsFailed,
    TResult? Function(FlightMobileModelState data)? getFlightByDateSuccess,
    TResult? Function(FlightMobileModelState data, String message)?
        getFlightByDateFailed,
    TResult? Function(FlightMobileModelState data, int typeLoading)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlightMobileModelState data)? initial,
    TResult Function(FlightMobileModelState data)? fetchFlightsSuccess,
    TResult Function(FlightMobileModelState data, String message)?
        fetchFlightsFailed,
    TResult Function(FlightMobileModelState data)? getFlightByDateSuccess,
    TResult Function(FlightMobileModelState data, String message)?
        getFlightByDateFailed,
    TResult Function(FlightMobileModelState data, int typeLoading)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchFlightSuccess value) fetchFlightsSuccess,
    required TResult Function(_FetchFlightFailed value) fetchFlightsFailed,
    required TResult Function(_GetFlightByDateSuccess value)
        getFlightByDateSuccess,
    required TResult Function(_GetFlightByDateFailed value)
        getFlightByDateFailed,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchFlightSuccess value)? fetchFlightsSuccess,
    TResult? Function(_FetchFlightFailed value)? fetchFlightsFailed,
    TResult? Function(_GetFlightByDateSuccess value)? getFlightByDateSuccess,
    TResult? Function(_GetFlightByDateFailed value)? getFlightByDateFailed,
    TResult? Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchFlightSuccess value)? fetchFlightsSuccess,
    TResult Function(_FetchFlightFailed value)? fetchFlightsFailed,
    TResult Function(_GetFlightByDateSuccess value)? getFlightByDateSuccess,
    TResult Function(_GetFlightByDateFailed value)? getFlightByDateFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlightMobileStateCopyWith<FlightMobileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlightMobileStateCopyWith<$Res> {
  factory $FlightMobileStateCopyWith(
          FlightMobileState value, $Res Function(FlightMobileState) then) =
      _$FlightMobileStateCopyWithImpl<$Res, FlightMobileState>;
  @useResult
  $Res call({FlightMobileModelState data});

  $FlightMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class _$FlightMobileStateCopyWithImpl<$Res, $Val extends FlightMobileState>
    implements $FlightMobileStateCopyWith<$Res> {
  _$FlightMobileStateCopyWithImpl(this._value, this._then);

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
              as FlightMobileModelState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FlightMobileModelStateCopyWith<$Res> get data {
    return $FlightMobileModelStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $FlightMobileStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FlightMobileModelState data});

  @override
  $FlightMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$FlightMobileStateCopyWithImpl<$Res, _$_Initial>
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
              as FlightMobileModelState,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final FlightMobileModelState data;

  @override
  String toString() {
    return 'FlightMobileState.initial(data: $data)';
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
    required TResult Function(FlightMobileModelState data) initial,
    required TResult Function(FlightMobileModelState data) fetchFlightsSuccess,
    required TResult Function(FlightMobileModelState data, String message)
        fetchFlightsFailed,
    required TResult Function(FlightMobileModelState data)
        getFlightByDateSuccess,
    required TResult Function(FlightMobileModelState data, String message)
        getFlightByDateFailed,
    required TResult Function(FlightMobileModelState data, int typeLoading)
        loading,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlightMobileModelState data)? initial,
    TResult? Function(FlightMobileModelState data)? fetchFlightsSuccess,
    TResult? Function(FlightMobileModelState data, String message)?
        fetchFlightsFailed,
    TResult? Function(FlightMobileModelState data)? getFlightByDateSuccess,
    TResult? Function(FlightMobileModelState data, String message)?
        getFlightByDateFailed,
    TResult? Function(FlightMobileModelState data, int typeLoading)? loading,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlightMobileModelState data)? initial,
    TResult Function(FlightMobileModelState data)? fetchFlightsSuccess,
    TResult Function(FlightMobileModelState data, String message)?
        fetchFlightsFailed,
    TResult Function(FlightMobileModelState data)? getFlightByDateSuccess,
    TResult Function(FlightMobileModelState data, String message)?
        getFlightByDateFailed,
    TResult Function(FlightMobileModelState data, int typeLoading)? loading,
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
    required TResult Function(_FetchFlightSuccess value) fetchFlightsSuccess,
    required TResult Function(_FetchFlightFailed value) fetchFlightsFailed,
    required TResult Function(_GetFlightByDateSuccess value)
        getFlightByDateSuccess,
    required TResult Function(_GetFlightByDateFailed value)
        getFlightByDateFailed,
    required TResult Function(_Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchFlightSuccess value)? fetchFlightsSuccess,
    TResult? Function(_FetchFlightFailed value)? fetchFlightsFailed,
    TResult? Function(_GetFlightByDateSuccess value)? getFlightByDateSuccess,
    TResult? Function(_GetFlightByDateFailed value)? getFlightByDateFailed,
    TResult? Function(_Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchFlightSuccess value)? fetchFlightsSuccess,
    TResult Function(_FetchFlightFailed value)? fetchFlightsFailed,
    TResult Function(_GetFlightByDateSuccess value)? getFlightByDateSuccess,
    TResult Function(_GetFlightByDateFailed value)? getFlightByDateFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends FlightMobileState {
  const factory _Initial({required final FlightMobileModelState data}) =
      _$_Initial;
  const _Initial._() : super._();

  @override
  FlightMobileModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchFlightSuccessCopyWith<$Res>
    implements $FlightMobileStateCopyWith<$Res> {
  factory _$$_FetchFlightSuccessCopyWith(_$_FetchFlightSuccess value,
          $Res Function(_$_FetchFlightSuccess) then) =
      __$$_FetchFlightSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FlightMobileModelState data});

  @override
  $FlightMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FetchFlightSuccessCopyWithImpl<$Res>
    extends _$FlightMobileStateCopyWithImpl<$Res, _$_FetchFlightSuccess>
    implements _$$_FetchFlightSuccessCopyWith<$Res> {
  __$$_FetchFlightSuccessCopyWithImpl(
      _$_FetchFlightSuccess _value, $Res Function(_$_FetchFlightSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_FetchFlightSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FlightMobileModelState,
    ));
  }
}

/// @nodoc

class _$_FetchFlightSuccess extends _FetchFlightSuccess {
  const _$_FetchFlightSuccess({required this.data}) : super._();

  @override
  final FlightMobileModelState data;

  @override
  String toString() {
    return 'FlightMobileState.fetchFlightsSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchFlightSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchFlightSuccessCopyWith<_$_FetchFlightSuccess> get copyWith =>
      __$$_FetchFlightSuccessCopyWithImpl<_$_FetchFlightSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlightMobileModelState data) initial,
    required TResult Function(FlightMobileModelState data) fetchFlightsSuccess,
    required TResult Function(FlightMobileModelState data, String message)
        fetchFlightsFailed,
    required TResult Function(FlightMobileModelState data)
        getFlightByDateSuccess,
    required TResult Function(FlightMobileModelState data, String message)
        getFlightByDateFailed,
    required TResult Function(FlightMobileModelState data, int typeLoading)
        loading,
  }) {
    return fetchFlightsSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlightMobileModelState data)? initial,
    TResult? Function(FlightMobileModelState data)? fetchFlightsSuccess,
    TResult? Function(FlightMobileModelState data, String message)?
        fetchFlightsFailed,
    TResult? Function(FlightMobileModelState data)? getFlightByDateSuccess,
    TResult? Function(FlightMobileModelState data, String message)?
        getFlightByDateFailed,
    TResult? Function(FlightMobileModelState data, int typeLoading)? loading,
  }) {
    return fetchFlightsSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlightMobileModelState data)? initial,
    TResult Function(FlightMobileModelState data)? fetchFlightsSuccess,
    TResult Function(FlightMobileModelState data, String message)?
        fetchFlightsFailed,
    TResult Function(FlightMobileModelState data)? getFlightByDateSuccess,
    TResult Function(FlightMobileModelState data, String message)?
        getFlightByDateFailed,
    TResult Function(FlightMobileModelState data, int typeLoading)? loading,
    required TResult orElse(),
  }) {
    if (fetchFlightsSuccess != null) {
      return fetchFlightsSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchFlightSuccess value) fetchFlightsSuccess,
    required TResult Function(_FetchFlightFailed value) fetchFlightsFailed,
    required TResult Function(_GetFlightByDateSuccess value)
        getFlightByDateSuccess,
    required TResult Function(_GetFlightByDateFailed value)
        getFlightByDateFailed,
    required TResult Function(_Loading value) loading,
  }) {
    return fetchFlightsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchFlightSuccess value)? fetchFlightsSuccess,
    TResult? Function(_FetchFlightFailed value)? fetchFlightsFailed,
    TResult? Function(_GetFlightByDateSuccess value)? getFlightByDateSuccess,
    TResult? Function(_GetFlightByDateFailed value)? getFlightByDateFailed,
    TResult? Function(_Loading value)? loading,
  }) {
    return fetchFlightsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchFlightSuccess value)? fetchFlightsSuccess,
    TResult Function(_FetchFlightFailed value)? fetchFlightsFailed,
    TResult Function(_GetFlightByDateSuccess value)? getFlightByDateSuccess,
    TResult Function(_GetFlightByDateFailed value)? getFlightByDateFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (fetchFlightsSuccess != null) {
      return fetchFlightsSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchFlightSuccess extends FlightMobileState {
  const factory _FetchFlightSuccess(
      {required final FlightMobileModelState data}) = _$_FetchFlightSuccess;
  const _FetchFlightSuccess._() : super._();

  @override
  FlightMobileModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_FetchFlightSuccessCopyWith<_$_FetchFlightSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchFlightFailedCopyWith<$Res>
    implements $FlightMobileStateCopyWith<$Res> {
  factory _$$_FetchFlightFailedCopyWith(_$_FetchFlightFailed value,
          $Res Function(_$_FetchFlightFailed) then) =
      __$$_FetchFlightFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FlightMobileModelState data, String message});

  @override
  $FlightMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FetchFlightFailedCopyWithImpl<$Res>
    extends _$FlightMobileStateCopyWithImpl<$Res, _$_FetchFlightFailed>
    implements _$$_FetchFlightFailedCopyWith<$Res> {
  __$$_FetchFlightFailedCopyWithImpl(
      _$_FetchFlightFailed _value, $Res Function(_$_FetchFlightFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_FetchFlightFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FlightMobileModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchFlightFailed extends _FetchFlightFailed {
  const _$_FetchFlightFailed({required this.data, required this.message})
      : super._();

  @override
  final FlightMobileModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'FlightMobileState.fetchFlightsFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchFlightFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchFlightFailedCopyWith<_$_FetchFlightFailed> get copyWith =>
      __$$_FetchFlightFailedCopyWithImpl<_$_FetchFlightFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlightMobileModelState data) initial,
    required TResult Function(FlightMobileModelState data) fetchFlightsSuccess,
    required TResult Function(FlightMobileModelState data, String message)
        fetchFlightsFailed,
    required TResult Function(FlightMobileModelState data)
        getFlightByDateSuccess,
    required TResult Function(FlightMobileModelState data, String message)
        getFlightByDateFailed,
    required TResult Function(FlightMobileModelState data, int typeLoading)
        loading,
  }) {
    return fetchFlightsFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlightMobileModelState data)? initial,
    TResult? Function(FlightMobileModelState data)? fetchFlightsSuccess,
    TResult? Function(FlightMobileModelState data, String message)?
        fetchFlightsFailed,
    TResult? Function(FlightMobileModelState data)? getFlightByDateSuccess,
    TResult? Function(FlightMobileModelState data, String message)?
        getFlightByDateFailed,
    TResult? Function(FlightMobileModelState data, int typeLoading)? loading,
  }) {
    return fetchFlightsFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlightMobileModelState data)? initial,
    TResult Function(FlightMobileModelState data)? fetchFlightsSuccess,
    TResult Function(FlightMobileModelState data, String message)?
        fetchFlightsFailed,
    TResult Function(FlightMobileModelState data)? getFlightByDateSuccess,
    TResult Function(FlightMobileModelState data, String message)?
        getFlightByDateFailed,
    TResult Function(FlightMobileModelState data, int typeLoading)? loading,
    required TResult orElse(),
  }) {
    if (fetchFlightsFailed != null) {
      return fetchFlightsFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchFlightSuccess value) fetchFlightsSuccess,
    required TResult Function(_FetchFlightFailed value) fetchFlightsFailed,
    required TResult Function(_GetFlightByDateSuccess value)
        getFlightByDateSuccess,
    required TResult Function(_GetFlightByDateFailed value)
        getFlightByDateFailed,
    required TResult Function(_Loading value) loading,
  }) {
    return fetchFlightsFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchFlightSuccess value)? fetchFlightsSuccess,
    TResult? Function(_FetchFlightFailed value)? fetchFlightsFailed,
    TResult? Function(_GetFlightByDateSuccess value)? getFlightByDateSuccess,
    TResult? Function(_GetFlightByDateFailed value)? getFlightByDateFailed,
    TResult? Function(_Loading value)? loading,
  }) {
    return fetchFlightsFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchFlightSuccess value)? fetchFlightsSuccess,
    TResult Function(_FetchFlightFailed value)? fetchFlightsFailed,
    TResult Function(_GetFlightByDateSuccess value)? getFlightByDateSuccess,
    TResult Function(_GetFlightByDateFailed value)? getFlightByDateFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (fetchFlightsFailed != null) {
      return fetchFlightsFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchFlightFailed extends FlightMobileState {
  const factory _FetchFlightFailed(
      {required final FlightMobileModelState data,
      required final String message}) = _$_FetchFlightFailed;
  const _FetchFlightFailed._() : super._();

  @override
  FlightMobileModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_FetchFlightFailedCopyWith<_$_FetchFlightFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetFlightByDateSuccessCopyWith<$Res>
    implements $FlightMobileStateCopyWith<$Res> {
  factory _$$_GetFlightByDateSuccessCopyWith(_$_GetFlightByDateSuccess value,
          $Res Function(_$_GetFlightByDateSuccess) then) =
      __$$_GetFlightByDateSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FlightMobileModelState data});

  @override
  $FlightMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetFlightByDateSuccessCopyWithImpl<$Res>
    extends _$FlightMobileStateCopyWithImpl<$Res, _$_GetFlightByDateSuccess>
    implements _$$_GetFlightByDateSuccessCopyWith<$Res> {
  __$$_GetFlightByDateSuccessCopyWithImpl(_$_GetFlightByDateSuccess _value,
      $Res Function(_$_GetFlightByDateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetFlightByDateSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FlightMobileModelState,
    ));
  }
}

/// @nodoc

class _$_GetFlightByDateSuccess extends _GetFlightByDateSuccess {
  const _$_GetFlightByDateSuccess({required this.data}) : super._();

  @override
  final FlightMobileModelState data;

  @override
  String toString() {
    return 'FlightMobileState.getFlightByDateSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetFlightByDateSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetFlightByDateSuccessCopyWith<_$_GetFlightByDateSuccess> get copyWith =>
      __$$_GetFlightByDateSuccessCopyWithImpl<_$_GetFlightByDateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlightMobileModelState data) initial,
    required TResult Function(FlightMobileModelState data) fetchFlightsSuccess,
    required TResult Function(FlightMobileModelState data, String message)
        fetchFlightsFailed,
    required TResult Function(FlightMobileModelState data)
        getFlightByDateSuccess,
    required TResult Function(FlightMobileModelState data, String message)
        getFlightByDateFailed,
    required TResult Function(FlightMobileModelState data, int typeLoading)
        loading,
  }) {
    return getFlightByDateSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlightMobileModelState data)? initial,
    TResult? Function(FlightMobileModelState data)? fetchFlightsSuccess,
    TResult? Function(FlightMobileModelState data, String message)?
        fetchFlightsFailed,
    TResult? Function(FlightMobileModelState data)? getFlightByDateSuccess,
    TResult? Function(FlightMobileModelState data, String message)?
        getFlightByDateFailed,
    TResult? Function(FlightMobileModelState data, int typeLoading)? loading,
  }) {
    return getFlightByDateSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlightMobileModelState data)? initial,
    TResult Function(FlightMobileModelState data)? fetchFlightsSuccess,
    TResult Function(FlightMobileModelState data, String message)?
        fetchFlightsFailed,
    TResult Function(FlightMobileModelState data)? getFlightByDateSuccess,
    TResult Function(FlightMobileModelState data, String message)?
        getFlightByDateFailed,
    TResult Function(FlightMobileModelState data, int typeLoading)? loading,
    required TResult orElse(),
  }) {
    if (getFlightByDateSuccess != null) {
      return getFlightByDateSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchFlightSuccess value) fetchFlightsSuccess,
    required TResult Function(_FetchFlightFailed value) fetchFlightsFailed,
    required TResult Function(_GetFlightByDateSuccess value)
        getFlightByDateSuccess,
    required TResult Function(_GetFlightByDateFailed value)
        getFlightByDateFailed,
    required TResult Function(_Loading value) loading,
  }) {
    return getFlightByDateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchFlightSuccess value)? fetchFlightsSuccess,
    TResult? Function(_FetchFlightFailed value)? fetchFlightsFailed,
    TResult? Function(_GetFlightByDateSuccess value)? getFlightByDateSuccess,
    TResult? Function(_GetFlightByDateFailed value)? getFlightByDateFailed,
    TResult? Function(_Loading value)? loading,
  }) {
    return getFlightByDateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchFlightSuccess value)? fetchFlightsSuccess,
    TResult Function(_FetchFlightFailed value)? fetchFlightsFailed,
    TResult Function(_GetFlightByDateSuccess value)? getFlightByDateSuccess,
    TResult Function(_GetFlightByDateFailed value)? getFlightByDateFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (getFlightByDateSuccess != null) {
      return getFlightByDateSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetFlightByDateSuccess extends FlightMobileState {
  const factory _GetFlightByDateSuccess(
      {required final FlightMobileModelState data}) = _$_GetFlightByDateSuccess;
  const _GetFlightByDateSuccess._() : super._();

  @override
  FlightMobileModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetFlightByDateSuccessCopyWith<_$_GetFlightByDateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetFlightByDateFailedCopyWith<$Res>
    implements $FlightMobileStateCopyWith<$Res> {
  factory _$$_GetFlightByDateFailedCopyWith(_$_GetFlightByDateFailed value,
          $Res Function(_$_GetFlightByDateFailed) then) =
      __$$_GetFlightByDateFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FlightMobileModelState data, String message});

  @override
  $FlightMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetFlightByDateFailedCopyWithImpl<$Res>
    extends _$FlightMobileStateCopyWithImpl<$Res, _$_GetFlightByDateFailed>
    implements _$$_GetFlightByDateFailedCopyWith<$Res> {
  __$$_GetFlightByDateFailedCopyWithImpl(_$_GetFlightByDateFailed _value,
      $Res Function(_$_GetFlightByDateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetFlightByDateFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FlightMobileModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetFlightByDateFailed extends _GetFlightByDateFailed {
  const _$_GetFlightByDateFailed({required this.data, required this.message})
      : super._();

  @override
  final FlightMobileModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'FlightMobileState.getFlightByDateFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetFlightByDateFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetFlightByDateFailedCopyWith<_$_GetFlightByDateFailed> get copyWith =>
      __$$_GetFlightByDateFailedCopyWithImpl<_$_GetFlightByDateFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlightMobileModelState data) initial,
    required TResult Function(FlightMobileModelState data) fetchFlightsSuccess,
    required TResult Function(FlightMobileModelState data, String message)
        fetchFlightsFailed,
    required TResult Function(FlightMobileModelState data)
        getFlightByDateSuccess,
    required TResult Function(FlightMobileModelState data, String message)
        getFlightByDateFailed,
    required TResult Function(FlightMobileModelState data, int typeLoading)
        loading,
  }) {
    return getFlightByDateFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlightMobileModelState data)? initial,
    TResult? Function(FlightMobileModelState data)? fetchFlightsSuccess,
    TResult? Function(FlightMobileModelState data, String message)?
        fetchFlightsFailed,
    TResult? Function(FlightMobileModelState data)? getFlightByDateSuccess,
    TResult? Function(FlightMobileModelState data, String message)?
        getFlightByDateFailed,
    TResult? Function(FlightMobileModelState data, int typeLoading)? loading,
  }) {
    return getFlightByDateFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlightMobileModelState data)? initial,
    TResult Function(FlightMobileModelState data)? fetchFlightsSuccess,
    TResult Function(FlightMobileModelState data, String message)?
        fetchFlightsFailed,
    TResult Function(FlightMobileModelState data)? getFlightByDateSuccess,
    TResult Function(FlightMobileModelState data, String message)?
        getFlightByDateFailed,
    TResult Function(FlightMobileModelState data, int typeLoading)? loading,
    required TResult orElse(),
  }) {
    if (getFlightByDateFailed != null) {
      return getFlightByDateFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchFlightSuccess value) fetchFlightsSuccess,
    required TResult Function(_FetchFlightFailed value) fetchFlightsFailed,
    required TResult Function(_GetFlightByDateSuccess value)
        getFlightByDateSuccess,
    required TResult Function(_GetFlightByDateFailed value)
        getFlightByDateFailed,
    required TResult Function(_Loading value) loading,
  }) {
    return getFlightByDateFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchFlightSuccess value)? fetchFlightsSuccess,
    TResult? Function(_FetchFlightFailed value)? fetchFlightsFailed,
    TResult? Function(_GetFlightByDateSuccess value)? getFlightByDateSuccess,
    TResult? Function(_GetFlightByDateFailed value)? getFlightByDateFailed,
    TResult? Function(_Loading value)? loading,
  }) {
    return getFlightByDateFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchFlightSuccess value)? fetchFlightsSuccess,
    TResult Function(_FetchFlightFailed value)? fetchFlightsFailed,
    TResult Function(_GetFlightByDateSuccess value)? getFlightByDateSuccess,
    TResult Function(_GetFlightByDateFailed value)? getFlightByDateFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (getFlightByDateFailed != null) {
      return getFlightByDateFailed(this);
    }
    return orElse();
  }
}

abstract class _GetFlightByDateFailed extends FlightMobileState {
  const factory _GetFlightByDateFailed(
      {required final FlightMobileModelState data,
      required final String message}) = _$_GetFlightByDateFailed;
  const _GetFlightByDateFailed._() : super._();

  @override
  FlightMobileModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetFlightByDateFailedCopyWith<_$_GetFlightByDateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $FlightMobileStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FlightMobileModelState data, int typeLoading});

  @override
  $FlightMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$FlightMobileStateCopyWithImpl<$Res, _$_Loading>
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
              as FlightMobileModelState,
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
  final FlightMobileModelState data;
  @override
  final int typeLoading;

  @override
  String toString() {
    return 'FlightMobileState.loading(data: $data, typeLoading: $typeLoading)';
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
    required TResult Function(FlightMobileModelState data) initial,
    required TResult Function(FlightMobileModelState data) fetchFlightsSuccess,
    required TResult Function(FlightMobileModelState data, String message)
        fetchFlightsFailed,
    required TResult Function(FlightMobileModelState data)
        getFlightByDateSuccess,
    required TResult Function(FlightMobileModelState data, String message)
        getFlightByDateFailed,
    required TResult Function(FlightMobileModelState data, int typeLoading)
        loading,
  }) {
    return loading(data, typeLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlightMobileModelState data)? initial,
    TResult? Function(FlightMobileModelState data)? fetchFlightsSuccess,
    TResult? Function(FlightMobileModelState data, String message)?
        fetchFlightsFailed,
    TResult? Function(FlightMobileModelState data)? getFlightByDateSuccess,
    TResult? Function(FlightMobileModelState data, String message)?
        getFlightByDateFailed,
    TResult? Function(FlightMobileModelState data, int typeLoading)? loading,
  }) {
    return loading?.call(data, typeLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlightMobileModelState data)? initial,
    TResult Function(FlightMobileModelState data)? fetchFlightsSuccess,
    TResult Function(FlightMobileModelState data, String message)?
        fetchFlightsFailed,
    TResult Function(FlightMobileModelState data)? getFlightByDateSuccess,
    TResult Function(FlightMobileModelState data, String message)?
        getFlightByDateFailed,
    TResult Function(FlightMobileModelState data, int typeLoading)? loading,
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
    required TResult Function(_FetchFlightSuccess value) fetchFlightsSuccess,
    required TResult Function(_FetchFlightFailed value) fetchFlightsFailed,
    required TResult Function(_GetFlightByDateSuccess value)
        getFlightByDateSuccess,
    required TResult Function(_GetFlightByDateFailed value)
        getFlightByDateFailed,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchFlightSuccess value)? fetchFlightsSuccess,
    TResult? Function(_FetchFlightFailed value)? fetchFlightsFailed,
    TResult? Function(_GetFlightByDateSuccess value)? getFlightByDateSuccess,
    TResult? Function(_GetFlightByDateFailed value)? getFlightByDateFailed,
    TResult? Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchFlightSuccess value)? fetchFlightsSuccess,
    TResult Function(_FetchFlightFailed value)? fetchFlightsFailed,
    TResult Function(_GetFlightByDateSuccess value)? getFlightByDateSuccess,
    TResult Function(_GetFlightByDateFailed value)? getFlightByDateFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends FlightMobileState {
  const factory _Loading(
      {required final FlightMobileModelState data,
      required final int typeLoading}) = _$_Loading;
  const _Loading._() : super._();

  @override
  FlightMobileModelState get data;
  int get typeLoading;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}
