// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_edit_flight_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddEditFlightModelState {
  List<Airport> get listAirport => throw _privateConstructorUsedError;
  List<Airline> get listAirline => throw _privateConstructorUsedError;
  DateTime get timeStart => throw _privateConstructorUsedError;
  DateTime get timeEnd => throw _privateConstructorUsedError;
  String get headerText => throw _privateConstructorUsedError;
  List<TicketInformation> get listTicInformation =>
      throw _privateConstructorUsedError;
  int get ticInformationDisplayIndex => throw _privateConstructorUsedError;
  Airport? get airportStart => throw _privateConstructorUsedError;
  Airport? get airportEnd => throw _privateConstructorUsedError;
  Airline? get airline => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddEditFlightModelStateCopyWith<AddEditFlightModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEditFlightModelStateCopyWith<$Res> {
  factory $AddEditFlightModelStateCopyWith(AddEditFlightModelState value,
          $Res Function(AddEditFlightModelState) then) =
      _$AddEditFlightModelStateCopyWithImpl<$Res, AddEditFlightModelState>;
  @useResult
  $Res call(
      {List<Airport> listAirport,
      List<Airline> listAirline,
      DateTime timeStart,
      DateTime timeEnd,
      String headerText,
      List<TicketInformation> listTicInformation,
      int ticInformationDisplayIndex,
      Airport? airportStart,
      Airport? airportEnd,
      Airline? airline});

  $AirportCopyWith<$Res>? get airportStart;
  $AirportCopyWith<$Res>? get airportEnd;
  $AirlineCopyWith<$Res>? get airline;
}

/// @nodoc
class _$AddEditFlightModelStateCopyWithImpl<$Res,
        $Val extends AddEditFlightModelState>
    implements $AddEditFlightModelStateCopyWith<$Res> {
  _$AddEditFlightModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listAirport = null,
    Object? listAirline = null,
    Object? timeStart = null,
    Object? timeEnd = null,
    Object? headerText = null,
    Object? listTicInformation = null,
    Object? ticInformationDisplayIndex = null,
    Object? airportStart = freezed,
    Object? airportEnd = freezed,
    Object? airline = freezed,
  }) {
    return _then(_value.copyWith(
      listAirport: null == listAirport
          ? _value.listAirport
          : listAirport // ignore: cast_nullable_to_non_nullable
              as List<Airport>,
      listAirline: null == listAirline
          ? _value.listAirline
          : listAirline // ignore: cast_nullable_to_non_nullable
              as List<Airline>,
      timeStart: null == timeStart
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeEnd: null == timeEnd
          ? _value.timeEnd
          : timeEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      headerText: null == headerText
          ? _value.headerText
          : headerText // ignore: cast_nullable_to_non_nullable
              as String,
      listTicInformation: null == listTicInformation
          ? _value.listTicInformation
          : listTicInformation // ignore: cast_nullable_to_non_nullable
              as List<TicketInformation>,
      ticInformationDisplayIndex: null == ticInformationDisplayIndex
          ? _value.ticInformationDisplayIndex
          : ticInformationDisplayIndex // ignore: cast_nullable_to_non_nullable
              as int,
      airportStart: freezed == airportStart
          ? _value.airportStart
          : airportStart // ignore: cast_nullable_to_non_nullable
              as Airport?,
      airportEnd: freezed == airportEnd
          ? _value.airportEnd
          : airportEnd // ignore: cast_nullable_to_non_nullable
              as Airport?,
      airline: freezed == airline
          ? _value.airline
          : airline // ignore: cast_nullable_to_non_nullable
              as Airline?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AirportCopyWith<$Res>? get airportStart {
    if (_value.airportStart == null) {
      return null;
    }

    return $AirportCopyWith<$Res>(_value.airportStart!, (value) {
      return _then(_value.copyWith(airportStart: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AirportCopyWith<$Res>? get airportEnd {
    if (_value.airportEnd == null) {
      return null;
    }

    return $AirportCopyWith<$Res>(_value.airportEnd!, (value) {
      return _then(_value.copyWith(airportEnd: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AirlineCopyWith<$Res>? get airline {
    if (_value.airline == null) {
      return null;
    }

    return $AirlineCopyWith<$Res>(_value.airline!, (value) {
      return _then(_value.copyWith(airline: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddEditFlightModelStateCopyWith<$Res>
    implements $AddEditFlightModelStateCopyWith<$Res> {
  factory _$$_AddEditFlightModelStateCopyWith(_$_AddEditFlightModelState value,
          $Res Function(_$_AddEditFlightModelState) then) =
      __$$_AddEditFlightModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Airport> listAirport,
      List<Airline> listAirline,
      DateTime timeStart,
      DateTime timeEnd,
      String headerText,
      List<TicketInformation> listTicInformation,
      int ticInformationDisplayIndex,
      Airport? airportStart,
      Airport? airportEnd,
      Airline? airline});

  @override
  $AirportCopyWith<$Res>? get airportStart;
  @override
  $AirportCopyWith<$Res>? get airportEnd;
  @override
  $AirlineCopyWith<$Res>? get airline;
}

/// @nodoc
class __$$_AddEditFlightModelStateCopyWithImpl<$Res>
    extends _$AddEditFlightModelStateCopyWithImpl<$Res,
        _$_AddEditFlightModelState>
    implements _$$_AddEditFlightModelStateCopyWith<$Res> {
  __$$_AddEditFlightModelStateCopyWithImpl(_$_AddEditFlightModelState _value,
      $Res Function(_$_AddEditFlightModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listAirport = null,
    Object? listAirline = null,
    Object? timeStart = null,
    Object? timeEnd = null,
    Object? headerText = null,
    Object? listTicInformation = null,
    Object? ticInformationDisplayIndex = null,
    Object? airportStart = freezed,
    Object? airportEnd = freezed,
    Object? airline = freezed,
  }) {
    return _then(_$_AddEditFlightModelState(
      listAirport: null == listAirport
          ? _value._listAirport
          : listAirport // ignore: cast_nullable_to_non_nullable
              as List<Airport>,
      listAirline: null == listAirline
          ? _value._listAirline
          : listAirline // ignore: cast_nullable_to_non_nullable
              as List<Airline>,
      timeStart: null == timeStart
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeEnd: null == timeEnd
          ? _value.timeEnd
          : timeEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      headerText: null == headerText
          ? _value.headerText
          : headerText // ignore: cast_nullable_to_non_nullable
              as String,
      listTicInformation: null == listTicInformation
          ? _value._listTicInformation
          : listTicInformation // ignore: cast_nullable_to_non_nullable
              as List<TicketInformation>,
      ticInformationDisplayIndex: null == ticInformationDisplayIndex
          ? _value.ticInformationDisplayIndex
          : ticInformationDisplayIndex // ignore: cast_nullable_to_non_nullable
              as int,
      airportStart: freezed == airportStart
          ? _value.airportStart
          : airportStart // ignore: cast_nullable_to_non_nullable
              as Airport?,
      airportEnd: freezed == airportEnd
          ? _value.airportEnd
          : airportEnd // ignore: cast_nullable_to_non_nullable
              as Airport?,
      airline: freezed == airline
          ? _value.airline
          : airline // ignore: cast_nullable_to_non_nullable
              as Airline?,
    ));
  }
}

/// @nodoc

class _$_AddEditFlightModelState implements _AddEditFlightModelState {
  const _$_AddEditFlightModelState(
      {required final List<Airport> listAirport,
      required final List<Airline> listAirline,
      required this.timeStart,
      required this.timeEnd,
      required this.headerText,
      required final List<TicketInformation> listTicInformation,
      required this.ticInformationDisplayIndex,
      this.airportStart,
      this.airportEnd,
      this.airline})
      : _listAirport = listAirport,
        _listAirline = listAirline,
        _listTicInformation = listTicInformation;

  final List<Airport> _listAirport;
  @override
  List<Airport> get listAirport {
    if (_listAirport is EqualUnmodifiableListView) return _listAirport;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listAirport);
  }

  final List<Airline> _listAirline;
  @override
  List<Airline> get listAirline {
    if (_listAirline is EqualUnmodifiableListView) return _listAirline;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listAirline);
  }

  @override
  final DateTime timeStart;
  @override
  final DateTime timeEnd;
  @override
  final String headerText;
  final List<TicketInformation> _listTicInformation;
  @override
  List<TicketInformation> get listTicInformation {
    if (_listTicInformation is EqualUnmodifiableListView)
      return _listTicInformation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTicInformation);
  }

  @override
  final int ticInformationDisplayIndex;
  @override
  final Airport? airportStart;
  @override
  final Airport? airportEnd;
  @override
  final Airline? airline;

  @override
  String toString() {
    return 'AddEditFlightModelState(listAirport: $listAirport, listAirline: $listAirline, timeStart: $timeStart, timeEnd: $timeEnd, headerText: $headerText, listTicInformation: $listTicInformation, ticInformationDisplayIndex: $ticInformationDisplayIndex, airportStart: $airportStart, airportEnd: $airportEnd, airline: $airline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddEditFlightModelState &&
            const DeepCollectionEquality()
                .equals(other._listAirport, _listAirport) &&
            const DeepCollectionEquality()
                .equals(other._listAirline, _listAirline) &&
            (identical(other.timeStart, timeStart) ||
                other.timeStart == timeStart) &&
            (identical(other.timeEnd, timeEnd) || other.timeEnd == timeEnd) &&
            (identical(other.headerText, headerText) ||
                other.headerText == headerText) &&
            const DeepCollectionEquality()
                .equals(other._listTicInformation, _listTicInformation) &&
            (identical(other.ticInformationDisplayIndex,
                    ticInformationDisplayIndex) ||
                other.ticInformationDisplayIndex ==
                    ticInformationDisplayIndex) &&
            (identical(other.airportStart, airportStart) ||
                other.airportStart == airportStart) &&
            (identical(other.airportEnd, airportEnd) ||
                other.airportEnd == airportEnd) &&
            (identical(other.airline, airline) || other.airline == airline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listAirport),
      const DeepCollectionEquality().hash(_listAirline),
      timeStart,
      timeEnd,
      headerText,
      const DeepCollectionEquality().hash(_listTicInformation),
      ticInformationDisplayIndex,
      airportStart,
      airportEnd,
      airline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddEditFlightModelStateCopyWith<_$_AddEditFlightModelState>
      get copyWith =>
          __$$_AddEditFlightModelStateCopyWithImpl<_$_AddEditFlightModelState>(
              this, _$identity);
}

abstract class _AddEditFlightModelState implements AddEditFlightModelState {
  const factory _AddEditFlightModelState(
      {required final List<Airport> listAirport,
      required final List<Airline> listAirline,
      required final DateTime timeStart,
      required final DateTime timeEnd,
      required final String headerText,
      required final List<TicketInformation> listTicInformation,
      required final int ticInformationDisplayIndex,
      final Airport? airportStart,
      final Airport? airportEnd,
      final Airline? airline}) = _$_AddEditFlightModelState;

  @override
  List<Airport> get listAirport;
  @override
  List<Airline> get listAirline;
  @override
  DateTime get timeStart;
  @override
  DateTime get timeEnd;
  @override
  String get headerText;
  @override
  List<TicketInformation> get listTicInformation;
  @override
  int get ticInformationDisplayIndex;
  @override
  Airport? get airportStart;
  @override
  Airport? get airportEnd;
  @override
  Airline? get airline;
  @override
  @JsonKey(ignore: true)
  _$$_AddEditFlightModelStateCopyWith<_$_AddEditFlightModelState>
      get copyWith => throw _privateConstructorUsedError;
}
