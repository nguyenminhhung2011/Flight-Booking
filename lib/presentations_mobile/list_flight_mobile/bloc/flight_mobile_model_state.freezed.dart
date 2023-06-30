// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flight_mobile_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FlightMobileModelState {
  List<Flight> get listFlight => throw _privateConstructorUsedError;
  int get cursor => throw _privateConstructorUsedError;
  DateTime get timeSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlightMobileModelStateCopyWith<FlightMobileModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlightMobileModelStateCopyWith<$Res> {
  factory $FlightMobileModelStateCopyWith(FlightMobileModelState value,
          $Res Function(FlightMobileModelState) then) =
      _$FlightMobileModelStateCopyWithImpl<$Res, FlightMobileModelState>;
  @useResult
  $Res call({List<Flight> listFlight, int cursor, DateTime timeSelected});
}

/// @nodoc
class _$FlightMobileModelStateCopyWithImpl<$Res,
        $Val extends FlightMobileModelState>
    implements $FlightMobileModelStateCopyWith<$Res> {
  _$FlightMobileModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listFlight = null,
    Object? cursor = null,
    Object? timeSelected = null,
  }) {
    return _then(_value.copyWith(
      listFlight: null == listFlight
          ? _value.listFlight
          : listFlight // ignore: cast_nullable_to_non_nullable
              as List<Flight>,
      cursor: null == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as int,
      timeSelected: null == timeSelected
          ? _value.timeSelected
          : timeSelected // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FlightMobileModelStateCopyWith<$Res>
    implements $FlightMobileModelStateCopyWith<$Res> {
  factory _$$_FlightMobileModelStateCopyWith(_$_FlightMobileModelState value,
          $Res Function(_$_FlightMobileModelState) then) =
      __$$_FlightMobileModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Flight> listFlight, int cursor, DateTime timeSelected});
}

/// @nodoc
class __$$_FlightMobileModelStateCopyWithImpl<$Res>
    extends _$FlightMobileModelStateCopyWithImpl<$Res,
        _$_FlightMobileModelState>
    implements _$$_FlightMobileModelStateCopyWith<$Res> {
  __$$_FlightMobileModelStateCopyWithImpl(_$_FlightMobileModelState _value,
      $Res Function(_$_FlightMobileModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listFlight = null,
    Object? cursor = null,
    Object? timeSelected = null,
  }) {
    return _then(_$_FlightMobileModelState(
      listFlight: null == listFlight
          ? _value._listFlight
          : listFlight // ignore: cast_nullable_to_non_nullable
              as List<Flight>,
      cursor: null == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as int,
      timeSelected: null == timeSelected
          ? _value.timeSelected
          : timeSelected // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_FlightMobileModelState implements _FlightMobileModelState {
  const _$_FlightMobileModelState(
      {required final List<Flight> listFlight,
      required this.cursor,
      required this.timeSelected})
      : _listFlight = listFlight;

  final List<Flight> _listFlight;
  @override
  List<Flight> get listFlight {
    if (_listFlight is EqualUnmodifiableListView) return _listFlight;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listFlight);
  }

  @override
  final int cursor;
  @override
  final DateTime timeSelected;

  @override
  String toString() {
    return 'FlightMobileModelState(listFlight: $listFlight, cursor: $cursor, timeSelected: $timeSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlightMobileModelState &&
            const DeepCollectionEquality()
                .equals(other._listFlight, _listFlight) &&
            (identical(other.cursor, cursor) || other.cursor == cursor) &&
            (identical(other.timeSelected, timeSelected) ||
                other.timeSelected == timeSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_listFlight), cursor, timeSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlightMobileModelStateCopyWith<_$_FlightMobileModelState> get copyWith =>
      __$$_FlightMobileModelStateCopyWithImpl<_$_FlightMobileModelState>(
          this, _$identity);
}

abstract class _FlightMobileModelState implements FlightMobileModelState {
  const factory _FlightMobileModelState(
      {required final List<Flight> listFlight,
      required final int cursor,
      required final DateTime timeSelected}) = _$_FlightMobileModelState;

  @override
  List<Flight> get listFlight;
  @override
  int get cursor;
  @override
  DateTime get timeSelected;
  @override
  @JsonKey(ignore: true)
  _$$_FlightMobileModelStateCopyWith<_$_FlightMobileModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
