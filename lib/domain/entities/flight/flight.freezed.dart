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
  int get id => throw _privateConstructorUsedError;
  Airport get arrivalAirport => throw _privateConstructorUsedError;
  Airport get departureAirport => throw _privateConstructorUsedError;
  DateTime get timeStart => throw _privateConstructorUsedError;
  DateTime get timeEnd => throw _privateConstructorUsedError;
  Airline get airline => throw _privateConstructorUsedError;
  List<StopAirport> get stopAirports => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlightCopyWith<Flight> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlightCopyWith<$Res> {
  factory $FlightCopyWith(Flight value, $Res Function(Flight) then) =
      _$FlightCopyWithImpl<$Res, Flight>;
  @useResult
  $Res call(
      {int id,
      Airport arrivalAirport,
      Airport departureAirport,
      DateTime timeStart,
      DateTime timeEnd,
      Airline airline,
      List<StopAirport> stopAirports});

  $AirportCopyWith<$Res> get arrivalAirport;
  $AirportCopyWith<$Res> get departureAirport;
  $AirlineCopyWith<$Res> get airline;
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
    Object? arrivalAirport = null,
    Object? departureAirport = null,
    Object? timeStart = null,
    Object? timeEnd = null,
    Object? airline = null,
    Object? stopAirports = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      arrivalAirport: null == arrivalAirport
          ? _value.arrivalAirport
          : arrivalAirport // ignore: cast_nullable_to_non_nullable
              as Airport,
      departureAirport: null == departureAirport
          ? _value.departureAirport
          : departureAirport // ignore: cast_nullable_to_non_nullable
              as Airport,
      timeStart: null == timeStart
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeEnd: null == timeEnd
          ? _value.timeEnd
          : timeEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      airline: null == airline
          ? _value.airline
          : airline // ignore: cast_nullable_to_non_nullable
              as Airline,
      stopAirports: null == stopAirports
          ? _value.stopAirports
          : stopAirports // ignore: cast_nullable_to_non_nullable
              as List<StopAirport>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AirportCopyWith<$Res> get arrivalAirport {
    return $AirportCopyWith<$Res>(_value.arrivalAirport, (value) {
      return _then(_value.copyWith(arrivalAirport: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AirportCopyWith<$Res> get departureAirport {
    return $AirportCopyWith<$Res>(_value.departureAirport, (value) {
      return _then(_value.copyWith(departureAirport: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AirlineCopyWith<$Res> get airline {
    return $AirlineCopyWith<$Res>(_value.airline, (value) {
      return _then(_value.copyWith(airline: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FlightCopyWith<$Res> implements $FlightCopyWith<$Res> {
  factory _$$_FlightCopyWith(_$_Flight value, $Res Function(_$_Flight) then) =
      __$$_FlightCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Airport arrivalAirport,
      Airport departureAirport,
      DateTime timeStart,
      DateTime timeEnd,
      Airline airline,
      List<StopAirport> stopAirports});

  @override
  $AirportCopyWith<$Res> get arrivalAirport;
  @override
  $AirportCopyWith<$Res> get departureAirport;
  @override
  $AirlineCopyWith<$Res> get airline;
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
    Object? arrivalAirport = null,
    Object? departureAirport = null,
    Object? timeStart = null,
    Object? timeEnd = null,
    Object? airline = null,
    Object? stopAirports = null,
  }) {
    return _then(_$_Flight(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      arrivalAirport: null == arrivalAirport
          ? _value.arrivalAirport
          : arrivalAirport // ignore: cast_nullable_to_non_nullable
              as Airport,
      departureAirport: null == departureAirport
          ? _value.departureAirport
          : departureAirport // ignore: cast_nullable_to_non_nullable
              as Airport,
      timeStart: null == timeStart
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeEnd: null == timeEnd
          ? _value.timeEnd
          : timeEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      airline: null == airline
          ? _value.airline
          : airline // ignore: cast_nullable_to_non_nullable
              as Airline,
      stopAirports: null == stopAirports
          ? _value._stopAirports
          : stopAirports // ignore: cast_nullable_to_non_nullable
              as List<StopAirport>,
    ));
  }
}

/// @nodoc

class _$_Flight implements _Flight {
  const _$_Flight(
      {required this.id,
      required this.arrivalAirport,
      required this.departureAirport,
      required this.timeStart,
      required this.timeEnd,
      required this.airline,
      final List<StopAirport> stopAirports = const <StopAirport>[]})
      : _stopAirports = stopAirports;

  @override
  final int id;
  @override
  final Airport arrivalAirport;
  @override
  final Airport departureAirport;
  @override
  final DateTime timeStart;
  @override
  final DateTime timeEnd;
  @override
  final Airline airline;
  final List<StopAirport> _stopAirports;
  @override
  @JsonKey()
  List<StopAirport> get stopAirports {
    if (_stopAirports is EqualUnmodifiableListView) return _stopAirports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stopAirports);
  }

  @override
  String toString() {
    return 'Flight(id: $id, arrivalAirport: $arrivalAirport, departureAirport: $departureAirport, timeStart: $timeStart, timeEnd: $timeEnd, airline: $airline, stopAirports: $stopAirports)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Flight &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.arrivalAirport, arrivalAirport) ||
                other.arrivalAirport == arrivalAirport) &&
            (identical(other.departureAirport, departureAirport) ||
                other.departureAirport == departureAirport) &&
            (identical(other.timeStart, timeStart) ||
                other.timeStart == timeStart) &&
            (identical(other.timeEnd, timeEnd) || other.timeEnd == timeEnd) &&
            (identical(other.airline, airline) || other.airline == airline) &&
            const DeepCollectionEquality()
                .equals(other._stopAirports, _stopAirports));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      arrivalAirport,
      departureAirport,
      timeStart,
      timeEnd,
      airline,
      const DeepCollectionEquality().hash(_stopAirports));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlightCopyWith<_$_Flight> get copyWith =>
      __$$_FlightCopyWithImpl<_$_Flight>(this, _$identity);
}

abstract class _Flight implements Flight {
  const factory _Flight(
      {required final int id,
      required final Airport arrivalAirport,
      required final Airport departureAirport,
      required final DateTime timeStart,
      required final DateTime timeEnd,
      required final Airline airline,
      final List<StopAirport> stopAirports}) = _$_Flight;

  @override
  int get id;
  @override
  Airport get arrivalAirport;
  @override
  Airport get departureAirport;
  @override
  DateTime get timeStart;
  @override
  DateTime get timeEnd;
  @override
  Airline get airline;
  @override
  List<StopAirport> get stopAirports;
  @override
  @JsonKey(ignore: true)
  _$$_FlightCopyWith<_$_Flight> get copyWith =>
      throw _privateConstructorUsedError;
}
