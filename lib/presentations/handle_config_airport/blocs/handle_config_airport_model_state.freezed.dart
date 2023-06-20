// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'handle_config_airport_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HandleConfigAirportModelState {
  List<Flight> get flightConfigs => throw _privateConstructorUsedError;
  List<Airport> get airports => throw _privateConstructorUsedError;
  Airport? get airportSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HandleConfigAirportModelStateCopyWith<HandleConfigAirportModelState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HandleConfigAirportModelStateCopyWith<$Res> {
  factory $HandleConfigAirportModelStateCopyWith(
          HandleConfigAirportModelState value,
          $Res Function(HandleConfigAirportModelState) then) =
      _$HandleConfigAirportModelStateCopyWithImpl<$Res,
          HandleConfigAirportModelState>;
  @useResult
  $Res call(
      {List<Flight> flightConfigs,
      List<Airport> airports,
      Airport? airportSelected});

  $AirportCopyWith<$Res>? get airportSelected;
}

/// @nodoc
class _$HandleConfigAirportModelStateCopyWithImpl<$Res,
        $Val extends HandleConfigAirportModelState>
    implements $HandleConfigAirportModelStateCopyWith<$Res> {
  _$HandleConfigAirportModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flightConfigs = null,
    Object? airports = null,
    Object? airportSelected = freezed,
  }) {
    return _then(_value.copyWith(
      flightConfigs: null == flightConfigs
          ? _value.flightConfigs
          : flightConfigs // ignore: cast_nullable_to_non_nullable
              as List<Flight>,
      airports: null == airports
          ? _value.airports
          : airports // ignore: cast_nullable_to_non_nullable
              as List<Airport>,
      airportSelected: freezed == airportSelected
          ? _value.airportSelected
          : airportSelected // ignore: cast_nullable_to_non_nullable
              as Airport?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AirportCopyWith<$Res>? get airportSelected {
    if (_value.airportSelected == null) {
      return null;
    }

    return $AirportCopyWith<$Res>(_value.airportSelected!, (value) {
      return _then(_value.copyWith(airportSelected: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HandleConfigAirportModelStateCopyWith<$Res>
    implements $HandleConfigAirportModelStateCopyWith<$Res> {
  factory _$$_HandleConfigAirportModelStateCopyWith(
          _$_HandleConfigAirportModelState value,
          $Res Function(_$_HandleConfigAirportModelState) then) =
      __$$_HandleConfigAirportModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Flight> flightConfigs,
      List<Airport> airports,
      Airport? airportSelected});

  @override
  $AirportCopyWith<$Res>? get airportSelected;
}

/// @nodoc
class __$$_HandleConfigAirportModelStateCopyWithImpl<$Res>
    extends _$HandleConfigAirportModelStateCopyWithImpl<$Res,
        _$_HandleConfigAirportModelState>
    implements _$$_HandleConfigAirportModelStateCopyWith<$Res> {
  __$$_HandleConfigAirportModelStateCopyWithImpl(
      _$_HandleConfigAirportModelState _value,
      $Res Function(_$_HandleConfigAirportModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flightConfigs = null,
    Object? airports = null,
    Object? airportSelected = freezed,
  }) {
    return _then(_$_HandleConfigAirportModelState(
      flightConfigs: null == flightConfigs
          ? _value._flightConfigs
          : flightConfigs // ignore: cast_nullable_to_non_nullable
              as List<Flight>,
      airports: null == airports
          ? _value._airports
          : airports // ignore: cast_nullable_to_non_nullable
              as List<Airport>,
      airportSelected: freezed == airportSelected
          ? _value.airportSelected
          : airportSelected // ignore: cast_nullable_to_non_nullable
              as Airport?,
    ));
  }
}

/// @nodoc

class _$_HandleConfigAirportModelState
    implements _HandleConfigAirportModelState {
  const _$_HandleConfigAirportModelState(
      {required final List<Flight> flightConfigs,
      required final List<Airport> airports,
      this.airportSelected})
      : _flightConfigs = flightConfigs,
        _airports = airports;

  final List<Flight> _flightConfigs;
  @override
  List<Flight> get flightConfigs {
    if (_flightConfigs is EqualUnmodifiableListView) return _flightConfigs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flightConfigs);
  }

  final List<Airport> _airports;
  @override
  List<Airport> get airports {
    if (_airports is EqualUnmodifiableListView) return _airports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_airports);
  }

  @override
  final Airport? airportSelected;

  @override
  String toString() {
    return 'HandleConfigAirportModelState(flightConfigs: $flightConfigs, airports: $airports, airportSelected: $airportSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HandleConfigAirportModelState &&
            const DeepCollectionEquality()
                .equals(other._flightConfigs, _flightConfigs) &&
            const DeepCollectionEquality().equals(other._airports, _airports) &&
            (identical(other.airportSelected, airportSelected) ||
                other.airportSelected == airportSelected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_flightConfigs),
      const DeepCollectionEquality().hash(_airports),
      airportSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HandleConfigAirportModelStateCopyWith<_$_HandleConfigAirportModelState>
      get copyWith => __$$_HandleConfigAirportModelStateCopyWithImpl<
          _$_HandleConfigAirportModelState>(this, _$identity);
}

abstract class _HandleConfigAirportModelState
    implements HandleConfigAirportModelState {
  const factory _HandleConfigAirportModelState(
      {required final List<Flight> flightConfigs,
      required final List<Airport> airports,
      final Airport? airportSelected}) = _$_HandleConfigAirportModelState;

  @override
  List<Flight> get flightConfigs;
  @override
  List<Airport> get airports;
  @override
  Airport? get airportSelected;
  @override
  @JsonKey(ignore: true)
  _$$_HandleConfigAirportModelStateCopyWith<_$_HandleConfigAirportModelState>
      get copyWith => throw _privateConstructorUsedError;
}
