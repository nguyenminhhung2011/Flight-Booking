// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tic_mobile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicMobileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Airport airport) changeAirportStart,
    required TResult Function(Airport airport) changeAirportFinish,
    required TResult Function(TicTypeEnum type) changeTypeTic,
    required TResult Function() fetchTic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Airport airport)? changeAirportStart,
    TResult? Function(Airport airport)? changeAirportFinish,
    TResult? Function(TicTypeEnum type)? changeTypeTic,
    TResult? Function()? fetchTic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Airport airport)? changeAirportStart,
    TResult Function(Airport airport)? changeAirportFinish,
    TResult Function(TicTypeEnum type)? changeTypeTic,
    TResult Function()? fetchTic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeAirportStart value) changeAirportStart,
    required TResult Function(_ChangeAirportFinish value) changeAirportFinish,
    required TResult Function(_ChangeTypeTic value) changeTypeTic,
    required TResult Function(_FetchTic value) fetchTic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeAirportStart value)? changeAirportStart,
    TResult? Function(_ChangeAirportFinish value)? changeAirportFinish,
    TResult? Function(_ChangeTypeTic value)? changeTypeTic,
    TResult? Function(_FetchTic value)? fetchTic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeAirportStart value)? changeAirportStart,
    TResult Function(_ChangeAirportFinish value)? changeAirportFinish,
    TResult Function(_ChangeTypeTic value)? changeTypeTic,
    TResult Function(_FetchTic value)? fetchTic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicMobileEventCopyWith<$Res> {
  factory $TicMobileEventCopyWith(
          TicMobileEvent value, $Res Function(TicMobileEvent) then) =
      _$TicMobileEventCopyWithImpl<$Res, TicMobileEvent>;
}

/// @nodoc
class _$TicMobileEventCopyWithImpl<$Res, $Val extends TicMobileEvent>
    implements $TicMobileEventCopyWith<$Res> {
  _$TicMobileEventCopyWithImpl(this._value, this._then);

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
    extends _$TicMobileEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'TicMobileEvent.started()';
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
    required TResult Function(Airport airport) changeAirportStart,
    required TResult Function(Airport airport) changeAirportFinish,
    required TResult Function(TicTypeEnum type) changeTypeTic,
    required TResult Function() fetchTic,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Airport airport)? changeAirportStart,
    TResult? Function(Airport airport)? changeAirportFinish,
    TResult? Function(TicTypeEnum type)? changeTypeTic,
    TResult? Function()? fetchTic,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Airport airport)? changeAirportStart,
    TResult Function(Airport airport)? changeAirportFinish,
    TResult Function(TicTypeEnum type)? changeTypeTic,
    TResult Function()? fetchTic,
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
    required TResult Function(_ChangeAirportStart value) changeAirportStart,
    required TResult Function(_ChangeAirportFinish value) changeAirportFinish,
    required TResult Function(_ChangeTypeTic value) changeTypeTic,
    required TResult Function(_FetchTic value) fetchTic,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeAirportStart value)? changeAirportStart,
    TResult? Function(_ChangeAirportFinish value)? changeAirportFinish,
    TResult? Function(_ChangeTypeTic value)? changeTypeTic,
    TResult? Function(_FetchTic value)? fetchTic,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeAirportStart value)? changeAirportStart,
    TResult Function(_ChangeAirportFinish value)? changeAirportFinish,
    TResult Function(_ChangeTypeTic value)? changeTypeTic,
    TResult Function(_FetchTic value)? fetchTic,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TicMobileEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ChangeAirportStartCopyWith<$Res> {
  factory _$$_ChangeAirportStartCopyWith(_$_ChangeAirportStart value,
          $Res Function(_$_ChangeAirportStart) then) =
      __$$_ChangeAirportStartCopyWithImpl<$Res>;
  @useResult
  $Res call({Airport airport});

  $AirportCopyWith<$Res> get airport;
}

/// @nodoc
class __$$_ChangeAirportStartCopyWithImpl<$Res>
    extends _$TicMobileEventCopyWithImpl<$Res, _$_ChangeAirportStart>
    implements _$$_ChangeAirportStartCopyWith<$Res> {
  __$$_ChangeAirportStartCopyWithImpl(
      _$_ChangeAirportStart _value, $Res Function(_$_ChangeAirportStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airport = null,
  }) {
    return _then(_$_ChangeAirportStart(
      airport: null == airport
          ? _value.airport
          : airport // ignore: cast_nullable_to_non_nullable
              as Airport,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AirportCopyWith<$Res> get airport {
    return $AirportCopyWith<$Res>(_value.airport, (value) {
      return _then(_value.copyWith(airport: value));
    });
  }
}

/// @nodoc

class _$_ChangeAirportStart implements _ChangeAirportStart {
  const _$_ChangeAirportStart({required this.airport});

  @override
  final Airport airport;

  @override
  String toString() {
    return 'TicMobileEvent.changeAirportStart(airport: $airport)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeAirportStart &&
            (identical(other.airport, airport) || other.airport == airport));
  }

  @override
  int get hashCode => Object.hash(runtimeType, airport);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeAirportStartCopyWith<_$_ChangeAirportStart> get copyWith =>
      __$$_ChangeAirportStartCopyWithImpl<_$_ChangeAirportStart>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Airport airport) changeAirportStart,
    required TResult Function(Airport airport) changeAirportFinish,
    required TResult Function(TicTypeEnum type) changeTypeTic,
    required TResult Function() fetchTic,
  }) {
    return changeAirportStart(airport);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Airport airport)? changeAirportStart,
    TResult? Function(Airport airport)? changeAirportFinish,
    TResult? Function(TicTypeEnum type)? changeTypeTic,
    TResult? Function()? fetchTic,
  }) {
    return changeAirportStart?.call(airport);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Airport airport)? changeAirportStart,
    TResult Function(Airport airport)? changeAirportFinish,
    TResult Function(TicTypeEnum type)? changeTypeTic,
    TResult Function()? fetchTic,
    required TResult orElse(),
  }) {
    if (changeAirportStart != null) {
      return changeAirportStart(airport);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeAirportStart value) changeAirportStart,
    required TResult Function(_ChangeAirportFinish value) changeAirportFinish,
    required TResult Function(_ChangeTypeTic value) changeTypeTic,
    required TResult Function(_FetchTic value) fetchTic,
  }) {
    return changeAirportStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeAirportStart value)? changeAirportStart,
    TResult? Function(_ChangeAirportFinish value)? changeAirportFinish,
    TResult? Function(_ChangeTypeTic value)? changeTypeTic,
    TResult? Function(_FetchTic value)? fetchTic,
  }) {
    return changeAirportStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeAirportStart value)? changeAirportStart,
    TResult Function(_ChangeAirportFinish value)? changeAirportFinish,
    TResult Function(_ChangeTypeTic value)? changeTypeTic,
    TResult Function(_FetchTic value)? fetchTic,
    required TResult orElse(),
  }) {
    if (changeAirportStart != null) {
      return changeAirportStart(this);
    }
    return orElse();
  }
}

abstract class _ChangeAirportStart implements TicMobileEvent {
  const factory _ChangeAirportStart({required final Airport airport}) =
      _$_ChangeAirportStart;

  Airport get airport;
  @JsonKey(ignore: true)
  _$$_ChangeAirportStartCopyWith<_$_ChangeAirportStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeAirportFinishCopyWith<$Res> {
  factory _$$_ChangeAirportFinishCopyWith(_$_ChangeAirportFinish value,
          $Res Function(_$_ChangeAirportFinish) then) =
      __$$_ChangeAirportFinishCopyWithImpl<$Res>;
  @useResult
  $Res call({Airport airport});

  $AirportCopyWith<$Res> get airport;
}

/// @nodoc
class __$$_ChangeAirportFinishCopyWithImpl<$Res>
    extends _$TicMobileEventCopyWithImpl<$Res, _$_ChangeAirportFinish>
    implements _$$_ChangeAirportFinishCopyWith<$Res> {
  __$$_ChangeAirportFinishCopyWithImpl(_$_ChangeAirportFinish _value,
      $Res Function(_$_ChangeAirportFinish) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airport = null,
  }) {
    return _then(_$_ChangeAirportFinish(
      airport: null == airport
          ? _value.airport
          : airport // ignore: cast_nullable_to_non_nullable
              as Airport,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AirportCopyWith<$Res> get airport {
    return $AirportCopyWith<$Res>(_value.airport, (value) {
      return _then(_value.copyWith(airport: value));
    });
  }
}

/// @nodoc

class _$_ChangeAirportFinish implements _ChangeAirportFinish {
  const _$_ChangeAirportFinish({required this.airport});

  @override
  final Airport airport;

  @override
  String toString() {
    return 'TicMobileEvent.changeAirportFinish(airport: $airport)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeAirportFinish &&
            (identical(other.airport, airport) || other.airport == airport));
  }

  @override
  int get hashCode => Object.hash(runtimeType, airport);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeAirportFinishCopyWith<_$_ChangeAirportFinish> get copyWith =>
      __$$_ChangeAirportFinishCopyWithImpl<_$_ChangeAirportFinish>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Airport airport) changeAirportStart,
    required TResult Function(Airport airport) changeAirportFinish,
    required TResult Function(TicTypeEnum type) changeTypeTic,
    required TResult Function() fetchTic,
  }) {
    return changeAirportFinish(airport);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Airport airport)? changeAirportStart,
    TResult? Function(Airport airport)? changeAirportFinish,
    TResult? Function(TicTypeEnum type)? changeTypeTic,
    TResult? Function()? fetchTic,
  }) {
    return changeAirportFinish?.call(airport);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Airport airport)? changeAirportStart,
    TResult Function(Airport airport)? changeAirportFinish,
    TResult Function(TicTypeEnum type)? changeTypeTic,
    TResult Function()? fetchTic,
    required TResult orElse(),
  }) {
    if (changeAirportFinish != null) {
      return changeAirportFinish(airport);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeAirportStart value) changeAirportStart,
    required TResult Function(_ChangeAirportFinish value) changeAirportFinish,
    required TResult Function(_ChangeTypeTic value) changeTypeTic,
    required TResult Function(_FetchTic value) fetchTic,
  }) {
    return changeAirportFinish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeAirportStart value)? changeAirportStart,
    TResult? Function(_ChangeAirportFinish value)? changeAirportFinish,
    TResult? Function(_ChangeTypeTic value)? changeTypeTic,
    TResult? Function(_FetchTic value)? fetchTic,
  }) {
    return changeAirportFinish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeAirportStart value)? changeAirportStart,
    TResult Function(_ChangeAirportFinish value)? changeAirportFinish,
    TResult Function(_ChangeTypeTic value)? changeTypeTic,
    TResult Function(_FetchTic value)? fetchTic,
    required TResult orElse(),
  }) {
    if (changeAirportFinish != null) {
      return changeAirportFinish(this);
    }
    return orElse();
  }
}

abstract class _ChangeAirportFinish implements TicMobileEvent {
  const factory _ChangeAirportFinish({required final Airport airport}) =
      _$_ChangeAirportFinish;

  Airport get airport;
  @JsonKey(ignore: true)
  _$$_ChangeAirportFinishCopyWith<_$_ChangeAirportFinish> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeTypeTicCopyWith<$Res> {
  factory _$$_ChangeTypeTicCopyWith(
          _$_ChangeTypeTic value, $Res Function(_$_ChangeTypeTic) then) =
      __$$_ChangeTypeTicCopyWithImpl<$Res>;
  @useResult
  $Res call({TicTypeEnum type});
}

/// @nodoc
class __$$_ChangeTypeTicCopyWithImpl<$Res>
    extends _$TicMobileEventCopyWithImpl<$Res, _$_ChangeTypeTic>
    implements _$$_ChangeTypeTicCopyWith<$Res> {
  __$$_ChangeTypeTicCopyWithImpl(
      _$_ChangeTypeTic _value, $Res Function(_$_ChangeTypeTic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$_ChangeTypeTic(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TicTypeEnum,
    ));
  }
}

/// @nodoc

class _$_ChangeTypeTic implements _ChangeTypeTic {
  const _$_ChangeTypeTic({required this.type});

  @override
  final TicTypeEnum type;

  @override
  String toString() {
    return 'TicMobileEvent.changeTypeTic(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeTypeTic &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeTypeTicCopyWith<_$_ChangeTypeTic> get copyWith =>
      __$$_ChangeTypeTicCopyWithImpl<_$_ChangeTypeTic>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Airport airport) changeAirportStart,
    required TResult Function(Airport airport) changeAirportFinish,
    required TResult Function(TicTypeEnum type) changeTypeTic,
    required TResult Function() fetchTic,
  }) {
    return changeTypeTic(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Airport airport)? changeAirportStart,
    TResult? Function(Airport airport)? changeAirportFinish,
    TResult? Function(TicTypeEnum type)? changeTypeTic,
    TResult? Function()? fetchTic,
  }) {
    return changeTypeTic?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Airport airport)? changeAirportStart,
    TResult Function(Airport airport)? changeAirportFinish,
    TResult Function(TicTypeEnum type)? changeTypeTic,
    TResult Function()? fetchTic,
    required TResult orElse(),
  }) {
    if (changeTypeTic != null) {
      return changeTypeTic(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeAirportStart value) changeAirportStart,
    required TResult Function(_ChangeAirportFinish value) changeAirportFinish,
    required TResult Function(_ChangeTypeTic value) changeTypeTic,
    required TResult Function(_FetchTic value) fetchTic,
  }) {
    return changeTypeTic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeAirportStart value)? changeAirportStart,
    TResult? Function(_ChangeAirportFinish value)? changeAirportFinish,
    TResult? Function(_ChangeTypeTic value)? changeTypeTic,
    TResult? Function(_FetchTic value)? fetchTic,
  }) {
    return changeTypeTic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeAirportStart value)? changeAirportStart,
    TResult Function(_ChangeAirportFinish value)? changeAirportFinish,
    TResult Function(_ChangeTypeTic value)? changeTypeTic,
    TResult Function(_FetchTic value)? fetchTic,
    required TResult orElse(),
  }) {
    if (changeTypeTic != null) {
      return changeTypeTic(this);
    }
    return orElse();
  }
}

abstract class _ChangeTypeTic implements TicMobileEvent {
  const factory _ChangeTypeTic({required final TicTypeEnum type}) =
      _$_ChangeTypeTic;

  TicTypeEnum get type;
  @JsonKey(ignore: true)
  _$$_ChangeTypeTicCopyWith<_$_ChangeTypeTic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchTicCopyWith<$Res> {
  factory _$$_FetchTicCopyWith(
          _$_FetchTic value, $Res Function(_$_FetchTic) then) =
      __$$_FetchTicCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchTicCopyWithImpl<$Res>
    extends _$TicMobileEventCopyWithImpl<$Res, _$_FetchTic>
    implements _$$_FetchTicCopyWith<$Res> {
  __$$_FetchTicCopyWithImpl(
      _$_FetchTic _value, $Res Function(_$_FetchTic) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchTic implements _FetchTic {
  const _$_FetchTic();

  @override
  String toString() {
    return 'TicMobileEvent.fetchTic()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchTic);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Airport airport) changeAirportStart,
    required TResult Function(Airport airport) changeAirportFinish,
    required TResult Function(TicTypeEnum type) changeTypeTic,
    required TResult Function() fetchTic,
  }) {
    return fetchTic();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Airport airport)? changeAirportStart,
    TResult? Function(Airport airport)? changeAirportFinish,
    TResult? Function(TicTypeEnum type)? changeTypeTic,
    TResult? Function()? fetchTic,
  }) {
    return fetchTic?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Airport airport)? changeAirportStart,
    TResult Function(Airport airport)? changeAirportFinish,
    TResult Function(TicTypeEnum type)? changeTypeTic,
    TResult Function()? fetchTic,
    required TResult orElse(),
  }) {
    if (fetchTic != null) {
      return fetchTic();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeAirportStart value) changeAirportStart,
    required TResult Function(_ChangeAirportFinish value) changeAirportFinish,
    required TResult Function(_ChangeTypeTic value) changeTypeTic,
    required TResult Function(_FetchTic value) fetchTic,
  }) {
    return fetchTic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeAirportStart value)? changeAirportStart,
    TResult? Function(_ChangeAirportFinish value)? changeAirportFinish,
    TResult? Function(_ChangeTypeTic value)? changeTypeTic,
    TResult? Function(_FetchTic value)? fetchTic,
  }) {
    return fetchTic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeAirportStart value)? changeAirportStart,
    TResult Function(_ChangeAirportFinish value)? changeAirportFinish,
    TResult Function(_ChangeTypeTic value)? changeTypeTic,
    TResult Function(_FetchTic value)? fetchTic,
    required TResult orElse(),
  }) {
    if (fetchTic != null) {
      return fetchTic(this);
    }
    return orElse();
  }
}

abstract class _FetchTic implements TicMobileEvent {
  const factory _FetchTic() = _$_FetchTic;
}

/// @nodoc
mixin _$TicMobileState {
  TicMobileModelState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TicMobileModelState data) initial,
    required TResult Function(TicMobileModelState data) loading,
    required TResult Function(TicMobileModelState data) fetchTicSuccess,
    required TResult Function(TicMobileModelState data, String message)
        fetchTicFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicMobileModelState data)? initial,
    TResult? Function(TicMobileModelState data)? loading,
    TResult? Function(TicMobileModelState data)? fetchTicSuccess,
    TResult? Function(TicMobileModelState data, String message)? fetchTicFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicMobileModelState data)? initial,
    TResult Function(TicMobileModelState data)? loading,
    TResult Function(TicMobileModelState data)? fetchTicSuccess,
    TResult Function(TicMobileModelState data, String message)? fetchTicFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchTicSuccess value) fetchTicSuccess,
    required TResult Function(_FetchTicFailed value) fetchTicFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchTicSuccess value)? fetchTicSuccess,
    TResult? Function(_FetchTicFailed value)? fetchTicFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchTicSuccess value)? fetchTicSuccess,
    TResult Function(_FetchTicFailed value)? fetchTicFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicMobileStateCopyWith<TicMobileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicMobileStateCopyWith<$Res> {
  factory $TicMobileStateCopyWith(
          TicMobileState value, $Res Function(TicMobileState) then) =
      _$TicMobileStateCopyWithImpl<$Res, TicMobileState>;
  @useResult
  $Res call({TicMobileModelState data});

  $TicMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class _$TicMobileStateCopyWithImpl<$Res, $Val extends TicMobileState>
    implements $TicMobileStateCopyWith<$Res> {
  _$TicMobileStateCopyWithImpl(this._value, this._then);

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
              as TicMobileModelState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TicMobileModelStateCopyWith<$Res> get data {
    return $TicMobileModelStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TicMobileStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TicMobileModelState data});

  @override
  $TicMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TicMobileStateCopyWithImpl<$Res, _$_Initial>
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
              as TicMobileModelState,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final TicMobileModelState data;

  @override
  String toString() {
    return 'TicMobileState.initial(data: $data)';
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
    required TResult Function(TicMobileModelState data) initial,
    required TResult Function(TicMobileModelState data) loading,
    required TResult Function(TicMobileModelState data) fetchTicSuccess,
    required TResult Function(TicMobileModelState data, String message)
        fetchTicFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicMobileModelState data)? initial,
    TResult? Function(TicMobileModelState data)? loading,
    TResult? Function(TicMobileModelState data)? fetchTicSuccess,
    TResult? Function(TicMobileModelState data, String message)? fetchTicFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicMobileModelState data)? initial,
    TResult Function(TicMobileModelState data)? loading,
    TResult Function(TicMobileModelState data)? fetchTicSuccess,
    TResult Function(TicMobileModelState data, String message)? fetchTicFailed,
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
    required TResult Function(_FetchTicSuccess value) fetchTicSuccess,
    required TResult Function(_FetchTicFailed value) fetchTicFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchTicSuccess value)? fetchTicSuccess,
    TResult? Function(_FetchTicFailed value)? fetchTicFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchTicSuccess value)? fetchTicSuccess,
    TResult Function(_FetchTicFailed value)? fetchTicFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends TicMobileState {
  const factory _Initial({required final TicMobileModelState data}) =
      _$_Initial;
  const _Initial._() : super._();

  @override
  TicMobileModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $TicMobileStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TicMobileModelState data});

  @override
  $TicMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$TicMobileStateCopyWithImpl<$Res, _$_Loading>
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
              as TicMobileModelState,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final TicMobileModelState data;

  @override
  String toString() {
    return 'TicMobileState.loading(data: $data)';
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
    required TResult Function(TicMobileModelState data) initial,
    required TResult Function(TicMobileModelState data) loading,
    required TResult Function(TicMobileModelState data) fetchTicSuccess,
    required TResult Function(TicMobileModelState data, String message)
        fetchTicFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicMobileModelState data)? initial,
    TResult? Function(TicMobileModelState data)? loading,
    TResult? Function(TicMobileModelState data)? fetchTicSuccess,
    TResult? Function(TicMobileModelState data, String message)? fetchTicFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicMobileModelState data)? initial,
    TResult Function(TicMobileModelState data)? loading,
    TResult Function(TicMobileModelState data)? fetchTicSuccess,
    TResult Function(TicMobileModelState data, String message)? fetchTicFailed,
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
    required TResult Function(_FetchTicSuccess value) fetchTicSuccess,
    required TResult Function(_FetchTicFailed value) fetchTicFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchTicSuccess value)? fetchTicSuccess,
    TResult? Function(_FetchTicFailed value)? fetchTicFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchTicSuccess value)? fetchTicSuccess,
    TResult Function(_FetchTicFailed value)? fetchTicFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends TicMobileState {
  const factory _Loading({required final TicMobileModelState data}) =
      _$_Loading;
  const _Loading._() : super._();

  @override
  TicMobileModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchTicSuccessCopyWith<$Res>
    implements $TicMobileStateCopyWith<$Res> {
  factory _$$_FetchTicSuccessCopyWith(
          _$_FetchTicSuccess value, $Res Function(_$_FetchTicSuccess) then) =
      __$$_FetchTicSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TicMobileModelState data});

  @override
  $TicMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FetchTicSuccessCopyWithImpl<$Res>
    extends _$TicMobileStateCopyWithImpl<$Res, _$_FetchTicSuccess>
    implements _$$_FetchTicSuccessCopyWith<$Res> {
  __$$_FetchTicSuccessCopyWithImpl(
      _$_FetchTicSuccess _value, $Res Function(_$_FetchTicSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_FetchTicSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TicMobileModelState,
    ));
  }
}

/// @nodoc

class _$_FetchTicSuccess extends _FetchTicSuccess {
  const _$_FetchTicSuccess({required this.data}) : super._();

  @override
  final TicMobileModelState data;

  @override
  String toString() {
    return 'TicMobileState.fetchTicSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchTicSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchTicSuccessCopyWith<_$_FetchTicSuccess> get copyWith =>
      __$$_FetchTicSuccessCopyWithImpl<_$_FetchTicSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TicMobileModelState data) initial,
    required TResult Function(TicMobileModelState data) loading,
    required TResult Function(TicMobileModelState data) fetchTicSuccess,
    required TResult Function(TicMobileModelState data, String message)
        fetchTicFailed,
  }) {
    return fetchTicSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicMobileModelState data)? initial,
    TResult? Function(TicMobileModelState data)? loading,
    TResult? Function(TicMobileModelState data)? fetchTicSuccess,
    TResult? Function(TicMobileModelState data, String message)? fetchTicFailed,
  }) {
    return fetchTicSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicMobileModelState data)? initial,
    TResult Function(TicMobileModelState data)? loading,
    TResult Function(TicMobileModelState data)? fetchTicSuccess,
    TResult Function(TicMobileModelState data, String message)? fetchTicFailed,
    required TResult orElse(),
  }) {
    if (fetchTicSuccess != null) {
      return fetchTicSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchTicSuccess value) fetchTicSuccess,
    required TResult Function(_FetchTicFailed value) fetchTicFailed,
  }) {
    return fetchTicSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchTicSuccess value)? fetchTicSuccess,
    TResult? Function(_FetchTicFailed value)? fetchTicFailed,
  }) {
    return fetchTicSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchTicSuccess value)? fetchTicSuccess,
    TResult Function(_FetchTicFailed value)? fetchTicFailed,
    required TResult orElse(),
  }) {
    if (fetchTicSuccess != null) {
      return fetchTicSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchTicSuccess extends TicMobileState {
  const factory _FetchTicSuccess({required final TicMobileModelState data}) =
      _$_FetchTicSuccess;
  const _FetchTicSuccess._() : super._();

  @override
  TicMobileModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_FetchTicSuccessCopyWith<_$_FetchTicSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchTicFailedCopyWith<$Res>
    implements $TicMobileStateCopyWith<$Res> {
  factory _$$_FetchTicFailedCopyWith(
          _$_FetchTicFailed value, $Res Function(_$_FetchTicFailed) then) =
      __$$_FetchTicFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TicMobileModelState data, String message});

  @override
  $TicMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FetchTicFailedCopyWithImpl<$Res>
    extends _$TicMobileStateCopyWithImpl<$Res, _$_FetchTicFailed>
    implements _$$_FetchTicFailedCopyWith<$Res> {
  __$$_FetchTicFailedCopyWithImpl(
      _$_FetchTicFailed _value, $Res Function(_$_FetchTicFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_FetchTicFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TicMobileModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchTicFailed extends _FetchTicFailed {
  const _$_FetchTicFailed({required this.data, required this.message})
      : super._();

  @override
  final TicMobileModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'TicMobileState.fetchTicFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchTicFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchTicFailedCopyWith<_$_FetchTicFailed> get copyWith =>
      __$$_FetchTicFailedCopyWithImpl<_$_FetchTicFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TicMobileModelState data) initial,
    required TResult Function(TicMobileModelState data) loading,
    required TResult Function(TicMobileModelState data) fetchTicSuccess,
    required TResult Function(TicMobileModelState data, String message)
        fetchTicFailed,
  }) {
    return fetchTicFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicMobileModelState data)? initial,
    TResult? Function(TicMobileModelState data)? loading,
    TResult? Function(TicMobileModelState data)? fetchTicSuccess,
    TResult? Function(TicMobileModelState data, String message)? fetchTicFailed,
  }) {
    return fetchTicFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicMobileModelState data)? initial,
    TResult Function(TicMobileModelState data)? loading,
    TResult Function(TicMobileModelState data)? fetchTicSuccess,
    TResult Function(TicMobileModelState data, String message)? fetchTicFailed,
    required TResult orElse(),
  }) {
    if (fetchTicFailed != null) {
      return fetchTicFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchTicSuccess value) fetchTicSuccess,
    required TResult Function(_FetchTicFailed value) fetchTicFailed,
  }) {
    return fetchTicFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchTicSuccess value)? fetchTicSuccess,
    TResult? Function(_FetchTicFailed value)? fetchTicFailed,
  }) {
    return fetchTicFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchTicSuccess value)? fetchTicSuccess,
    TResult Function(_FetchTicFailed value)? fetchTicFailed,
    required TResult orElse(),
  }) {
    if (fetchTicFailed != null) {
      return fetchTicFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchTicFailed extends TicMobileState {
  const factory _FetchTicFailed(
      {required final TicMobileModelState data,
      required final String message}) = _$_FetchTicFailed;
  const _FetchTicFailed._() : super._();

  @override
  TicMobileModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_FetchTicFailedCopyWith<_$_FetchTicFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
