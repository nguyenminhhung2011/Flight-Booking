// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'airport_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AirportModelState {
  List<Airport> get airports => throw _privateConstructorUsedError;
  Map<String, List<Flight>> get flightDepartures =>
      throw _privateConstructorUsedError;
  Map<String, List<Flight>> get flightArrival =>
      throw _privateConstructorUsedError;
  Airport? get airportView => throw _privateConstructorUsedError;
  int get pageView => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get totalPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AirportModelStateCopyWith<AirportModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirportModelStateCopyWith<$Res> {
  factory $AirportModelStateCopyWith(
          AirportModelState value, $Res Function(AirportModelState) then) =
      _$AirportModelStateCopyWithImpl<$Res, AirportModelState>;
  @useResult
  $Res call(
      {List<Airport> airports,
      Map<String, List<Flight>> flightDepartures,
      Map<String, List<Flight>> flightArrival,
      Airport? airportView,
      int pageView,
      int currentPage,
      int totalPage});

  $AirportCopyWith<$Res>? get airportView;
}

/// @nodoc
class _$AirportModelStateCopyWithImpl<$Res, $Val extends AirportModelState>
    implements $AirportModelStateCopyWith<$Res> {
  _$AirportModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airports = null,
    Object? flightDepartures = null,
    Object? flightArrival = null,
    Object? airportView = freezed,
    Object? pageView = null,
    Object? currentPage = null,
    Object? totalPage = null,
  }) {
    return _then(_value.copyWith(
      airports: null == airports
          ? _value.airports
          : airports // ignore: cast_nullable_to_non_nullable
              as List<Airport>,
      flightDepartures: null == flightDepartures
          ? _value.flightDepartures
          : flightDepartures // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Flight>>,
      flightArrival: null == flightArrival
          ? _value.flightArrival
          : flightArrival // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Flight>>,
      airportView: freezed == airportView
          ? _value.airportView
          : airportView // ignore: cast_nullable_to_non_nullable
              as Airport?,
      pageView: null == pageView
          ? _value.pageView
          : pageView // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AirportCopyWith<$Res>? get airportView {
    if (_value.airportView == null) {
      return null;
    }

    return $AirportCopyWith<$Res>(_value.airportView!, (value) {
      return _then(_value.copyWith(airportView: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AirportModelStateCopyWith<$Res>
    implements $AirportModelStateCopyWith<$Res> {
  factory _$$_AirportModelStateCopyWith(_$_AirportModelState value,
          $Res Function(_$_AirportModelState) then) =
      __$$_AirportModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Airport> airports,
      Map<String, List<Flight>> flightDepartures,
      Map<String, List<Flight>> flightArrival,
      Airport? airportView,
      int pageView,
      int currentPage,
      int totalPage});

  @override
  $AirportCopyWith<$Res>? get airportView;
}

/// @nodoc
class __$$_AirportModelStateCopyWithImpl<$Res>
    extends _$AirportModelStateCopyWithImpl<$Res, _$_AirportModelState>
    implements _$$_AirportModelStateCopyWith<$Res> {
  __$$_AirportModelStateCopyWithImpl(
      _$_AirportModelState _value, $Res Function(_$_AirportModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airports = null,
    Object? flightDepartures = null,
    Object? flightArrival = null,
    Object? airportView = freezed,
    Object? pageView = null,
    Object? currentPage = null,
    Object? totalPage = null,
  }) {
    return _then(_$_AirportModelState(
      airports: null == airports
          ? _value._airports
          : airports // ignore: cast_nullable_to_non_nullable
              as List<Airport>,
      flightDepartures: null == flightDepartures
          ? _value._flightDepartures
          : flightDepartures // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Flight>>,
      flightArrival: null == flightArrival
          ? _value._flightArrival
          : flightArrival // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Flight>>,
      airportView: freezed == airportView
          ? _value.airportView
          : airportView // ignore: cast_nullable_to_non_nullable
              as Airport?,
      pageView: null == pageView
          ? _value.pageView
          : pageView // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AirportModelState implements _AirportModelState {
  const _$_AirportModelState(
      {required final List<Airport> airports,
      required final Map<String, List<Flight>> flightDepartures,
      required final Map<String, List<Flight>> flightArrival,
      this.airportView,
      required this.pageView,
      required this.currentPage,
      required this.totalPage})
      : _airports = airports,
        _flightDepartures = flightDepartures,
        _flightArrival = flightArrival;

  final List<Airport> _airports;
  @override
  List<Airport> get airports {
    if (_airports is EqualUnmodifiableListView) return _airports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_airports);
  }

  final Map<String, List<Flight>> _flightDepartures;
  @override
  Map<String, List<Flight>> get flightDepartures {
    if (_flightDepartures is EqualUnmodifiableMapView) return _flightDepartures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_flightDepartures);
  }

  final Map<String, List<Flight>> _flightArrival;
  @override
  Map<String, List<Flight>> get flightArrival {
    if (_flightArrival is EqualUnmodifiableMapView) return _flightArrival;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_flightArrival);
  }

  @override
  final Airport? airportView;
  @override
  final int pageView;
  @override
  final int currentPage;
  @override
  final int totalPage;

  @override
  String toString() {
    return 'AirportModelState(airports: $airports, flightDepartures: $flightDepartures, flightArrival: $flightArrival, airportView: $airportView, pageView: $pageView, currentPage: $currentPage, totalPage: $totalPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AirportModelState &&
            const DeepCollectionEquality().equals(other._airports, _airports) &&
            const DeepCollectionEquality()
                .equals(other._flightDepartures, _flightDepartures) &&
            const DeepCollectionEquality()
                .equals(other._flightArrival, _flightArrival) &&
            (identical(other.airportView, airportView) ||
                other.airportView == airportView) &&
            (identical(other.pageView, pageView) ||
                other.pageView == pageView) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_airports),
      const DeepCollectionEquality().hash(_flightDepartures),
      const DeepCollectionEquality().hash(_flightArrival),
      airportView,
      pageView,
      currentPage,
      totalPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AirportModelStateCopyWith<_$_AirportModelState> get copyWith =>
      __$$_AirportModelStateCopyWithImpl<_$_AirportModelState>(
          this, _$identity);
}

abstract class _AirportModelState implements AirportModelState {
  const factory _AirportModelState(
      {required final List<Airport> airports,
      required final Map<String, List<Flight>> flightDepartures,
      required final Map<String, List<Flight>> flightArrival,
      final Airport? airportView,
      required final int pageView,
      required final int currentPage,
      required final int totalPage}) = _$_AirportModelState;

  @override
  List<Airport> get airports;
  @override
  Map<String, List<Flight>> get flightDepartures;
  @override
  Map<String, List<Flight>> get flightArrival;
  @override
  Airport? get airportView;
  @override
  int get pageView;
  @override
  int get currentPage;
  @override
  int get totalPage;
  @override
  @JsonKey(ignore: true)
  _$$_AirportModelStateCopyWith<_$_AirportModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
