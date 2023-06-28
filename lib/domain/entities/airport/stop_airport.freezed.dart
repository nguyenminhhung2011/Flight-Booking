// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stop_airport.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StopAirport {
  Airport get airport => throw _privateConstructorUsedError;
  DateTime get stopTime => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StopAirportCopyWith<StopAirport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StopAirportCopyWith<$Res> {
  factory $StopAirportCopyWith(
          StopAirport value, $Res Function(StopAirport) then) =
      _$StopAirportCopyWithImpl<$Res, StopAirport>;
  @useResult
  $Res call({Airport airport, DateTime stopTime, String description});

  $AirportCopyWith<$Res> get airport;
}

/// @nodoc
class _$StopAirportCopyWithImpl<$Res, $Val extends StopAirport>
    implements $StopAirportCopyWith<$Res> {
  _$StopAirportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airport = null,
    Object? stopTime = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      airport: null == airport
          ? _value.airport
          : airport // ignore: cast_nullable_to_non_nullable
              as Airport,
      stopTime: null == stopTime
          ? _value.stopTime
          : stopTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AirportCopyWith<$Res> get airport {
    return $AirportCopyWith<$Res>(_value.airport, (value) {
      return _then(_value.copyWith(airport: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StopAirportCopyWith<$Res>
    implements $StopAirportCopyWith<$Res> {
  factory _$$_StopAirportCopyWith(
          _$_StopAirport value, $Res Function(_$_StopAirport) then) =
      __$$_StopAirportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Airport airport, DateTime stopTime, String description});

  @override
  $AirportCopyWith<$Res> get airport;
}

/// @nodoc
class __$$_StopAirportCopyWithImpl<$Res>
    extends _$StopAirportCopyWithImpl<$Res, _$_StopAirport>
    implements _$$_StopAirportCopyWith<$Res> {
  __$$_StopAirportCopyWithImpl(
      _$_StopAirport _value, $Res Function(_$_StopAirport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airport = null,
    Object? stopTime = null,
    Object? description = null,
  }) {
    return _then(_$_StopAirport(
      airport: null == airport
          ? _value.airport
          : airport // ignore: cast_nullable_to_non_nullable
              as Airport,
      stopTime: null == stopTime
          ? _value.stopTime
          : stopTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StopAirport implements _StopAirport {
  const _$_StopAirport(
      {required this.airport,
      required this.stopTime,
      required this.description});

  @override
  final Airport airport;
  @override
  final DateTime stopTime;
  @override
  final String description;

  @override
  String toString() {
    return 'StopAirport(airport: $airport, stopTime: $stopTime, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StopAirport &&
            (identical(other.airport, airport) || other.airport == airport) &&
            (identical(other.stopTime, stopTime) ||
                other.stopTime == stopTime) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, airport, stopTime, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StopAirportCopyWith<_$_StopAirport> get copyWith =>
      __$$_StopAirportCopyWithImpl<_$_StopAirport>(this, _$identity);
}

abstract class _StopAirport implements StopAirport {
  const factory _StopAirport(
      {required final Airport airport,
      required final DateTime stopTime,
      required final String description}) = _$_StopAirport;

  @override
  Airport get airport;
  @override
  DateTime get stopTime;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_StopAirportCopyWith<_$_StopAirport> get copyWith =>
      throw _privateConstructorUsedError;
}
