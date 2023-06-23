// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_flight_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListFlightModelState {
  List<Flight> get flights => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get totalPage => throw _privateConstructorUsedError;
  String get locationArrival => throw _privateConstructorUsedError;
  String get locationDeparture => throw _privateConstructorUsedError;
  String get airlineName => throw _privateConstructorUsedError;
  List<Airline> get listAirlines => throw _privateConstructorUsedError;
  List<PlaceModel> get locations => throw _privateConstructorUsedError;
  TypePage get typePage => throw _privateConstructorUsedError;
  List<TicketInformation> get ticketInformation =>
      throw _privateConstructorUsedError;
  Flight? get flightSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListFlightModelStateCopyWith<ListFlightModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListFlightModelStateCopyWith<$Res> {
  factory $ListFlightModelStateCopyWith(ListFlightModelState value,
          $Res Function(ListFlightModelState) then) =
      _$ListFlightModelStateCopyWithImpl<$Res, ListFlightModelState>;
  @useResult
  $Res call(
      {List<Flight> flights,
      int currentPage,
      int totalPage,
      String locationArrival,
      String locationDeparture,
      String airlineName,
      List<Airline> listAirlines,
      List<PlaceModel> locations,
      TypePage typePage,
      List<TicketInformation> ticketInformation,
      Flight? flightSelected});

  $FlightCopyWith<$Res>? get flightSelected;
}

/// @nodoc
class _$ListFlightModelStateCopyWithImpl<$Res,
        $Val extends ListFlightModelState>
    implements $ListFlightModelStateCopyWith<$Res> {
  _$ListFlightModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flights = null,
    Object? currentPage = null,
    Object? totalPage = null,
    Object? locationArrival = null,
    Object? locationDeparture = null,
    Object? airlineName = null,
    Object? listAirlines = null,
    Object? locations = null,
    Object? typePage = null,
    Object? ticketInformation = null,
    Object? flightSelected = freezed,
  }) {
    return _then(_value.copyWith(
      flights: null == flights
          ? _value.flights
          : flights // ignore: cast_nullable_to_non_nullable
              as List<Flight>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      locationArrival: null == locationArrival
          ? _value.locationArrival
          : locationArrival // ignore: cast_nullable_to_non_nullable
              as String,
      locationDeparture: null == locationDeparture
          ? _value.locationDeparture
          : locationDeparture // ignore: cast_nullable_to_non_nullable
              as String,
      airlineName: null == airlineName
          ? _value.airlineName
          : airlineName // ignore: cast_nullable_to_non_nullable
              as String,
      listAirlines: null == listAirlines
          ? _value.listAirlines
          : listAirlines // ignore: cast_nullable_to_non_nullable
              as List<Airline>,
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<PlaceModel>,
      typePage: null == typePage
          ? _value.typePage
          : typePage // ignore: cast_nullable_to_non_nullable
              as TypePage,
      ticketInformation: null == ticketInformation
          ? _value.ticketInformation
          : ticketInformation // ignore: cast_nullable_to_non_nullable
              as List<TicketInformation>,
      flightSelected: freezed == flightSelected
          ? _value.flightSelected
          : flightSelected // ignore: cast_nullable_to_non_nullable
              as Flight?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FlightCopyWith<$Res>? get flightSelected {
    if (_value.flightSelected == null) {
      return null;
    }

    return $FlightCopyWith<$Res>(_value.flightSelected!, (value) {
      return _then(_value.copyWith(flightSelected: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ListFlightModelStateCopyWith<$Res>
    implements $ListFlightModelStateCopyWith<$Res> {
  factory _$$_ListFlightModelStateCopyWith(_$_ListFlightModelState value,
          $Res Function(_$_ListFlightModelState) then) =
      __$$_ListFlightModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Flight> flights,
      int currentPage,
      int totalPage,
      String locationArrival,
      String locationDeparture,
      String airlineName,
      List<Airline> listAirlines,
      List<PlaceModel> locations,
      TypePage typePage,
      List<TicketInformation> ticketInformation,
      Flight? flightSelected});

  @override
  $FlightCopyWith<$Res>? get flightSelected;
}

/// @nodoc
class __$$_ListFlightModelStateCopyWithImpl<$Res>
    extends _$ListFlightModelStateCopyWithImpl<$Res, _$_ListFlightModelState>
    implements _$$_ListFlightModelStateCopyWith<$Res> {
  __$$_ListFlightModelStateCopyWithImpl(_$_ListFlightModelState _value,
      $Res Function(_$_ListFlightModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flights = null,
    Object? currentPage = null,
    Object? totalPage = null,
    Object? locationArrival = null,
    Object? locationDeparture = null,
    Object? airlineName = null,
    Object? listAirlines = null,
    Object? locations = null,
    Object? typePage = null,
    Object? ticketInformation = null,
    Object? flightSelected = freezed,
  }) {
    return _then(_$_ListFlightModelState(
      flights: null == flights
          ? _value._flights
          : flights // ignore: cast_nullable_to_non_nullable
              as List<Flight>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      locationArrival: null == locationArrival
          ? _value.locationArrival
          : locationArrival // ignore: cast_nullable_to_non_nullable
              as String,
      locationDeparture: null == locationDeparture
          ? _value.locationDeparture
          : locationDeparture // ignore: cast_nullable_to_non_nullable
              as String,
      airlineName: null == airlineName
          ? _value.airlineName
          : airlineName // ignore: cast_nullable_to_non_nullable
              as String,
      listAirlines: null == listAirlines
          ? _value._listAirlines
          : listAirlines // ignore: cast_nullable_to_non_nullable
              as List<Airline>,
      locations: null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<PlaceModel>,
      typePage: null == typePage
          ? _value.typePage
          : typePage // ignore: cast_nullable_to_non_nullable
              as TypePage,
      ticketInformation: null == ticketInformation
          ? _value._ticketInformation
          : ticketInformation // ignore: cast_nullable_to_non_nullable
              as List<TicketInformation>,
      flightSelected: freezed == flightSelected
          ? _value.flightSelected
          : flightSelected // ignore: cast_nullable_to_non_nullable
              as Flight?,
    ));
  }
}

/// @nodoc

class _$_ListFlightModelState implements _ListFlightModelState {
  const _$_ListFlightModelState(
      {required final List<Flight> flights,
      required this.currentPage,
      required this.totalPage,
      required this.locationArrival,
      required this.locationDeparture,
      required this.airlineName,
      required final List<Airline> listAirlines,
      required final List<PlaceModel> locations,
      required this.typePage,
      required final List<TicketInformation> ticketInformation,
      this.flightSelected})
      : _flights = flights,
        _listAirlines = listAirlines,
        _locations = locations,
        _ticketInformation = ticketInformation;

  final List<Flight> _flights;
  @override
  List<Flight> get flights {
    if (_flights is EqualUnmodifiableListView) return _flights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flights);
  }

  @override
  final int currentPage;
  @override
  final int totalPage;
  @override
  final String locationArrival;
  @override
  final String locationDeparture;
  @override
  final String airlineName;
  final List<Airline> _listAirlines;
  @override
  List<Airline> get listAirlines {
    if (_listAirlines is EqualUnmodifiableListView) return _listAirlines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listAirlines);
  }

  final List<PlaceModel> _locations;
  @override
  List<PlaceModel> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  @override
  final TypePage typePage;
  final List<TicketInformation> _ticketInformation;
  @override
  List<TicketInformation> get ticketInformation {
    if (_ticketInformation is EqualUnmodifiableListView)
      return _ticketInformation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ticketInformation);
  }

  @override
  final Flight? flightSelected;

  @override
  String toString() {
    return 'ListFlightModelState(flights: $flights, currentPage: $currentPage, totalPage: $totalPage, locationArrival: $locationArrival, locationDeparture: $locationDeparture, airlineName: $airlineName, listAirlines: $listAirlines, locations: $locations, typePage: $typePage, ticketInformation: $ticketInformation, flightSelected: $flightSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListFlightModelState &&
            const DeepCollectionEquality().equals(other._flights, _flights) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            (identical(other.locationArrival, locationArrival) ||
                other.locationArrival == locationArrival) &&
            (identical(other.locationDeparture, locationDeparture) ||
                other.locationDeparture == locationDeparture) &&
            (identical(other.airlineName, airlineName) ||
                other.airlineName == airlineName) &&
            const DeepCollectionEquality()
                .equals(other._listAirlines, _listAirlines) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            (identical(other.typePage, typePage) ||
                other.typePage == typePage) &&
            const DeepCollectionEquality()
                .equals(other._ticketInformation, _ticketInformation) &&
            (identical(other.flightSelected, flightSelected) ||
                other.flightSelected == flightSelected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_flights),
      currentPage,
      totalPage,
      locationArrival,
      locationDeparture,
      airlineName,
      const DeepCollectionEquality().hash(_listAirlines),
      const DeepCollectionEquality().hash(_locations),
      typePage,
      const DeepCollectionEquality().hash(_ticketInformation),
      flightSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListFlightModelStateCopyWith<_$_ListFlightModelState> get copyWith =>
      __$$_ListFlightModelStateCopyWithImpl<_$_ListFlightModelState>(
          this, _$identity);
}

abstract class _ListFlightModelState implements ListFlightModelState {
  const factory _ListFlightModelState(
      {required final List<Flight> flights,
      required final int currentPage,
      required final int totalPage,
      required final String locationArrival,
      required final String locationDeparture,
      required final String airlineName,
      required final List<Airline> listAirlines,
      required final List<PlaceModel> locations,
      required final TypePage typePage,
      required final List<TicketInformation> ticketInformation,
      final Flight? flightSelected}) = _$_ListFlightModelState;

  @override
  List<Flight> get flights;
  @override
  int get currentPage;
  @override
  int get totalPage;
  @override
  String get locationArrival;
  @override
  String get locationDeparture;
  @override
  String get airlineName;
  @override
  List<Airline> get listAirlines;
  @override
  List<PlaceModel> get locations;
  @override
  TypePage get typePage;
  @override
  List<TicketInformation> get ticketInformation;
  @override
  Flight? get flightSelected;
  @override
  @JsonKey(ignore: true)
  _$$_ListFlightModelStateCopyWith<_$_ListFlightModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
