// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flight.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Flight {
  String get id => throw _privateConstructorUsedError;
  String get idStartAirport => throw _privateConstructorUsedError;
  String get idComeAirport => throw _privateConstructorUsedError;
  DateTime get timeStart => throw _privateConstructorUsedError;
  int get timeFflight => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlightCopyWith<Flight> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlightCopyWith<$Res> {
  factory $FlightCopyWith(Flight value, $Res Function(Flight) then) =
      _$FlightCopyWithImpl<$Res, Flight>;
  @useResult
  $Res call(
      {String id,
      String idStartAirport,
      String idComeAirport,
      DateTime timeStart,
      int timeFflight});
}

/// @nodoc
class _$FlightCopyWithImpl<$Res, $Val extends Flight>
    implements $FlightCopyWith<$Res> {
  _$FlightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? idStartAirport = null,
    Object? idComeAirport = null,
    Object? timeStart = null,
    Object? timeFflight = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      idStartAirport: null == idStartAirport
          ? _value.idStartAirport
          : idStartAirport // ignore: cast_nullable_to_non_nullable
              as String,
      idComeAirport: null == idComeAirport
          ? _value.idComeAirport
          : idComeAirport // ignore: cast_nullable_to_non_nullable
              as String,
      timeStart: null == timeStart
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeFflight: null == timeFflight
          ? _value.timeFflight
          : timeFflight // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FlightCopyWith<$Res> implements $FlightCopyWith<$Res> {
  factory _$$_FlightCopyWith(_$_Flight value, $Res Function(_$_Flight) then) =
      __$$_FlightCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String idStartAirport,
      String idComeAirport,
      DateTime timeStart,
      int timeFflight});
}

/// @nodoc
class __$$_FlightCopyWithImpl<$Res>
    extends _$FlightCopyWithImpl<$Res, _$_Flight>
    implements _$$_FlightCopyWith<$Res> {
  __$$_FlightCopyWithImpl(_$_Flight _value, $Res Function(_$_Flight) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? idStartAirport = null,
    Object? idComeAirport = null,
    Object? timeStart = null,
    Object? timeFflight = null,
  }) {
    return _then(_$_Flight(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      idStartAirport: null == idStartAirport
          ? _value.idStartAirport
          : idStartAirport // ignore: cast_nullable_to_non_nullable
              as String,
      idComeAirport: null == idComeAirport
          ? _value.idComeAirport
          : idComeAirport // ignore: cast_nullable_to_non_nullable
              as String,
      timeStart: null == timeStart
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeFflight: null == timeFflight
          ? _value.timeFflight
          : timeFflight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Flight implements _Flight {
  const _$_Flight(
      {required this.id,
      required this.idStartAirport,
      required this.idComeAirport,
      required this.timeStart,
      required this.timeFflight});

  @override
  final String id;
  @override
  final String idStartAirport;
  @override
  final String idComeAirport;
  @override
  final DateTime timeStart;
  @override
  final int timeFflight;

  @override
  String toString() {
    return 'Flight(id: $id, idStartAirport: $idStartAirport, idComeAirport: $idComeAirport, timeStart: $timeStart, timeFflight: $timeFflight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Flight &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idStartAirport, idStartAirport) ||
                other.idStartAirport == idStartAirport) &&
            (identical(other.idComeAirport, idComeAirport) ||
                other.idComeAirport == idComeAirport) &&
            (identical(other.timeStart, timeStart) ||
                other.timeStart == timeStart) &&
            (identical(other.timeFflight, timeFflight) ||
                other.timeFflight == timeFflight));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, idStartAirport, idComeAirport, timeStart, timeFflight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlightCopyWith<_$_Flight> get copyWith =>
      __$$_FlightCopyWithImpl<_$_Flight>(this, _$identity);
}

abstract class _Flight implements Flight {
  const factory _Flight(
      {required final String id,
      required final String idStartAirport,
      required final String idComeAirport,
      required final DateTime timeStart,
      required final int timeFflight}) = _$_Flight;

  @override
  String get id;
  @override
  String get idStartAirport;
  @override
  String get idComeAirport;
  @override
  DateTime get timeStart;
  @override
  int get timeFflight;
  @override
  @JsonKey(ignore: true)
  _$$_FlightCopyWith<_$_Flight> get copyWith =>
      throw _privateConstructorUsedError;
}
