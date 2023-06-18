// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_flight_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListFlightEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String flightID) selectFlight,
    required TResult Function() getFlights,
    required TResult Function(String id) openAddEditFlightForm,
    required TResult Function(Flight flight) updateFlightsAfterEdit,
    required TResult Function(Flight flight) updateFlightsAfterAdd,
    required TResult Function(int cursor) getFlightByPage,
    required TResult Function(int id) deleteFlight,
    required TResult Function(
            String airline, String locationArrival, String locationDeparture)
        filterFlight,
    required TResult Function() fetchPlaces,
    required TResult Function() fetchAirline,
    required TResult Function(String airline) selectedAirlines,
    required TResult Function(String place, bool isDeparture)
        selectedPlaceAirport,
    required TResult Function() refreshItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String flightID)? selectFlight,
    TResult? Function()? getFlights,
    TResult? Function(String id)? openAddEditFlightForm,
    TResult? Function(Flight flight)? updateFlightsAfterEdit,
    TResult? Function(Flight flight)? updateFlightsAfterAdd,
    TResult? Function(int cursor)? getFlightByPage,
    TResult? Function(int id)? deleteFlight,
    TResult? Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult? Function()? fetchPlaces,
    TResult? Function()? fetchAirline,
    TResult? Function(String airline)? selectedAirlines,
    TResult? Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult? Function()? refreshItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String flightID)? selectFlight,
    TResult Function()? getFlights,
    TResult Function(String id)? openAddEditFlightForm,
    TResult Function(Flight flight)? updateFlightsAfterEdit,
    TResult Function(Flight flight)? updateFlightsAfterAdd,
    TResult Function(int cursor)? getFlightByPage,
    TResult Function(int id)? deleteFlight,
    TResult Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult Function()? fetchPlaces,
    TResult Function()? fetchAirline,
    TResult Function(String airline)? selectedAirlines,
    TResult Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult Function()? refreshItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFlight value) selectFlight,
    required TResult Function(_GetFlights value) getFlights,
    required TResult Function(_OpenAddEditFlightForm value)
        openAddEditFlightForm,
    required TResult Function(_UpdateFlightsAfterEdit value)
        updateFlightsAfterEdit,
    required TResult Function(_UpdateFlightsAfterAdd value)
        updateFlightsAfterAdd,
    required TResult Function(_GetFlightByPage value) getFlightByPage,
    required TResult Function(_DeleteFlight value) deleteFlight,
    required TResult Function(_FilterFlight value) filterFlight,
    required TResult Function(_FetchPlaces value) fetchPlaces,
    required TResult Function(_FetchAirlines value) fetchAirline,
    required TResult Function(_SelectedAirline value) selectedAirlines,
    required TResult Function(_SelectedPlaceAirport value) selectedPlaceAirport,
    required TResult Function(_RefreshItem value) refreshItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFlight value)? selectFlight,
    TResult? Function(_GetFlights value)? getFlights,
    TResult? Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult? Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult? Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult? Function(_GetFlightByPage value)? getFlightByPage,
    TResult? Function(_DeleteFlight value)? deleteFlight,
    TResult? Function(_FilterFlight value)? filterFlight,
    TResult? Function(_FetchPlaces value)? fetchPlaces,
    TResult? Function(_FetchAirlines value)? fetchAirline,
    TResult? Function(_SelectedAirline value)? selectedAirlines,
    TResult? Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult? Function(_RefreshItem value)? refreshItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFlight value)? selectFlight,
    TResult Function(_GetFlights value)? getFlights,
    TResult Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult Function(_GetFlightByPage value)? getFlightByPage,
    TResult Function(_DeleteFlight value)? deleteFlight,
    TResult Function(_FilterFlight value)? filterFlight,
    TResult Function(_FetchPlaces value)? fetchPlaces,
    TResult Function(_FetchAirlines value)? fetchAirline,
    TResult Function(_SelectedAirline value)? selectedAirlines,
    TResult Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult Function(_RefreshItem value)? refreshItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListFlightEventCopyWith<$Res> {
  factory $ListFlightEventCopyWith(
          ListFlightEvent value, $Res Function(ListFlightEvent) then) =
      _$ListFlightEventCopyWithImpl<$Res, ListFlightEvent>;
}

/// @nodoc
class _$ListFlightEventCopyWithImpl<$Res, $Val extends ListFlightEvent>
    implements $ListFlightEventCopyWith<$Res> {
  _$ListFlightEventCopyWithImpl(this._value, this._then);

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
    extends _$ListFlightEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ListFlightEvent.started()';
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
    required TResult Function(String flightID) selectFlight,
    required TResult Function() getFlights,
    required TResult Function(String id) openAddEditFlightForm,
    required TResult Function(Flight flight) updateFlightsAfterEdit,
    required TResult Function(Flight flight) updateFlightsAfterAdd,
    required TResult Function(int cursor) getFlightByPage,
    required TResult Function(int id) deleteFlight,
    required TResult Function(
            String airline, String locationArrival, String locationDeparture)
        filterFlight,
    required TResult Function() fetchPlaces,
    required TResult Function() fetchAirline,
    required TResult Function(String airline) selectedAirlines,
    required TResult Function(String place, bool isDeparture)
        selectedPlaceAirport,
    required TResult Function() refreshItem,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String flightID)? selectFlight,
    TResult? Function()? getFlights,
    TResult? Function(String id)? openAddEditFlightForm,
    TResult? Function(Flight flight)? updateFlightsAfterEdit,
    TResult? Function(Flight flight)? updateFlightsAfterAdd,
    TResult? Function(int cursor)? getFlightByPage,
    TResult? Function(int id)? deleteFlight,
    TResult? Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult? Function()? fetchPlaces,
    TResult? Function()? fetchAirline,
    TResult? Function(String airline)? selectedAirlines,
    TResult? Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult? Function()? refreshItem,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String flightID)? selectFlight,
    TResult Function()? getFlights,
    TResult Function(String id)? openAddEditFlightForm,
    TResult Function(Flight flight)? updateFlightsAfterEdit,
    TResult Function(Flight flight)? updateFlightsAfterAdd,
    TResult Function(int cursor)? getFlightByPage,
    TResult Function(int id)? deleteFlight,
    TResult Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult Function()? fetchPlaces,
    TResult Function()? fetchAirline,
    TResult Function(String airline)? selectedAirlines,
    TResult Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult Function()? refreshItem,
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
    required TResult Function(_SelectFlight value) selectFlight,
    required TResult Function(_GetFlights value) getFlights,
    required TResult Function(_OpenAddEditFlightForm value)
        openAddEditFlightForm,
    required TResult Function(_UpdateFlightsAfterEdit value)
        updateFlightsAfterEdit,
    required TResult Function(_UpdateFlightsAfterAdd value)
        updateFlightsAfterAdd,
    required TResult Function(_GetFlightByPage value) getFlightByPage,
    required TResult Function(_DeleteFlight value) deleteFlight,
    required TResult Function(_FilterFlight value) filterFlight,
    required TResult Function(_FetchPlaces value) fetchPlaces,
    required TResult Function(_FetchAirlines value) fetchAirline,
    required TResult Function(_SelectedAirline value) selectedAirlines,
    required TResult Function(_SelectedPlaceAirport value) selectedPlaceAirport,
    required TResult Function(_RefreshItem value) refreshItem,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFlight value)? selectFlight,
    TResult? Function(_GetFlights value)? getFlights,
    TResult? Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult? Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult? Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult? Function(_GetFlightByPage value)? getFlightByPage,
    TResult? Function(_DeleteFlight value)? deleteFlight,
    TResult? Function(_FilterFlight value)? filterFlight,
    TResult? Function(_FetchPlaces value)? fetchPlaces,
    TResult? Function(_FetchAirlines value)? fetchAirline,
    TResult? Function(_SelectedAirline value)? selectedAirlines,
    TResult? Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult? Function(_RefreshItem value)? refreshItem,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFlight value)? selectFlight,
    TResult Function(_GetFlights value)? getFlights,
    TResult Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult Function(_GetFlightByPage value)? getFlightByPage,
    TResult Function(_DeleteFlight value)? deleteFlight,
    TResult Function(_FilterFlight value)? filterFlight,
    TResult Function(_FetchPlaces value)? fetchPlaces,
    TResult Function(_FetchAirlines value)? fetchAirline,
    TResult Function(_SelectedAirline value)? selectedAirlines,
    TResult Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult Function(_RefreshItem value)? refreshItem,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ListFlightEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_SelectFlightCopyWith<$Res> {
  factory _$$_SelectFlightCopyWith(
          _$_SelectFlight value, $Res Function(_$_SelectFlight) then) =
      __$$_SelectFlightCopyWithImpl<$Res>;
  @useResult
  $Res call({String flightID});
}

/// @nodoc
class __$$_SelectFlightCopyWithImpl<$Res>
    extends _$ListFlightEventCopyWithImpl<$Res, _$_SelectFlight>
    implements _$$_SelectFlightCopyWith<$Res> {
  __$$_SelectFlightCopyWithImpl(
      _$_SelectFlight _value, $Res Function(_$_SelectFlight) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flightID = null,
  }) {
    return _then(_$_SelectFlight(
      null == flightID
          ? _value.flightID
          : flightID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectFlight implements _SelectFlight {
  const _$_SelectFlight(this.flightID);

  @override
  final String flightID;

  @override
  String toString() {
    return 'ListFlightEvent.selectFlight(flightID: $flightID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectFlight &&
            (identical(other.flightID, flightID) ||
                other.flightID == flightID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flightID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectFlightCopyWith<_$_SelectFlight> get copyWith =>
      __$$_SelectFlightCopyWithImpl<_$_SelectFlight>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String flightID) selectFlight,
    required TResult Function() getFlights,
    required TResult Function(String id) openAddEditFlightForm,
    required TResult Function(Flight flight) updateFlightsAfterEdit,
    required TResult Function(Flight flight) updateFlightsAfterAdd,
    required TResult Function(int cursor) getFlightByPage,
    required TResult Function(int id) deleteFlight,
    required TResult Function(
            String airline, String locationArrival, String locationDeparture)
        filterFlight,
    required TResult Function() fetchPlaces,
    required TResult Function() fetchAirline,
    required TResult Function(String airline) selectedAirlines,
    required TResult Function(String place, bool isDeparture)
        selectedPlaceAirport,
    required TResult Function() refreshItem,
  }) {
    return selectFlight(flightID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String flightID)? selectFlight,
    TResult? Function()? getFlights,
    TResult? Function(String id)? openAddEditFlightForm,
    TResult? Function(Flight flight)? updateFlightsAfterEdit,
    TResult? Function(Flight flight)? updateFlightsAfterAdd,
    TResult? Function(int cursor)? getFlightByPage,
    TResult? Function(int id)? deleteFlight,
    TResult? Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult? Function()? fetchPlaces,
    TResult? Function()? fetchAirline,
    TResult? Function(String airline)? selectedAirlines,
    TResult? Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult? Function()? refreshItem,
  }) {
    return selectFlight?.call(flightID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String flightID)? selectFlight,
    TResult Function()? getFlights,
    TResult Function(String id)? openAddEditFlightForm,
    TResult Function(Flight flight)? updateFlightsAfterEdit,
    TResult Function(Flight flight)? updateFlightsAfterAdd,
    TResult Function(int cursor)? getFlightByPage,
    TResult Function(int id)? deleteFlight,
    TResult Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult Function()? fetchPlaces,
    TResult Function()? fetchAirline,
    TResult Function(String airline)? selectedAirlines,
    TResult Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult Function()? refreshItem,
    required TResult orElse(),
  }) {
    if (selectFlight != null) {
      return selectFlight(flightID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFlight value) selectFlight,
    required TResult Function(_GetFlights value) getFlights,
    required TResult Function(_OpenAddEditFlightForm value)
        openAddEditFlightForm,
    required TResult Function(_UpdateFlightsAfterEdit value)
        updateFlightsAfterEdit,
    required TResult Function(_UpdateFlightsAfterAdd value)
        updateFlightsAfterAdd,
    required TResult Function(_GetFlightByPage value) getFlightByPage,
    required TResult Function(_DeleteFlight value) deleteFlight,
    required TResult Function(_FilterFlight value) filterFlight,
    required TResult Function(_FetchPlaces value) fetchPlaces,
    required TResult Function(_FetchAirlines value) fetchAirline,
    required TResult Function(_SelectedAirline value) selectedAirlines,
    required TResult Function(_SelectedPlaceAirport value) selectedPlaceAirport,
    required TResult Function(_RefreshItem value) refreshItem,
  }) {
    return selectFlight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFlight value)? selectFlight,
    TResult? Function(_GetFlights value)? getFlights,
    TResult? Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult? Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult? Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult? Function(_GetFlightByPage value)? getFlightByPage,
    TResult? Function(_DeleteFlight value)? deleteFlight,
    TResult? Function(_FilterFlight value)? filterFlight,
    TResult? Function(_FetchPlaces value)? fetchPlaces,
    TResult? Function(_FetchAirlines value)? fetchAirline,
    TResult? Function(_SelectedAirline value)? selectedAirlines,
    TResult? Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult? Function(_RefreshItem value)? refreshItem,
  }) {
    return selectFlight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFlight value)? selectFlight,
    TResult Function(_GetFlights value)? getFlights,
    TResult Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult Function(_GetFlightByPage value)? getFlightByPage,
    TResult Function(_DeleteFlight value)? deleteFlight,
    TResult Function(_FilterFlight value)? filterFlight,
    TResult Function(_FetchPlaces value)? fetchPlaces,
    TResult Function(_FetchAirlines value)? fetchAirline,
    TResult Function(_SelectedAirline value)? selectedAirlines,
    TResult Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult Function(_RefreshItem value)? refreshItem,
    required TResult orElse(),
  }) {
    if (selectFlight != null) {
      return selectFlight(this);
    }
    return orElse();
  }
}

abstract class _SelectFlight implements ListFlightEvent {
  const factory _SelectFlight(final String flightID) = _$_SelectFlight;

  String get flightID;
  @JsonKey(ignore: true)
  _$$_SelectFlightCopyWith<_$_SelectFlight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetFlightsCopyWith<$Res> {
  factory _$$_GetFlightsCopyWith(
          _$_GetFlights value, $Res Function(_$_GetFlights) then) =
      __$$_GetFlightsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetFlightsCopyWithImpl<$Res>
    extends _$ListFlightEventCopyWithImpl<$Res, _$_GetFlights>
    implements _$$_GetFlightsCopyWith<$Res> {
  __$$_GetFlightsCopyWithImpl(
      _$_GetFlights _value, $Res Function(_$_GetFlights) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetFlights implements _GetFlights {
  const _$_GetFlights();

  @override
  String toString() {
    return 'ListFlightEvent.getFlights()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetFlights);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String flightID) selectFlight,
    required TResult Function() getFlights,
    required TResult Function(String id) openAddEditFlightForm,
    required TResult Function(Flight flight) updateFlightsAfterEdit,
    required TResult Function(Flight flight) updateFlightsAfterAdd,
    required TResult Function(int cursor) getFlightByPage,
    required TResult Function(int id) deleteFlight,
    required TResult Function(
            String airline, String locationArrival, String locationDeparture)
        filterFlight,
    required TResult Function() fetchPlaces,
    required TResult Function() fetchAirline,
    required TResult Function(String airline) selectedAirlines,
    required TResult Function(String place, bool isDeparture)
        selectedPlaceAirport,
    required TResult Function() refreshItem,
  }) {
    return getFlights();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String flightID)? selectFlight,
    TResult? Function()? getFlights,
    TResult? Function(String id)? openAddEditFlightForm,
    TResult? Function(Flight flight)? updateFlightsAfterEdit,
    TResult? Function(Flight flight)? updateFlightsAfterAdd,
    TResult? Function(int cursor)? getFlightByPage,
    TResult? Function(int id)? deleteFlight,
    TResult? Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult? Function()? fetchPlaces,
    TResult? Function()? fetchAirline,
    TResult? Function(String airline)? selectedAirlines,
    TResult? Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult? Function()? refreshItem,
  }) {
    return getFlights?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String flightID)? selectFlight,
    TResult Function()? getFlights,
    TResult Function(String id)? openAddEditFlightForm,
    TResult Function(Flight flight)? updateFlightsAfterEdit,
    TResult Function(Flight flight)? updateFlightsAfterAdd,
    TResult Function(int cursor)? getFlightByPage,
    TResult Function(int id)? deleteFlight,
    TResult Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult Function()? fetchPlaces,
    TResult Function()? fetchAirline,
    TResult Function(String airline)? selectedAirlines,
    TResult Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult Function()? refreshItem,
    required TResult orElse(),
  }) {
    if (getFlights != null) {
      return getFlights();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFlight value) selectFlight,
    required TResult Function(_GetFlights value) getFlights,
    required TResult Function(_OpenAddEditFlightForm value)
        openAddEditFlightForm,
    required TResult Function(_UpdateFlightsAfterEdit value)
        updateFlightsAfterEdit,
    required TResult Function(_UpdateFlightsAfterAdd value)
        updateFlightsAfterAdd,
    required TResult Function(_GetFlightByPage value) getFlightByPage,
    required TResult Function(_DeleteFlight value) deleteFlight,
    required TResult Function(_FilterFlight value) filterFlight,
    required TResult Function(_FetchPlaces value) fetchPlaces,
    required TResult Function(_FetchAirlines value) fetchAirline,
    required TResult Function(_SelectedAirline value) selectedAirlines,
    required TResult Function(_SelectedPlaceAirport value) selectedPlaceAirport,
    required TResult Function(_RefreshItem value) refreshItem,
  }) {
    return getFlights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFlight value)? selectFlight,
    TResult? Function(_GetFlights value)? getFlights,
    TResult? Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult? Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult? Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult? Function(_GetFlightByPage value)? getFlightByPage,
    TResult? Function(_DeleteFlight value)? deleteFlight,
    TResult? Function(_FilterFlight value)? filterFlight,
    TResult? Function(_FetchPlaces value)? fetchPlaces,
    TResult? Function(_FetchAirlines value)? fetchAirline,
    TResult? Function(_SelectedAirline value)? selectedAirlines,
    TResult? Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult? Function(_RefreshItem value)? refreshItem,
  }) {
    return getFlights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFlight value)? selectFlight,
    TResult Function(_GetFlights value)? getFlights,
    TResult Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult Function(_GetFlightByPage value)? getFlightByPage,
    TResult Function(_DeleteFlight value)? deleteFlight,
    TResult Function(_FilterFlight value)? filterFlight,
    TResult Function(_FetchPlaces value)? fetchPlaces,
    TResult Function(_FetchAirlines value)? fetchAirline,
    TResult Function(_SelectedAirline value)? selectedAirlines,
    TResult Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult Function(_RefreshItem value)? refreshItem,
    required TResult orElse(),
  }) {
    if (getFlights != null) {
      return getFlights(this);
    }
    return orElse();
  }
}

abstract class _GetFlights implements ListFlightEvent {
  const factory _GetFlights() = _$_GetFlights;
}

/// @nodoc
abstract class _$$_OpenAddEditFlightFormCopyWith<$Res> {
  factory _$$_OpenAddEditFlightFormCopyWith(_$_OpenAddEditFlightForm value,
          $Res Function(_$_OpenAddEditFlightForm) then) =
      __$$_OpenAddEditFlightFormCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_OpenAddEditFlightFormCopyWithImpl<$Res>
    extends _$ListFlightEventCopyWithImpl<$Res, _$_OpenAddEditFlightForm>
    implements _$$_OpenAddEditFlightFormCopyWith<$Res> {
  __$$_OpenAddEditFlightFormCopyWithImpl(_$_OpenAddEditFlightForm _value,
      $Res Function(_$_OpenAddEditFlightForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_OpenAddEditFlightForm(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OpenAddEditFlightForm implements _OpenAddEditFlightForm {
  const _$_OpenAddEditFlightForm(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ListFlightEvent.openAddEditFlightForm(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenAddEditFlightForm &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenAddEditFlightFormCopyWith<_$_OpenAddEditFlightForm> get copyWith =>
      __$$_OpenAddEditFlightFormCopyWithImpl<_$_OpenAddEditFlightForm>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String flightID) selectFlight,
    required TResult Function() getFlights,
    required TResult Function(String id) openAddEditFlightForm,
    required TResult Function(Flight flight) updateFlightsAfterEdit,
    required TResult Function(Flight flight) updateFlightsAfterAdd,
    required TResult Function(int cursor) getFlightByPage,
    required TResult Function(int id) deleteFlight,
    required TResult Function(
            String airline, String locationArrival, String locationDeparture)
        filterFlight,
    required TResult Function() fetchPlaces,
    required TResult Function() fetchAirline,
    required TResult Function(String airline) selectedAirlines,
    required TResult Function(String place, bool isDeparture)
        selectedPlaceAirport,
    required TResult Function() refreshItem,
  }) {
    return openAddEditFlightForm(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String flightID)? selectFlight,
    TResult? Function()? getFlights,
    TResult? Function(String id)? openAddEditFlightForm,
    TResult? Function(Flight flight)? updateFlightsAfterEdit,
    TResult? Function(Flight flight)? updateFlightsAfterAdd,
    TResult? Function(int cursor)? getFlightByPage,
    TResult? Function(int id)? deleteFlight,
    TResult? Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult? Function()? fetchPlaces,
    TResult? Function()? fetchAirline,
    TResult? Function(String airline)? selectedAirlines,
    TResult? Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult? Function()? refreshItem,
  }) {
    return openAddEditFlightForm?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String flightID)? selectFlight,
    TResult Function()? getFlights,
    TResult Function(String id)? openAddEditFlightForm,
    TResult Function(Flight flight)? updateFlightsAfterEdit,
    TResult Function(Flight flight)? updateFlightsAfterAdd,
    TResult Function(int cursor)? getFlightByPage,
    TResult Function(int id)? deleteFlight,
    TResult Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult Function()? fetchPlaces,
    TResult Function()? fetchAirline,
    TResult Function(String airline)? selectedAirlines,
    TResult Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult Function()? refreshItem,
    required TResult orElse(),
  }) {
    if (openAddEditFlightForm != null) {
      return openAddEditFlightForm(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFlight value) selectFlight,
    required TResult Function(_GetFlights value) getFlights,
    required TResult Function(_OpenAddEditFlightForm value)
        openAddEditFlightForm,
    required TResult Function(_UpdateFlightsAfterEdit value)
        updateFlightsAfterEdit,
    required TResult Function(_UpdateFlightsAfterAdd value)
        updateFlightsAfterAdd,
    required TResult Function(_GetFlightByPage value) getFlightByPage,
    required TResult Function(_DeleteFlight value) deleteFlight,
    required TResult Function(_FilterFlight value) filterFlight,
    required TResult Function(_FetchPlaces value) fetchPlaces,
    required TResult Function(_FetchAirlines value) fetchAirline,
    required TResult Function(_SelectedAirline value) selectedAirlines,
    required TResult Function(_SelectedPlaceAirport value) selectedPlaceAirport,
    required TResult Function(_RefreshItem value) refreshItem,
  }) {
    return openAddEditFlightForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFlight value)? selectFlight,
    TResult? Function(_GetFlights value)? getFlights,
    TResult? Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult? Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult? Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult? Function(_GetFlightByPage value)? getFlightByPage,
    TResult? Function(_DeleteFlight value)? deleteFlight,
    TResult? Function(_FilterFlight value)? filterFlight,
    TResult? Function(_FetchPlaces value)? fetchPlaces,
    TResult? Function(_FetchAirlines value)? fetchAirline,
    TResult? Function(_SelectedAirline value)? selectedAirlines,
    TResult? Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult? Function(_RefreshItem value)? refreshItem,
  }) {
    return openAddEditFlightForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFlight value)? selectFlight,
    TResult Function(_GetFlights value)? getFlights,
    TResult Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult Function(_GetFlightByPage value)? getFlightByPage,
    TResult Function(_DeleteFlight value)? deleteFlight,
    TResult Function(_FilterFlight value)? filterFlight,
    TResult Function(_FetchPlaces value)? fetchPlaces,
    TResult Function(_FetchAirlines value)? fetchAirline,
    TResult Function(_SelectedAirline value)? selectedAirlines,
    TResult Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult Function(_RefreshItem value)? refreshItem,
    required TResult orElse(),
  }) {
    if (openAddEditFlightForm != null) {
      return openAddEditFlightForm(this);
    }
    return orElse();
  }
}

abstract class _OpenAddEditFlightForm implements ListFlightEvent {
  const factory _OpenAddEditFlightForm(final String id) =
      _$_OpenAddEditFlightForm;

  String get id;
  @JsonKey(ignore: true)
  _$$_OpenAddEditFlightFormCopyWith<_$_OpenAddEditFlightForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateFlightsAfterEditCopyWith<$Res> {
  factory _$$_UpdateFlightsAfterEditCopyWith(_$_UpdateFlightsAfterEdit value,
          $Res Function(_$_UpdateFlightsAfterEdit) then) =
      __$$_UpdateFlightsAfterEditCopyWithImpl<$Res>;
  @useResult
  $Res call({Flight flight});

  $FlightCopyWith<$Res> get flight;
}

/// @nodoc
class __$$_UpdateFlightsAfterEditCopyWithImpl<$Res>
    extends _$ListFlightEventCopyWithImpl<$Res, _$_UpdateFlightsAfterEdit>
    implements _$$_UpdateFlightsAfterEditCopyWith<$Res> {
  __$$_UpdateFlightsAfterEditCopyWithImpl(_$_UpdateFlightsAfterEdit _value,
      $Res Function(_$_UpdateFlightsAfterEdit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flight = null,
  }) {
    return _then(_$_UpdateFlightsAfterEdit(
      null == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as Flight,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FlightCopyWith<$Res> get flight {
    return $FlightCopyWith<$Res>(_value.flight, (value) {
      return _then(_value.copyWith(flight: value));
    });
  }
}

/// @nodoc

class _$_UpdateFlightsAfterEdit implements _UpdateFlightsAfterEdit {
  const _$_UpdateFlightsAfterEdit(this.flight);

  @override
  final Flight flight;

  @override
  String toString() {
    return 'ListFlightEvent.updateFlightsAfterEdit(flight: $flight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateFlightsAfterEdit &&
            (identical(other.flight, flight) || other.flight == flight));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateFlightsAfterEditCopyWith<_$_UpdateFlightsAfterEdit> get copyWith =>
      __$$_UpdateFlightsAfterEditCopyWithImpl<_$_UpdateFlightsAfterEdit>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String flightID) selectFlight,
    required TResult Function() getFlights,
    required TResult Function(String id) openAddEditFlightForm,
    required TResult Function(Flight flight) updateFlightsAfterEdit,
    required TResult Function(Flight flight) updateFlightsAfterAdd,
    required TResult Function(int cursor) getFlightByPage,
    required TResult Function(int id) deleteFlight,
    required TResult Function(
            String airline, String locationArrival, String locationDeparture)
        filterFlight,
    required TResult Function() fetchPlaces,
    required TResult Function() fetchAirline,
    required TResult Function(String airline) selectedAirlines,
    required TResult Function(String place, bool isDeparture)
        selectedPlaceAirport,
    required TResult Function() refreshItem,
  }) {
    return updateFlightsAfterEdit(flight);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String flightID)? selectFlight,
    TResult? Function()? getFlights,
    TResult? Function(String id)? openAddEditFlightForm,
    TResult? Function(Flight flight)? updateFlightsAfterEdit,
    TResult? Function(Flight flight)? updateFlightsAfterAdd,
    TResult? Function(int cursor)? getFlightByPage,
    TResult? Function(int id)? deleteFlight,
    TResult? Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult? Function()? fetchPlaces,
    TResult? Function()? fetchAirline,
    TResult? Function(String airline)? selectedAirlines,
    TResult? Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult? Function()? refreshItem,
  }) {
    return updateFlightsAfterEdit?.call(flight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String flightID)? selectFlight,
    TResult Function()? getFlights,
    TResult Function(String id)? openAddEditFlightForm,
    TResult Function(Flight flight)? updateFlightsAfterEdit,
    TResult Function(Flight flight)? updateFlightsAfterAdd,
    TResult Function(int cursor)? getFlightByPage,
    TResult Function(int id)? deleteFlight,
    TResult Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult Function()? fetchPlaces,
    TResult Function()? fetchAirline,
    TResult Function(String airline)? selectedAirlines,
    TResult Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult Function()? refreshItem,
    required TResult orElse(),
  }) {
    if (updateFlightsAfterEdit != null) {
      return updateFlightsAfterEdit(flight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFlight value) selectFlight,
    required TResult Function(_GetFlights value) getFlights,
    required TResult Function(_OpenAddEditFlightForm value)
        openAddEditFlightForm,
    required TResult Function(_UpdateFlightsAfterEdit value)
        updateFlightsAfterEdit,
    required TResult Function(_UpdateFlightsAfterAdd value)
        updateFlightsAfterAdd,
    required TResult Function(_GetFlightByPage value) getFlightByPage,
    required TResult Function(_DeleteFlight value) deleteFlight,
    required TResult Function(_FilterFlight value) filterFlight,
    required TResult Function(_FetchPlaces value) fetchPlaces,
    required TResult Function(_FetchAirlines value) fetchAirline,
    required TResult Function(_SelectedAirline value) selectedAirlines,
    required TResult Function(_SelectedPlaceAirport value) selectedPlaceAirport,
    required TResult Function(_RefreshItem value) refreshItem,
  }) {
    return updateFlightsAfterEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFlight value)? selectFlight,
    TResult? Function(_GetFlights value)? getFlights,
    TResult? Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult? Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult? Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult? Function(_GetFlightByPage value)? getFlightByPage,
    TResult? Function(_DeleteFlight value)? deleteFlight,
    TResult? Function(_FilterFlight value)? filterFlight,
    TResult? Function(_FetchPlaces value)? fetchPlaces,
    TResult? Function(_FetchAirlines value)? fetchAirline,
    TResult? Function(_SelectedAirline value)? selectedAirlines,
    TResult? Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult? Function(_RefreshItem value)? refreshItem,
  }) {
    return updateFlightsAfterEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFlight value)? selectFlight,
    TResult Function(_GetFlights value)? getFlights,
    TResult Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult Function(_GetFlightByPage value)? getFlightByPage,
    TResult Function(_DeleteFlight value)? deleteFlight,
    TResult Function(_FilterFlight value)? filterFlight,
    TResult Function(_FetchPlaces value)? fetchPlaces,
    TResult Function(_FetchAirlines value)? fetchAirline,
    TResult Function(_SelectedAirline value)? selectedAirlines,
    TResult Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult Function(_RefreshItem value)? refreshItem,
    required TResult orElse(),
  }) {
    if (updateFlightsAfterEdit != null) {
      return updateFlightsAfterEdit(this);
    }
    return orElse();
  }
}

abstract class _UpdateFlightsAfterEdit implements ListFlightEvent {
  const factory _UpdateFlightsAfterEdit(final Flight flight) =
      _$_UpdateFlightsAfterEdit;

  Flight get flight;
  @JsonKey(ignore: true)
  _$$_UpdateFlightsAfterEditCopyWith<_$_UpdateFlightsAfterEdit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateFlightsAfterAddCopyWith<$Res> {
  factory _$$_UpdateFlightsAfterAddCopyWith(_$_UpdateFlightsAfterAdd value,
          $Res Function(_$_UpdateFlightsAfterAdd) then) =
      __$$_UpdateFlightsAfterAddCopyWithImpl<$Res>;
  @useResult
  $Res call({Flight flight});

  $FlightCopyWith<$Res> get flight;
}

/// @nodoc
class __$$_UpdateFlightsAfterAddCopyWithImpl<$Res>
    extends _$ListFlightEventCopyWithImpl<$Res, _$_UpdateFlightsAfterAdd>
    implements _$$_UpdateFlightsAfterAddCopyWith<$Res> {
  __$$_UpdateFlightsAfterAddCopyWithImpl(_$_UpdateFlightsAfterAdd _value,
      $Res Function(_$_UpdateFlightsAfterAdd) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flight = null,
  }) {
    return _then(_$_UpdateFlightsAfterAdd(
      null == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as Flight,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FlightCopyWith<$Res> get flight {
    return $FlightCopyWith<$Res>(_value.flight, (value) {
      return _then(_value.copyWith(flight: value));
    });
  }
}

/// @nodoc

class _$_UpdateFlightsAfterAdd implements _UpdateFlightsAfterAdd {
  const _$_UpdateFlightsAfterAdd(this.flight);

  @override
  final Flight flight;

  @override
  String toString() {
    return 'ListFlightEvent.updateFlightsAfterAdd(flight: $flight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateFlightsAfterAdd &&
            (identical(other.flight, flight) || other.flight == flight));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateFlightsAfterAddCopyWith<_$_UpdateFlightsAfterAdd> get copyWith =>
      __$$_UpdateFlightsAfterAddCopyWithImpl<_$_UpdateFlightsAfterAdd>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String flightID) selectFlight,
    required TResult Function() getFlights,
    required TResult Function(String id) openAddEditFlightForm,
    required TResult Function(Flight flight) updateFlightsAfterEdit,
    required TResult Function(Flight flight) updateFlightsAfterAdd,
    required TResult Function(int cursor) getFlightByPage,
    required TResult Function(int id) deleteFlight,
    required TResult Function(
            String airline, String locationArrival, String locationDeparture)
        filterFlight,
    required TResult Function() fetchPlaces,
    required TResult Function() fetchAirline,
    required TResult Function(String airline) selectedAirlines,
    required TResult Function(String place, bool isDeparture)
        selectedPlaceAirport,
    required TResult Function() refreshItem,
  }) {
    return updateFlightsAfterAdd(flight);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String flightID)? selectFlight,
    TResult? Function()? getFlights,
    TResult? Function(String id)? openAddEditFlightForm,
    TResult? Function(Flight flight)? updateFlightsAfterEdit,
    TResult? Function(Flight flight)? updateFlightsAfterAdd,
    TResult? Function(int cursor)? getFlightByPage,
    TResult? Function(int id)? deleteFlight,
    TResult? Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult? Function()? fetchPlaces,
    TResult? Function()? fetchAirline,
    TResult? Function(String airline)? selectedAirlines,
    TResult? Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult? Function()? refreshItem,
  }) {
    return updateFlightsAfterAdd?.call(flight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String flightID)? selectFlight,
    TResult Function()? getFlights,
    TResult Function(String id)? openAddEditFlightForm,
    TResult Function(Flight flight)? updateFlightsAfterEdit,
    TResult Function(Flight flight)? updateFlightsAfterAdd,
    TResult Function(int cursor)? getFlightByPage,
    TResult Function(int id)? deleteFlight,
    TResult Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult Function()? fetchPlaces,
    TResult Function()? fetchAirline,
    TResult Function(String airline)? selectedAirlines,
    TResult Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult Function()? refreshItem,
    required TResult orElse(),
  }) {
    if (updateFlightsAfterAdd != null) {
      return updateFlightsAfterAdd(flight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFlight value) selectFlight,
    required TResult Function(_GetFlights value) getFlights,
    required TResult Function(_OpenAddEditFlightForm value)
        openAddEditFlightForm,
    required TResult Function(_UpdateFlightsAfterEdit value)
        updateFlightsAfterEdit,
    required TResult Function(_UpdateFlightsAfterAdd value)
        updateFlightsAfterAdd,
    required TResult Function(_GetFlightByPage value) getFlightByPage,
    required TResult Function(_DeleteFlight value) deleteFlight,
    required TResult Function(_FilterFlight value) filterFlight,
    required TResult Function(_FetchPlaces value) fetchPlaces,
    required TResult Function(_FetchAirlines value) fetchAirline,
    required TResult Function(_SelectedAirline value) selectedAirlines,
    required TResult Function(_SelectedPlaceAirport value) selectedPlaceAirport,
    required TResult Function(_RefreshItem value) refreshItem,
  }) {
    return updateFlightsAfterAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFlight value)? selectFlight,
    TResult? Function(_GetFlights value)? getFlights,
    TResult? Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult? Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult? Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult? Function(_GetFlightByPage value)? getFlightByPage,
    TResult? Function(_DeleteFlight value)? deleteFlight,
    TResult? Function(_FilterFlight value)? filterFlight,
    TResult? Function(_FetchPlaces value)? fetchPlaces,
    TResult? Function(_FetchAirlines value)? fetchAirline,
    TResult? Function(_SelectedAirline value)? selectedAirlines,
    TResult? Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult? Function(_RefreshItem value)? refreshItem,
  }) {
    return updateFlightsAfterAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFlight value)? selectFlight,
    TResult Function(_GetFlights value)? getFlights,
    TResult Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult Function(_GetFlightByPage value)? getFlightByPage,
    TResult Function(_DeleteFlight value)? deleteFlight,
    TResult Function(_FilterFlight value)? filterFlight,
    TResult Function(_FetchPlaces value)? fetchPlaces,
    TResult Function(_FetchAirlines value)? fetchAirline,
    TResult Function(_SelectedAirline value)? selectedAirlines,
    TResult Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult Function(_RefreshItem value)? refreshItem,
    required TResult orElse(),
  }) {
    if (updateFlightsAfterAdd != null) {
      return updateFlightsAfterAdd(this);
    }
    return orElse();
  }
}

abstract class _UpdateFlightsAfterAdd implements ListFlightEvent {
  const factory _UpdateFlightsAfterAdd(final Flight flight) =
      _$_UpdateFlightsAfterAdd;

  Flight get flight;
  @JsonKey(ignore: true)
  _$$_UpdateFlightsAfterAddCopyWith<_$_UpdateFlightsAfterAdd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetFlightByPageCopyWith<$Res> {
  factory _$$_GetFlightByPageCopyWith(
          _$_GetFlightByPage value, $Res Function(_$_GetFlightByPage) then) =
      __$$_GetFlightByPageCopyWithImpl<$Res>;
  @useResult
  $Res call({int cursor});
}

/// @nodoc
class __$$_GetFlightByPageCopyWithImpl<$Res>
    extends _$ListFlightEventCopyWithImpl<$Res, _$_GetFlightByPage>
    implements _$$_GetFlightByPageCopyWith<$Res> {
  __$$_GetFlightByPageCopyWithImpl(
      _$_GetFlightByPage _value, $Res Function(_$_GetFlightByPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cursor = null,
  }) {
    return _then(_$_GetFlightByPage(
      null == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetFlightByPage implements _GetFlightByPage {
  const _$_GetFlightByPage(this.cursor);

  @override
  final int cursor;

  @override
  String toString() {
    return 'ListFlightEvent.getFlightByPage(cursor: $cursor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetFlightByPage &&
            (identical(other.cursor, cursor) || other.cursor == cursor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cursor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetFlightByPageCopyWith<_$_GetFlightByPage> get copyWith =>
      __$$_GetFlightByPageCopyWithImpl<_$_GetFlightByPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String flightID) selectFlight,
    required TResult Function() getFlights,
    required TResult Function(String id) openAddEditFlightForm,
    required TResult Function(Flight flight) updateFlightsAfterEdit,
    required TResult Function(Flight flight) updateFlightsAfterAdd,
    required TResult Function(int cursor) getFlightByPage,
    required TResult Function(int id) deleteFlight,
    required TResult Function(
            String airline, String locationArrival, String locationDeparture)
        filterFlight,
    required TResult Function() fetchPlaces,
    required TResult Function() fetchAirline,
    required TResult Function(String airline) selectedAirlines,
    required TResult Function(String place, bool isDeparture)
        selectedPlaceAirport,
    required TResult Function() refreshItem,
  }) {
    return getFlightByPage(cursor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String flightID)? selectFlight,
    TResult? Function()? getFlights,
    TResult? Function(String id)? openAddEditFlightForm,
    TResult? Function(Flight flight)? updateFlightsAfterEdit,
    TResult? Function(Flight flight)? updateFlightsAfterAdd,
    TResult? Function(int cursor)? getFlightByPage,
    TResult? Function(int id)? deleteFlight,
    TResult? Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult? Function()? fetchPlaces,
    TResult? Function()? fetchAirline,
    TResult? Function(String airline)? selectedAirlines,
    TResult? Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult? Function()? refreshItem,
  }) {
    return getFlightByPage?.call(cursor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String flightID)? selectFlight,
    TResult Function()? getFlights,
    TResult Function(String id)? openAddEditFlightForm,
    TResult Function(Flight flight)? updateFlightsAfterEdit,
    TResult Function(Flight flight)? updateFlightsAfterAdd,
    TResult Function(int cursor)? getFlightByPage,
    TResult Function(int id)? deleteFlight,
    TResult Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult Function()? fetchPlaces,
    TResult Function()? fetchAirline,
    TResult Function(String airline)? selectedAirlines,
    TResult Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult Function()? refreshItem,
    required TResult orElse(),
  }) {
    if (getFlightByPage != null) {
      return getFlightByPage(cursor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFlight value) selectFlight,
    required TResult Function(_GetFlights value) getFlights,
    required TResult Function(_OpenAddEditFlightForm value)
        openAddEditFlightForm,
    required TResult Function(_UpdateFlightsAfterEdit value)
        updateFlightsAfterEdit,
    required TResult Function(_UpdateFlightsAfterAdd value)
        updateFlightsAfterAdd,
    required TResult Function(_GetFlightByPage value) getFlightByPage,
    required TResult Function(_DeleteFlight value) deleteFlight,
    required TResult Function(_FilterFlight value) filterFlight,
    required TResult Function(_FetchPlaces value) fetchPlaces,
    required TResult Function(_FetchAirlines value) fetchAirline,
    required TResult Function(_SelectedAirline value) selectedAirlines,
    required TResult Function(_SelectedPlaceAirport value) selectedPlaceAirport,
    required TResult Function(_RefreshItem value) refreshItem,
  }) {
    return getFlightByPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFlight value)? selectFlight,
    TResult? Function(_GetFlights value)? getFlights,
    TResult? Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult? Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult? Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult? Function(_GetFlightByPage value)? getFlightByPage,
    TResult? Function(_DeleteFlight value)? deleteFlight,
    TResult? Function(_FilterFlight value)? filterFlight,
    TResult? Function(_FetchPlaces value)? fetchPlaces,
    TResult? Function(_FetchAirlines value)? fetchAirline,
    TResult? Function(_SelectedAirline value)? selectedAirlines,
    TResult? Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult? Function(_RefreshItem value)? refreshItem,
  }) {
    return getFlightByPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFlight value)? selectFlight,
    TResult Function(_GetFlights value)? getFlights,
    TResult Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult Function(_GetFlightByPage value)? getFlightByPage,
    TResult Function(_DeleteFlight value)? deleteFlight,
    TResult Function(_FilterFlight value)? filterFlight,
    TResult Function(_FetchPlaces value)? fetchPlaces,
    TResult Function(_FetchAirlines value)? fetchAirline,
    TResult Function(_SelectedAirline value)? selectedAirlines,
    TResult Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult Function(_RefreshItem value)? refreshItem,
    required TResult orElse(),
  }) {
    if (getFlightByPage != null) {
      return getFlightByPage(this);
    }
    return orElse();
  }
}

abstract class _GetFlightByPage implements ListFlightEvent {
  const factory _GetFlightByPage(final int cursor) = _$_GetFlightByPage;

  int get cursor;
  @JsonKey(ignore: true)
  _$$_GetFlightByPageCopyWith<_$_GetFlightByPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteFlightCopyWith<$Res> {
  factory _$$_DeleteFlightCopyWith(
          _$_DeleteFlight value, $Res Function(_$_DeleteFlight) then) =
      __$$_DeleteFlightCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_DeleteFlightCopyWithImpl<$Res>
    extends _$ListFlightEventCopyWithImpl<$Res, _$_DeleteFlight>
    implements _$$_DeleteFlightCopyWith<$Res> {
  __$$_DeleteFlightCopyWithImpl(
      _$_DeleteFlight _value, $Res Function(_$_DeleteFlight) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_DeleteFlight(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteFlight implements _DeleteFlight {
  const _$_DeleteFlight(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ListFlightEvent.deleteFlight(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteFlight &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteFlightCopyWith<_$_DeleteFlight> get copyWith =>
      __$$_DeleteFlightCopyWithImpl<_$_DeleteFlight>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String flightID) selectFlight,
    required TResult Function() getFlights,
    required TResult Function(String id) openAddEditFlightForm,
    required TResult Function(Flight flight) updateFlightsAfterEdit,
    required TResult Function(Flight flight) updateFlightsAfterAdd,
    required TResult Function(int cursor) getFlightByPage,
    required TResult Function(int id) deleteFlight,
    required TResult Function(
            String airline, String locationArrival, String locationDeparture)
        filterFlight,
    required TResult Function() fetchPlaces,
    required TResult Function() fetchAirline,
    required TResult Function(String airline) selectedAirlines,
    required TResult Function(String place, bool isDeparture)
        selectedPlaceAirport,
    required TResult Function() refreshItem,
  }) {
    return deleteFlight(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String flightID)? selectFlight,
    TResult? Function()? getFlights,
    TResult? Function(String id)? openAddEditFlightForm,
    TResult? Function(Flight flight)? updateFlightsAfterEdit,
    TResult? Function(Flight flight)? updateFlightsAfterAdd,
    TResult? Function(int cursor)? getFlightByPage,
    TResult? Function(int id)? deleteFlight,
    TResult? Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult? Function()? fetchPlaces,
    TResult? Function()? fetchAirline,
    TResult? Function(String airline)? selectedAirlines,
    TResult? Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult? Function()? refreshItem,
  }) {
    return deleteFlight?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String flightID)? selectFlight,
    TResult Function()? getFlights,
    TResult Function(String id)? openAddEditFlightForm,
    TResult Function(Flight flight)? updateFlightsAfterEdit,
    TResult Function(Flight flight)? updateFlightsAfterAdd,
    TResult Function(int cursor)? getFlightByPage,
    TResult Function(int id)? deleteFlight,
    TResult Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult Function()? fetchPlaces,
    TResult Function()? fetchAirline,
    TResult Function(String airline)? selectedAirlines,
    TResult Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult Function()? refreshItem,
    required TResult orElse(),
  }) {
    if (deleteFlight != null) {
      return deleteFlight(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFlight value) selectFlight,
    required TResult Function(_GetFlights value) getFlights,
    required TResult Function(_OpenAddEditFlightForm value)
        openAddEditFlightForm,
    required TResult Function(_UpdateFlightsAfterEdit value)
        updateFlightsAfterEdit,
    required TResult Function(_UpdateFlightsAfterAdd value)
        updateFlightsAfterAdd,
    required TResult Function(_GetFlightByPage value) getFlightByPage,
    required TResult Function(_DeleteFlight value) deleteFlight,
    required TResult Function(_FilterFlight value) filterFlight,
    required TResult Function(_FetchPlaces value) fetchPlaces,
    required TResult Function(_FetchAirlines value) fetchAirline,
    required TResult Function(_SelectedAirline value) selectedAirlines,
    required TResult Function(_SelectedPlaceAirport value) selectedPlaceAirport,
    required TResult Function(_RefreshItem value) refreshItem,
  }) {
    return deleteFlight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFlight value)? selectFlight,
    TResult? Function(_GetFlights value)? getFlights,
    TResult? Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult? Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult? Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult? Function(_GetFlightByPage value)? getFlightByPage,
    TResult? Function(_DeleteFlight value)? deleteFlight,
    TResult? Function(_FilterFlight value)? filterFlight,
    TResult? Function(_FetchPlaces value)? fetchPlaces,
    TResult? Function(_FetchAirlines value)? fetchAirline,
    TResult? Function(_SelectedAirline value)? selectedAirlines,
    TResult? Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult? Function(_RefreshItem value)? refreshItem,
  }) {
    return deleteFlight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFlight value)? selectFlight,
    TResult Function(_GetFlights value)? getFlights,
    TResult Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult Function(_GetFlightByPage value)? getFlightByPage,
    TResult Function(_DeleteFlight value)? deleteFlight,
    TResult Function(_FilterFlight value)? filterFlight,
    TResult Function(_FetchPlaces value)? fetchPlaces,
    TResult Function(_FetchAirlines value)? fetchAirline,
    TResult Function(_SelectedAirline value)? selectedAirlines,
    TResult Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult Function(_RefreshItem value)? refreshItem,
    required TResult orElse(),
  }) {
    if (deleteFlight != null) {
      return deleteFlight(this);
    }
    return orElse();
  }
}

abstract class _DeleteFlight implements ListFlightEvent {
  const factory _DeleteFlight(final int id) = _$_DeleteFlight;

  int get id;
  @JsonKey(ignore: true)
  _$$_DeleteFlightCopyWith<_$_DeleteFlight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FilterFlightCopyWith<$Res> {
  factory _$$_FilterFlightCopyWith(
          _$_FilterFlight value, $Res Function(_$_FilterFlight) then) =
      __$$_FilterFlightCopyWithImpl<$Res>;
  @useResult
  $Res call({String airline, String locationArrival, String locationDeparture});
}

/// @nodoc
class __$$_FilterFlightCopyWithImpl<$Res>
    extends _$ListFlightEventCopyWithImpl<$Res, _$_FilterFlight>
    implements _$$_FilterFlightCopyWith<$Res> {
  __$$_FilterFlightCopyWithImpl(
      _$_FilterFlight _value, $Res Function(_$_FilterFlight) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airline = null,
    Object? locationArrival = null,
    Object? locationDeparture = null,
  }) {
    return _then(_$_FilterFlight(
      airline: null == airline
          ? _value.airline
          : airline // ignore: cast_nullable_to_non_nullable
              as String,
      locationArrival: null == locationArrival
          ? _value.locationArrival
          : locationArrival // ignore: cast_nullable_to_non_nullable
              as String,
      locationDeparture: null == locationDeparture
          ? _value.locationDeparture
          : locationDeparture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FilterFlight implements _FilterFlight {
  const _$_FilterFlight(
      {required this.airline,
      required this.locationArrival,
      required this.locationDeparture});

  @override
  final String airline;
  @override
  final String locationArrival;
  @override
  final String locationDeparture;

  @override
  String toString() {
    return 'ListFlightEvent.filterFlight(airline: $airline, locationArrival: $locationArrival, locationDeparture: $locationDeparture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterFlight &&
            (identical(other.airline, airline) || other.airline == airline) &&
            (identical(other.locationArrival, locationArrival) ||
                other.locationArrival == locationArrival) &&
            (identical(other.locationDeparture, locationDeparture) ||
                other.locationDeparture == locationDeparture));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, airline, locationArrival, locationDeparture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterFlightCopyWith<_$_FilterFlight> get copyWith =>
      __$$_FilterFlightCopyWithImpl<_$_FilterFlight>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String flightID) selectFlight,
    required TResult Function() getFlights,
    required TResult Function(String id) openAddEditFlightForm,
    required TResult Function(Flight flight) updateFlightsAfterEdit,
    required TResult Function(Flight flight) updateFlightsAfterAdd,
    required TResult Function(int cursor) getFlightByPage,
    required TResult Function(int id) deleteFlight,
    required TResult Function(
            String airline, String locationArrival, String locationDeparture)
        filterFlight,
    required TResult Function() fetchPlaces,
    required TResult Function() fetchAirline,
    required TResult Function(String airline) selectedAirlines,
    required TResult Function(String place, bool isDeparture)
        selectedPlaceAirport,
    required TResult Function() refreshItem,
  }) {
    return filterFlight(airline, locationArrival, locationDeparture);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String flightID)? selectFlight,
    TResult? Function()? getFlights,
    TResult? Function(String id)? openAddEditFlightForm,
    TResult? Function(Flight flight)? updateFlightsAfterEdit,
    TResult? Function(Flight flight)? updateFlightsAfterAdd,
    TResult? Function(int cursor)? getFlightByPage,
    TResult? Function(int id)? deleteFlight,
    TResult? Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult? Function()? fetchPlaces,
    TResult? Function()? fetchAirline,
    TResult? Function(String airline)? selectedAirlines,
    TResult? Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult? Function()? refreshItem,
  }) {
    return filterFlight?.call(airline, locationArrival, locationDeparture);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String flightID)? selectFlight,
    TResult Function()? getFlights,
    TResult Function(String id)? openAddEditFlightForm,
    TResult Function(Flight flight)? updateFlightsAfterEdit,
    TResult Function(Flight flight)? updateFlightsAfterAdd,
    TResult Function(int cursor)? getFlightByPage,
    TResult Function(int id)? deleteFlight,
    TResult Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult Function()? fetchPlaces,
    TResult Function()? fetchAirline,
    TResult Function(String airline)? selectedAirlines,
    TResult Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult Function()? refreshItem,
    required TResult orElse(),
  }) {
    if (filterFlight != null) {
      return filterFlight(airline, locationArrival, locationDeparture);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFlight value) selectFlight,
    required TResult Function(_GetFlights value) getFlights,
    required TResult Function(_OpenAddEditFlightForm value)
        openAddEditFlightForm,
    required TResult Function(_UpdateFlightsAfterEdit value)
        updateFlightsAfterEdit,
    required TResult Function(_UpdateFlightsAfterAdd value)
        updateFlightsAfterAdd,
    required TResult Function(_GetFlightByPage value) getFlightByPage,
    required TResult Function(_DeleteFlight value) deleteFlight,
    required TResult Function(_FilterFlight value) filterFlight,
    required TResult Function(_FetchPlaces value) fetchPlaces,
    required TResult Function(_FetchAirlines value) fetchAirline,
    required TResult Function(_SelectedAirline value) selectedAirlines,
    required TResult Function(_SelectedPlaceAirport value) selectedPlaceAirport,
    required TResult Function(_RefreshItem value) refreshItem,
  }) {
    return filterFlight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFlight value)? selectFlight,
    TResult? Function(_GetFlights value)? getFlights,
    TResult? Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult? Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult? Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult? Function(_GetFlightByPage value)? getFlightByPage,
    TResult? Function(_DeleteFlight value)? deleteFlight,
    TResult? Function(_FilterFlight value)? filterFlight,
    TResult? Function(_FetchPlaces value)? fetchPlaces,
    TResult? Function(_FetchAirlines value)? fetchAirline,
    TResult? Function(_SelectedAirline value)? selectedAirlines,
    TResult? Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult? Function(_RefreshItem value)? refreshItem,
  }) {
    return filterFlight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFlight value)? selectFlight,
    TResult Function(_GetFlights value)? getFlights,
    TResult Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult Function(_GetFlightByPage value)? getFlightByPage,
    TResult Function(_DeleteFlight value)? deleteFlight,
    TResult Function(_FilterFlight value)? filterFlight,
    TResult Function(_FetchPlaces value)? fetchPlaces,
    TResult Function(_FetchAirlines value)? fetchAirline,
    TResult Function(_SelectedAirline value)? selectedAirlines,
    TResult Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult Function(_RefreshItem value)? refreshItem,
    required TResult orElse(),
  }) {
    if (filterFlight != null) {
      return filterFlight(this);
    }
    return orElse();
  }
}

abstract class _FilterFlight implements ListFlightEvent {
  const factory _FilterFlight(
      {required final String airline,
      required final String locationArrival,
      required final String locationDeparture}) = _$_FilterFlight;

  String get airline;
  String get locationArrival;
  String get locationDeparture;
  @JsonKey(ignore: true)
  _$$_FilterFlightCopyWith<_$_FilterFlight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchPlacesCopyWith<$Res> {
  factory _$$_FetchPlacesCopyWith(
          _$_FetchPlaces value, $Res Function(_$_FetchPlaces) then) =
      __$$_FetchPlacesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchPlacesCopyWithImpl<$Res>
    extends _$ListFlightEventCopyWithImpl<$Res, _$_FetchPlaces>
    implements _$$_FetchPlacesCopyWith<$Res> {
  __$$_FetchPlacesCopyWithImpl(
      _$_FetchPlaces _value, $Res Function(_$_FetchPlaces) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchPlaces implements _FetchPlaces {
  const _$_FetchPlaces();

  @override
  String toString() {
    return 'ListFlightEvent.fetchPlaces()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchPlaces);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String flightID) selectFlight,
    required TResult Function() getFlights,
    required TResult Function(String id) openAddEditFlightForm,
    required TResult Function(Flight flight) updateFlightsAfterEdit,
    required TResult Function(Flight flight) updateFlightsAfterAdd,
    required TResult Function(int cursor) getFlightByPage,
    required TResult Function(int id) deleteFlight,
    required TResult Function(
            String airline, String locationArrival, String locationDeparture)
        filterFlight,
    required TResult Function() fetchPlaces,
    required TResult Function() fetchAirline,
    required TResult Function(String airline) selectedAirlines,
    required TResult Function(String place, bool isDeparture)
        selectedPlaceAirport,
    required TResult Function() refreshItem,
  }) {
    return fetchPlaces();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String flightID)? selectFlight,
    TResult? Function()? getFlights,
    TResult? Function(String id)? openAddEditFlightForm,
    TResult? Function(Flight flight)? updateFlightsAfterEdit,
    TResult? Function(Flight flight)? updateFlightsAfterAdd,
    TResult? Function(int cursor)? getFlightByPage,
    TResult? Function(int id)? deleteFlight,
    TResult? Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult? Function()? fetchPlaces,
    TResult? Function()? fetchAirline,
    TResult? Function(String airline)? selectedAirlines,
    TResult? Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult? Function()? refreshItem,
  }) {
    return fetchPlaces?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String flightID)? selectFlight,
    TResult Function()? getFlights,
    TResult Function(String id)? openAddEditFlightForm,
    TResult Function(Flight flight)? updateFlightsAfterEdit,
    TResult Function(Flight flight)? updateFlightsAfterAdd,
    TResult Function(int cursor)? getFlightByPage,
    TResult Function(int id)? deleteFlight,
    TResult Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult Function()? fetchPlaces,
    TResult Function()? fetchAirline,
    TResult Function(String airline)? selectedAirlines,
    TResult Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult Function()? refreshItem,
    required TResult orElse(),
  }) {
    if (fetchPlaces != null) {
      return fetchPlaces();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFlight value) selectFlight,
    required TResult Function(_GetFlights value) getFlights,
    required TResult Function(_OpenAddEditFlightForm value)
        openAddEditFlightForm,
    required TResult Function(_UpdateFlightsAfterEdit value)
        updateFlightsAfterEdit,
    required TResult Function(_UpdateFlightsAfterAdd value)
        updateFlightsAfterAdd,
    required TResult Function(_GetFlightByPage value) getFlightByPage,
    required TResult Function(_DeleteFlight value) deleteFlight,
    required TResult Function(_FilterFlight value) filterFlight,
    required TResult Function(_FetchPlaces value) fetchPlaces,
    required TResult Function(_FetchAirlines value) fetchAirline,
    required TResult Function(_SelectedAirline value) selectedAirlines,
    required TResult Function(_SelectedPlaceAirport value) selectedPlaceAirport,
    required TResult Function(_RefreshItem value) refreshItem,
  }) {
    return fetchPlaces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFlight value)? selectFlight,
    TResult? Function(_GetFlights value)? getFlights,
    TResult? Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult? Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult? Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult? Function(_GetFlightByPage value)? getFlightByPage,
    TResult? Function(_DeleteFlight value)? deleteFlight,
    TResult? Function(_FilterFlight value)? filterFlight,
    TResult? Function(_FetchPlaces value)? fetchPlaces,
    TResult? Function(_FetchAirlines value)? fetchAirline,
    TResult? Function(_SelectedAirline value)? selectedAirlines,
    TResult? Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult? Function(_RefreshItem value)? refreshItem,
  }) {
    return fetchPlaces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFlight value)? selectFlight,
    TResult Function(_GetFlights value)? getFlights,
    TResult Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult Function(_GetFlightByPage value)? getFlightByPage,
    TResult Function(_DeleteFlight value)? deleteFlight,
    TResult Function(_FilterFlight value)? filterFlight,
    TResult Function(_FetchPlaces value)? fetchPlaces,
    TResult Function(_FetchAirlines value)? fetchAirline,
    TResult Function(_SelectedAirline value)? selectedAirlines,
    TResult Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult Function(_RefreshItem value)? refreshItem,
    required TResult orElse(),
  }) {
    if (fetchPlaces != null) {
      return fetchPlaces(this);
    }
    return orElse();
  }
}

abstract class _FetchPlaces implements ListFlightEvent {
  const factory _FetchPlaces() = _$_FetchPlaces;
}

/// @nodoc
abstract class _$$_FetchAirlinesCopyWith<$Res> {
  factory _$$_FetchAirlinesCopyWith(
          _$_FetchAirlines value, $Res Function(_$_FetchAirlines) then) =
      __$$_FetchAirlinesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchAirlinesCopyWithImpl<$Res>
    extends _$ListFlightEventCopyWithImpl<$Res, _$_FetchAirlines>
    implements _$$_FetchAirlinesCopyWith<$Res> {
  __$$_FetchAirlinesCopyWithImpl(
      _$_FetchAirlines _value, $Res Function(_$_FetchAirlines) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchAirlines implements _FetchAirlines {
  const _$_FetchAirlines();

  @override
  String toString() {
    return 'ListFlightEvent.fetchAirline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchAirlines);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String flightID) selectFlight,
    required TResult Function() getFlights,
    required TResult Function(String id) openAddEditFlightForm,
    required TResult Function(Flight flight) updateFlightsAfterEdit,
    required TResult Function(Flight flight) updateFlightsAfterAdd,
    required TResult Function(int cursor) getFlightByPage,
    required TResult Function(int id) deleteFlight,
    required TResult Function(
            String airline, String locationArrival, String locationDeparture)
        filterFlight,
    required TResult Function() fetchPlaces,
    required TResult Function() fetchAirline,
    required TResult Function(String airline) selectedAirlines,
    required TResult Function(String place, bool isDeparture)
        selectedPlaceAirport,
    required TResult Function() refreshItem,
  }) {
    return fetchAirline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String flightID)? selectFlight,
    TResult? Function()? getFlights,
    TResult? Function(String id)? openAddEditFlightForm,
    TResult? Function(Flight flight)? updateFlightsAfterEdit,
    TResult? Function(Flight flight)? updateFlightsAfterAdd,
    TResult? Function(int cursor)? getFlightByPage,
    TResult? Function(int id)? deleteFlight,
    TResult? Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult? Function()? fetchPlaces,
    TResult? Function()? fetchAirline,
    TResult? Function(String airline)? selectedAirlines,
    TResult? Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult? Function()? refreshItem,
  }) {
    return fetchAirline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String flightID)? selectFlight,
    TResult Function()? getFlights,
    TResult Function(String id)? openAddEditFlightForm,
    TResult Function(Flight flight)? updateFlightsAfterEdit,
    TResult Function(Flight flight)? updateFlightsAfterAdd,
    TResult Function(int cursor)? getFlightByPage,
    TResult Function(int id)? deleteFlight,
    TResult Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult Function()? fetchPlaces,
    TResult Function()? fetchAirline,
    TResult Function(String airline)? selectedAirlines,
    TResult Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult Function()? refreshItem,
    required TResult orElse(),
  }) {
    if (fetchAirline != null) {
      return fetchAirline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFlight value) selectFlight,
    required TResult Function(_GetFlights value) getFlights,
    required TResult Function(_OpenAddEditFlightForm value)
        openAddEditFlightForm,
    required TResult Function(_UpdateFlightsAfterEdit value)
        updateFlightsAfterEdit,
    required TResult Function(_UpdateFlightsAfterAdd value)
        updateFlightsAfterAdd,
    required TResult Function(_GetFlightByPage value) getFlightByPage,
    required TResult Function(_DeleteFlight value) deleteFlight,
    required TResult Function(_FilterFlight value) filterFlight,
    required TResult Function(_FetchPlaces value) fetchPlaces,
    required TResult Function(_FetchAirlines value) fetchAirline,
    required TResult Function(_SelectedAirline value) selectedAirlines,
    required TResult Function(_SelectedPlaceAirport value) selectedPlaceAirport,
    required TResult Function(_RefreshItem value) refreshItem,
  }) {
    return fetchAirline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFlight value)? selectFlight,
    TResult? Function(_GetFlights value)? getFlights,
    TResult? Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult? Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult? Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult? Function(_GetFlightByPage value)? getFlightByPage,
    TResult? Function(_DeleteFlight value)? deleteFlight,
    TResult? Function(_FilterFlight value)? filterFlight,
    TResult? Function(_FetchPlaces value)? fetchPlaces,
    TResult? Function(_FetchAirlines value)? fetchAirline,
    TResult? Function(_SelectedAirline value)? selectedAirlines,
    TResult? Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult? Function(_RefreshItem value)? refreshItem,
  }) {
    return fetchAirline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFlight value)? selectFlight,
    TResult Function(_GetFlights value)? getFlights,
    TResult Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult Function(_GetFlightByPage value)? getFlightByPage,
    TResult Function(_DeleteFlight value)? deleteFlight,
    TResult Function(_FilterFlight value)? filterFlight,
    TResult Function(_FetchPlaces value)? fetchPlaces,
    TResult Function(_FetchAirlines value)? fetchAirline,
    TResult Function(_SelectedAirline value)? selectedAirlines,
    TResult Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult Function(_RefreshItem value)? refreshItem,
    required TResult orElse(),
  }) {
    if (fetchAirline != null) {
      return fetchAirline(this);
    }
    return orElse();
  }
}

abstract class _FetchAirlines implements ListFlightEvent {
  const factory _FetchAirlines() = _$_FetchAirlines;
}

/// @nodoc
abstract class _$$_SelectedAirlineCopyWith<$Res> {
  factory _$$_SelectedAirlineCopyWith(
          _$_SelectedAirline value, $Res Function(_$_SelectedAirline) then) =
      __$$_SelectedAirlineCopyWithImpl<$Res>;
  @useResult
  $Res call({String airline});
}

/// @nodoc
class __$$_SelectedAirlineCopyWithImpl<$Res>
    extends _$ListFlightEventCopyWithImpl<$Res, _$_SelectedAirline>
    implements _$$_SelectedAirlineCopyWith<$Res> {
  __$$_SelectedAirlineCopyWithImpl(
      _$_SelectedAirline _value, $Res Function(_$_SelectedAirline) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airline = null,
  }) {
    return _then(_$_SelectedAirline(
      airline: null == airline
          ? _value.airline
          : airline // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectedAirline implements _SelectedAirline {
  const _$_SelectedAirline({required this.airline});

  @override
  final String airline;

  @override
  String toString() {
    return 'ListFlightEvent.selectedAirlines(airline: $airline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedAirline &&
            (identical(other.airline, airline) || other.airline == airline));
  }

  @override
  int get hashCode => Object.hash(runtimeType, airline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedAirlineCopyWith<_$_SelectedAirline> get copyWith =>
      __$$_SelectedAirlineCopyWithImpl<_$_SelectedAirline>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String flightID) selectFlight,
    required TResult Function() getFlights,
    required TResult Function(String id) openAddEditFlightForm,
    required TResult Function(Flight flight) updateFlightsAfterEdit,
    required TResult Function(Flight flight) updateFlightsAfterAdd,
    required TResult Function(int cursor) getFlightByPage,
    required TResult Function(int id) deleteFlight,
    required TResult Function(
            String airline, String locationArrival, String locationDeparture)
        filterFlight,
    required TResult Function() fetchPlaces,
    required TResult Function() fetchAirline,
    required TResult Function(String airline) selectedAirlines,
    required TResult Function(String place, bool isDeparture)
        selectedPlaceAirport,
    required TResult Function() refreshItem,
  }) {
    return selectedAirlines(airline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String flightID)? selectFlight,
    TResult? Function()? getFlights,
    TResult? Function(String id)? openAddEditFlightForm,
    TResult? Function(Flight flight)? updateFlightsAfterEdit,
    TResult? Function(Flight flight)? updateFlightsAfterAdd,
    TResult? Function(int cursor)? getFlightByPage,
    TResult? Function(int id)? deleteFlight,
    TResult? Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult? Function()? fetchPlaces,
    TResult? Function()? fetchAirline,
    TResult? Function(String airline)? selectedAirlines,
    TResult? Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult? Function()? refreshItem,
  }) {
    return selectedAirlines?.call(airline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String flightID)? selectFlight,
    TResult Function()? getFlights,
    TResult Function(String id)? openAddEditFlightForm,
    TResult Function(Flight flight)? updateFlightsAfterEdit,
    TResult Function(Flight flight)? updateFlightsAfterAdd,
    TResult Function(int cursor)? getFlightByPage,
    TResult Function(int id)? deleteFlight,
    TResult Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult Function()? fetchPlaces,
    TResult Function()? fetchAirline,
    TResult Function(String airline)? selectedAirlines,
    TResult Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult Function()? refreshItem,
    required TResult orElse(),
  }) {
    if (selectedAirlines != null) {
      return selectedAirlines(airline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFlight value) selectFlight,
    required TResult Function(_GetFlights value) getFlights,
    required TResult Function(_OpenAddEditFlightForm value)
        openAddEditFlightForm,
    required TResult Function(_UpdateFlightsAfterEdit value)
        updateFlightsAfterEdit,
    required TResult Function(_UpdateFlightsAfterAdd value)
        updateFlightsAfterAdd,
    required TResult Function(_GetFlightByPage value) getFlightByPage,
    required TResult Function(_DeleteFlight value) deleteFlight,
    required TResult Function(_FilterFlight value) filterFlight,
    required TResult Function(_FetchPlaces value) fetchPlaces,
    required TResult Function(_FetchAirlines value) fetchAirline,
    required TResult Function(_SelectedAirline value) selectedAirlines,
    required TResult Function(_SelectedPlaceAirport value) selectedPlaceAirport,
    required TResult Function(_RefreshItem value) refreshItem,
  }) {
    return selectedAirlines(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFlight value)? selectFlight,
    TResult? Function(_GetFlights value)? getFlights,
    TResult? Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult? Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult? Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult? Function(_GetFlightByPage value)? getFlightByPage,
    TResult? Function(_DeleteFlight value)? deleteFlight,
    TResult? Function(_FilterFlight value)? filterFlight,
    TResult? Function(_FetchPlaces value)? fetchPlaces,
    TResult? Function(_FetchAirlines value)? fetchAirline,
    TResult? Function(_SelectedAirline value)? selectedAirlines,
    TResult? Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult? Function(_RefreshItem value)? refreshItem,
  }) {
    return selectedAirlines?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFlight value)? selectFlight,
    TResult Function(_GetFlights value)? getFlights,
    TResult Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult Function(_GetFlightByPage value)? getFlightByPage,
    TResult Function(_DeleteFlight value)? deleteFlight,
    TResult Function(_FilterFlight value)? filterFlight,
    TResult Function(_FetchPlaces value)? fetchPlaces,
    TResult Function(_FetchAirlines value)? fetchAirline,
    TResult Function(_SelectedAirline value)? selectedAirlines,
    TResult Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult Function(_RefreshItem value)? refreshItem,
    required TResult orElse(),
  }) {
    if (selectedAirlines != null) {
      return selectedAirlines(this);
    }
    return orElse();
  }
}

abstract class _SelectedAirline implements ListFlightEvent {
  const factory _SelectedAirline({required final String airline}) =
      _$_SelectedAirline;

  String get airline;
  @JsonKey(ignore: true)
  _$$_SelectedAirlineCopyWith<_$_SelectedAirline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectedPlaceAirportCopyWith<$Res> {
  factory _$$_SelectedPlaceAirportCopyWith(_$_SelectedPlaceAirport value,
          $Res Function(_$_SelectedPlaceAirport) then) =
      __$$_SelectedPlaceAirportCopyWithImpl<$Res>;
  @useResult
  $Res call({String place, bool isDeparture});
}

/// @nodoc
class __$$_SelectedPlaceAirportCopyWithImpl<$Res>
    extends _$ListFlightEventCopyWithImpl<$Res, _$_SelectedPlaceAirport>
    implements _$$_SelectedPlaceAirportCopyWith<$Res> {
  __$$_SelectedPlaceAirportCopyWithImpl(_$_SelectedPlaceAirport _value,
      $Res Function(_$_SelectedPlaceAirport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
    Object? isDeparture = null,
  }) {
    return _then(_$_SelectedPlaceAirport(
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      isDeparture: null == isDeparture
          ? _value.isDeparture
          : isDeparture // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SelectedPlaceAirport implements _SelectedPlaceAirport {
  const _$_SelectedPlaceAirport(
      {required this.place, required this.isDeparture});

  @override
  final String place;
  @override
  final bool isDeparture;

  @override
  String toString() {
    return 'ListFlightEvent.selectedPlaceAirport(place: $place, isDeparture: $isDeparture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedPlaceAirport &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.isDeparture, isDeparture) ||
                other.isDeparture == isDeparture));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place, isDeparture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedPlaceAirportCopyWith<_$_SelectedPlaceAirport> get copyWith =>
      __$$_SelectedPlaceAirportCopyWithImpl<_$_SelectedPlaceAirport>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String flightID) selectFlight,
    required TResult Function() getFlights,
    required TResult Function(String id) openAddEditFlightForm,
    required TResult Function(Flight flight) updateFlightsAfterEdit,
    required TResult Function(Flight flight) updateFlightsAfterAdd,
    required TResult Function(int cursor) getFlightByPage,
    required TResult Function(int id) deleteFlight,
    required TResult Function(
            String airline, String locationArrival, String locationDeparture)
        filterFlight,
    required TResult Function() fetchPlaces,
    required TResult Function() fetchAirline,
    required TResult Function(String airline) selectedAirlines,
    required TResult Function(String place, bool isDeparture)
        selectedPlaceAirport,
    required TResult Function() refreshItem,
  }) {
    return selectedPlaceAirport(place, isDeparture);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String flightID)? selectFlight,
    TResult? Function()? getFlights,
    TResult? Function(String id)? openAddEditFlightForm,
    TResult? Function(Flight flight)? updateFlightsAfterEdit,
    TResult? Function(Flight flight)? updateFlightsAfterAdd,
    TResult? Function(int cursor)? getFlightByPage,
    TResult? Function(int id)? deleteFlight,
    TResult? Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult? Function()? fetchPlaces,
    TResult? Function()? fetchAirline,
    TResult? Function(String airline)? selectedAirlines,
    TResult? Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult? Function()? refreshItem,
  }) {
    return selectedPlaceAirport?.call(place, isDeparture);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String flightID)? selectFlight,
    TResult Function()? getFlights,
    TResult Function(String id)? openAddEditFlightForm,
    TResult Function(Flight flight)? updateFlightsAfterEdit,
    TResult Function(Flight flight)? updateFlightsAfterAdd,
    TResult Function(int cursor)? getFlightByPage,
    TResult Function(int id)? deleteFlight,
    TResult Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult Function()? fetchPlaces,
    TResult Function()? fetchAirline,
    TResult Function(String airline)? selectedAirlines,
    TResult Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult Function()? refreshItem,
    required TResult orElse(),
  }) {
    if (selectedPlaceAirport != null) {
      return selectedPlaceAirport(place, isDeparture);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFlight value) selectFlight,
    required TResult Function(_GetFlights value) getFlights,
    required TResult Function(_OpenAddEditFlightForm value)
        openAddEditFlightForm,
    required TResult Function(_UpdateFlightsAfterEdit value)
        updateFlightsAfterEdit,
    required TResult Function(_UpdateFlightsAfterAdd value)
        updateFlightsAfterAdd,
    required TResult Function(_GetFlightByPage value) getFlightByPage,
    required TResult Function(_DeleteFlight value) deleteFlight,
    required TResult Function(_FilterFlight value) filterFlight,
    required TResult Function(_FetchPlaces value) fetchPlaces,
    required TResult Function(_FetchAirlines value) fetchAirline,
    required TResult Function(_SelectedAirline value) selectedAirlines,
    required TResult Function(_SelectedPlaceAirport value) selectedPlaceAirport,
    required TResult Function(_RefreshItem value) refreshItem,
  }) {
    return selectedPlaceAirport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFlight value)? selectFlight,
    TResult? Function(_GetFlights value)? getFlights,
    TResult? Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult? Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult? Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult? Function(_GetFlightByPage value)? getFlightByPage,
    TResult? Function(_DeleteFlight value)? deleteFlight,
    TResult? Function(_FilterFlight value)? filterFlight,
    TResult? Function(_FetchPlaces value)? fetchPlaces,
    TResult? Function(_FetchAirlines value)? fetchAirline,
    TResult? Function(_SelectedAirline value)? selectedAirlines,
    TResult? Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult? Function(_RefreshItem value)? refreshItem,
  }) {
    return selectedPlaceAirport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFlight value)? selectFlight,
    TResult Function(_GetFlights value)? getFlights,
    TResult Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult Function(_GetFlightByPage value)? getFlightByPage,
    TResult Function(_DeleteFlight value)? deleteFlight,
    TResult Function(_FilterFlight value)? filterFlight,
    TResult Function(_FetchPlaces value)? fetchPlaces,
    TResult Function(_FetchAirlines value)? fetchAirline,
    TResult Function(_SelectedAirline value)? selectedAirlines,
    TResult Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult Function(_RefreshItem value)? refreshItem,
    required TResult orElse(),
  }) {
    if (selectedPlaceAirport != null) {
      return selectedPlaceAirport(this);
    }
    return orElse();
  }
}

abstract class _SelectedPlaceAirport implements ListFlightEvent {
  const factory _SelectedPlaceAirport(
      {required final String place,
      required final bool isDeparture}) = _$_SelectedPlaceAirport;

  String get place;
  bool get isDeparture;
  @JsonKey(ignore: true)
  _$$_SelectedPlaceAirportCopyWith<_$_SelectedPlaceAirport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshItemCopyWith<$Res> {
  factory _$$_RefreshItemCopyWith(
          _$_RefreshItem value, $Res Function(_$_RefreshItem) then) =
      __$$_RefreshItemCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshItemCopyWithImpl<$Res>
    extends _$ListFlightEventCopyWithImpl<$Res, _$_RefreshItem>
    implements _$$_RefreshItemCopyWith<$Res> {
  __$$_RefreshItemCopyWithImpl(
      _$_RefreshItem _value, $Res Function(_$_RefreshItem) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RefreshItem implements _RefreshItem {
  const _$_RefreshItem();

  @override
  String toString() {
    return 'ListFlightEvent.refreshItem()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RefreshItem);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String flightID) selectFlight,
    required TResult Function() getFlights,
    required TResult Function(String id) openAddEditFlightForm,
    required TResult Function(Flight flight) updateFlightsAfterEdit,
    required TResult Function(Flight flight) updateFlightsAfterAdd,
    required TResult Function(int cursor) getFlightByPage,
    required TResult Function(int id) deleteFlight,
    required TResult Function(
            String airline, String locationArrival, String locationDeparture)
        filterFlight,
    required TResult Function() fetchPlaces,
    required TResult Function() fetchAirline,
    required TResult Function(String airline) selectedAirlines,
    required TResult Function(String place, bool isDeparture)
        selectedPlaceAirport,
    required TResult Function() refreshItem,
  }) {
    return refreshItem();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String flightID)? selectFlight,
    TResult? Function()? getFlights,
    TResult? Function(String id)? openAddEditFlightForm,
    TResult? Function(Flight flight)? updateFlightsAfterEdit,
    TResult? Function(Flight flight)? updateFlightsAfterAdd,
    TResult? Function(int cursor)? getFlightByPage,
    TResult? Function(int id)? deleteFlight,
    TResult? Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult? Function()? fetchPlaces,
    TResult? Function()? fetchAirline,
    TResult? Function(String airline)? selectedAirlines,
    TResult? Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult? Function()? refreshItem,
  }) {
    return refreshItem?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String flightID)? selectFlight,
    TResult Function()? getFlights,
    TResult Function(String id)? openAddEditFlightForm,
    TResult Function(Flight flight)? updateFlightsAfterEdit,
    TResult Function(Flight flight)? updateFlightsAfterAdd,
    TResult Function(int cursor)? getFlightByPage,
    TResult Function(int id)? deleteFlight,
    TResult Function(
            String airline, String locationArrival, String locationDeparture)?
        filterFlight,
    TResult Function()? fetchPlaces,
    TResult Function()? fetchAirline,
    TResult Function(String airline)? selectedAirlines,
    TResult Function(String place, bool isDeparture)? selectedPlaceAirport,
    TResult Function()? refreshItem,
    required TResult orElse(),
  }) {
    if (refreshItem != null) {
      return refreshItem();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFlight value) selectFlight,
    required TResult Function(_GetFlights value) getFlights,
    required TResult Function(_OpenAddEditFlightForm value)
        openAddEditFlightForm,
    required TResult Function(_UpdateFlightsAfterEdit value)
        updateFlightsAfterEdit,
    required TResult Function(_UpdateFlightsAfterAdd value)
        updateFlightsAfterAdd,
    required TResult Function(_GetFlightByPage value) getFlightByPage,
    required TResult Function(_DeleteFlight value) deleteFlight,
    required TResult Function(_FilterFlight value) filterFlight,
    required TResult Function(_FetchPlaces value) fetchPlaces,
    required TResult Function(_FetchAirlines value) fetchAirline,
    required TResult Function(_SelectedAirline value) selectedAirlines,
    required TResult Function(_SelectedPlaceAirport value) selectedPlaceAirport,
    required TResult Function(_RefreshItem value) refreshItem,
  }) {
    return refreshItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFlight value)? selectFlight,
    TResult? Function(_GetFlights value)? getFlights,
    TResult? Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult? Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult? Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult? Function(_GetFlightByPage value)? getFlightByPage,
    TResult? Function(_DeleteFlight value)? deleteFlight,
    TResult? Function(_FilterFlight value)? filterFlight,
    TResult? Function(_FetchPlaces value)? fetchPlaces,
    TResult? Function(_FetchAirlines value)? fetchAirline,
    TResult? Function(_SelectedAirline value)? selectedAirlines,
    TResult? Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult? Function(_RefreshItem value)? refreshItem,
  }) {
    return refreshItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFlight value)? selectFlight,
    TResult Function(_GetFlights value)? getFlights,
    TResult Function(_OpenAddEditFlightForm value)? openAddEditFlightForm,
    TResult Function(_UpdateFlightsAfterEdit value)? updateFlightsAfterEdit,
    TResult Function(_UpdateFlightsAfterAdd value)? updateFlightsAfterAdd,
    TResult Function(_GetFlightByPage value)? getFlightByPage,
    TResult Function(_DeleteFlight value)? deleteFlight,
    TResult Function(_FilterFlight value)? filterFlight,
    TResult Function(_FetchPlaces value)? fetchPlaces,
    TResult Function(_FetchAirlines value)? fetchAirline,
    TResult Function(_SelectedAirline value)? selectedAirlines,
    TResult Function(_SelectedPlaceAirport value)? selectedPlaceAirport,
    TResult Function(_RefreshItem value)? refreshItem,
    required TResult orElse(),
  }) {
    if (refreshItem != null) {
      return refreshItem(this);
    }
    return orElse();
  }
}

abstract class _RefreshItem implements ListFlightEvent {
  const factory _RefreshItem() = _$_RefreshItem;
}

/// @nodoc
mixin _$ListFlightState {
  ListFlightModelState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
    required TResult Function(ListFlightModelState data, String flightId)
        openAddEditFlightFormSuccess,
    required TResult Function(ListFlightModelState data) deleteFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        deleteFlightFailed,
    required TResult Function(ListFlightModelState data) updateFlightSuccess,
    required TResult Function(ListFlightModelState data) getFlightByPageSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightPageFFailed,
    required TResult Function(ListFlightModelState data) filterFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        filterFlightFailed,
    required TResult Function(ListFlightModelState data) fetchPlaceSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchPlaceFailed,
    required TResult Function(ListFlightModelState data) fetchAirlineSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchAirlineFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult? Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult? Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult? Function(ListFlightModelState data)? updateFlightSuccess,
    TResult? Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult? Function(ListFlightModelState data)? filterFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult? Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult? Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult Function(ListFlightModelState data)? updateFlightSuccess,
    TResult Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult Function(ListFlightModelState data)? filterFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
    required TResult Function(_OpenAddEditFlightFormSuccess value)
        openAddEditFlightFormSuccess,
    required TResult Function(_DeleteFlightSuccess value) deleteFlightSuccess,
    required TResult Function(_DeleteFlightFailed value) deleteFlightFailed,
    required TResult Function(_UpdateFlightSuccess value) updateFlightSuccess,
    required TResult Function(_GetFlightByPageSuccess value)
        getFlightByPageSuccess,
    required TResult Function(_GetFlightByPageFailed value)
        getFlightPageFFailed,
    required TResult Function(_FilterFlightSuccess value) filterFlightSuccess,
    required TResult Function(_FilterFlightFailed value) filterFlightFailed,
    required TResult Function(_FetchPlaceSuccess value) fetchPlaceSuccess,
    required TResult Function(_FetchPlaceFailed value) fetchPlaceFailed,
    required TResult Function(_FetchAirlineSuccess value) fetchAirlineSuccess,
    required TResult Function(_FetchAirlineFailed value) fetchAirlineFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult? Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult? Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult? Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult? Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult? Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult? Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult? Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult? Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult? Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult? Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult? Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult? Function(_FetchAirlineFailed value)? fetchAirlineFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult Function(_FetchAirlineFailed value)? fetchAirlineFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListFlightStateCopyWith<ListFlightState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListFlightStateCopyWith<$Res> {
  factory $ListFlightStateCopyWith(
          ListFlightState value, $Res Function(ListFlightState) then) =
      _$ListFlightStateCopyWithImpl<$Res, ListFlightState>;
  @useResult
  $Res call({ListFlightModelState data});

  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class _$ListFlightStateCopyWithImpl<$Res, $Val extends ListFlightState>
    implements $ListFlightStateCopyWith<$Res> {
  _$ListFlightStateCopyWithImpl(this._value, this._then);

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
              as ListFlightModelState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ListFlightModelStateCopyWith<$Res> get data {
    return $ListFlightModelStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ListFlightStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListFlightModelState data});

  @override
  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ListFlightStateCopyWithImpl<$Res, _$_Initial>
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
              as ListFlightModelState,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final ListFlightModelState data;

  @override
  String toString() {
    return 'ListFlightState.initial(data: $data)';
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
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
    required TResult Function(ListFlightModelState data, String flightId)
        openAddEditFlightFormSuccess,
    required TResult Function(ListFlightModelState data) deleteFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        deleteFlightFailed,
    required TResult Function(ListFlightModelState data) updateFlightSuccess,
    required TResult Function(ListFlightModelState data) getFlightByPageSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightPageFFailed,
    required TResult Function(ListFlightModelState data) filterFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        filterFlightFailed,
    required TResult Function(ListFlightModelState data) fetchPlaceSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchPlaceFailed,
    required TResult Function(ListFlightModelState data) fetchAirlineSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchAirlineFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult? Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult? Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult? Function(ListFlightModelState data)? updateFlightSuccess,
    TResult? Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult? Function(ListFlightModelState data)? filterFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult? Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult? Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult Function(ListFlightModelState data)? updateFlightSuccess,
    TResult Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult Function(ListFlightModelState data)? filterFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
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
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
    required TResult Function(_OpenAddEditFlightFormSuccess value)
        openAddEditFlightFormSuccess,
    required TResult Function(_DeleteFlightSuccess value) deleteFlightSuccess,
    required TResult Function(_DeleteFlightFailed value) deleteFlightFailed,
    required TResult Function(_UpdateFlightSuccess value) updateFlightSuccess,
    required TResult Function(_GetFlightByPageSuccess value)
        getFlightByPageSuccess,
    required TResult Function(_GetFlightByPageFailed value)
        getFlightPageFFailed,
    required TResult Function(_FilterFlightSuccess value) filterFlightSuccess,
    required TResult Function(_FilterFlightFailed value) filterFlightFailed,
    required TResult Function(_FetchPlaceSuccess value) fetchPlaceSuccess,
    required TResult Function(_FetchPlaceFailed value) fetchPlaceFailed,
    required TResult Function(_FetchAirlineSuccess value) fetchAirlineSuccess,
    required TResult Function(_FetchAirlineFailed value) fetchAirlineFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult? Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult? Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult? Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult? Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult? Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult? Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult? Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult? Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult? Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult? Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult? Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult? Function(_FetchAirlineFailed value)? fetchAirlineFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult Function(_FetchAirlineFailed value)? fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends ListFlightState {
  const factory _Initial({required final ListFlightModelState data}) =
      _$_Initial;
  const _Initial._() : super._();

  @override
  ListFlightModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $ListFlightStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListFlightModelState data});

  @override
  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$ListFlightStateCopyWithImpl<$Res, _$_Loading>
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
              as ListFlightModelState,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final ListFlightModelState data;

  @override
  String toString() {
    return 'ListFlightState.loading(data: $data)';
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
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
    required TResult Function(ListFlightModelState data, String flightId)
        openAddEditFlightFormSuccess,
    required TResult Function(ListFlightModelState data) deleteFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        deleteFlightFailed,
    required TResult Function(ListFlightModelState data) updateFlightSuccess,
    required TResult Function(ListFlightModelState data) getFlightByPageSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightPageFFailed,
    required TResult Function(ListFlightModelState data) filterFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        filterFlightFailed,
    required TResult Function(ListFlightModelState data) fetchPlaceSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchPlaceFailed,
    required TResult Function(ListFlightModelState data) fetchAirlineSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchAirlineFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult? Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult? Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult? Function(ListFlightModelState data)? updateFlightSuccess,
    TResult? Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult? Function(ListFlightModelState data)? filterFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult? Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult? Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult Function(ListFlightModelState data)? updateFlightSuccess,
    TResult Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult Function(ListFlightModelState data)? filterFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
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
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
    required TResult Function(_OpenAddEditFlightFormSuccess value)
        openAddEditFlightFormSuccess,
    required TResult Function(_DeleteFlightSuccess value) deleteFlightSuccess,
    required TResult Function(_DeleteFlightFailed value) deleteFlightFailed,
    required TResult Function(_UpdateFlightSuccess value) updateFlightSuccess,
    required TResult Function(_GetFlightByPageSuccess value)
        getFlightByPageSuccess,
    required TResult Function(_GetFlightByPageFailed value)
        getFlightPageFFailed,
    required TResult Function(_FilterFlightSuccess value) filterFlightSuccess,
    required TResult Function(_FilterFlightFailed value) filterFlightFailed,
    required TResult Function(_FetchPlaceSuccess value) fetchPlaceSuccess,
    required TResult Function(_FetchPlaceFailed value) fetchPlaceFailed,
    required TResult Function(_FetchAirlineSuccess value) fetchAirlineSuccess,
    required TResult Function(_FetchAirlineFailed value) fetchAirlineFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult? Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult? Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult? Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult? Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult? Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult? Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult? Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult? Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult? Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult? Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult? Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult? Function(_FetchAirlineFailed value)? fetchAirlineFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult Function(_FetchAirlineFailed value)? fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends ListFlightState {
  const factory _Loading({required final ListFlightModelState data}) =
      _$_Loading;
  const _Loading._() : super._();

  @override
  ListFlightModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectListFlightSuccessCopyWith<$Res>
    implements $ListFlightStateCopyWith<$Res> {
  factory _$$_SelectListFlightSuccessCopyWith(_$_SelectListFlightSuccess value,
          $Res Function(_$_SelectListFlightSuccess) then) =
      __$$_SelectListFlightSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListFlightModelState data, String flightId});

  @override
  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SelectListFlightSuccessCopyWithImpl<$Res>
    extends _$ListFlightStateCopyWithImpl<$Res, _$_SelectListFlightSuccess>
    implements _$$_SelectListFlightSuccessCopyWith<$Res> {
  __$$_SelectListFlightSuccessCopyWithImpl(_$_SelectListFlightSuccess _value,
      $Res Function(_$_SelectListFlightSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? flightId = null,
  }) {
    return _then(_$_SelectListFlightSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListFlightModelState,
      flightId: null == flightId
          ? _value.flightId
          : flightId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectListFlightSuccess extends _SelectListFlightSuccess {
  const _$_SelectListFlightSuccess({required this.data, required this.flightId})
      : super._();

  @override
  final ListFlightModelState data;
  @override
  final String flightId;

  @override
  String toString() {
    return 'ListFlightState.selectListFlightSuccess(data: $data, flightId: $flightId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectListFlightSuccess &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.flightId, flightId) ||
                other.flightId == flightId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, flightId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectListFlightSuccessCopyWith<_$_SelectListFlightSuccess>
      get copyWith =>
          __$$_SelectListFlightSuccessCopyWithImpl<_$_SelectListFlightSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
    required TResult Function(ListFlightModelState data, String flightId)
        openAddEditFlightFormSuccess,
    required TResult Function(ListFlightModelState data) deleteFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        deleteFlightFailed,
    required TResult Function(ListFlightModelState data) updateFlightSuccess,
    required TResult Function(ListFlightModelState data) getFlightByPageSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightPageFFailed,
    required TResult Function(ListFlightModelState data) filterFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        filterFlightFailed,
    required TResult Function(ListFlightModelState data) fetchPlaceSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchPlaceFailed,
    required TResult Function(ListFlightModelState data) fetchAirlineSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchAirlineFailed,
  }) {
    return selectListFlightSuccess(data, flightId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult? Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult? Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult? Function(ListFlightModelState data)? updateFlightSuccess,
    TResult? Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult? Function(ListFlightModelState data)? filterFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult? Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult? Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
  }) {
    return selectListFlightSuccess?.call(data, flightId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult Function(ListFlightModelState data)? updateFlightSuccess,
    TResult Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult Function(ListFlightModelState data)? filterFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (selectListFlightSuccess != null) {
      return selectListFlightSuccess(data, flightId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
    required TResult Function(_OpenAddEditFlightFormSuccess value)
        openAddEditFlightFormSuccess,
    required TResult Function(_DeleteFlightSuccess value) deleteFlightSuccess,
    required TResult Function(_DeleteFlightFailed value) deleteFlightFailed,
    required TResult Function(_UpdateFlightSuccess value) updateFlightSuccess,
    required TResult Function(_GetFlightByPageSuccess value)
        getFlightByPageSuccess,
    required TResult Function(_GetFlightByPageFailed value)
        getFlightPageFFailed,
    required TResult Function(_FilterFlightSuccess value) filterFlightSuccess,
    required TResult Function(_FilterFlightFailed value) filterFlightFailed,
    required TResult Function(_FetchPlaceSuccess value) fetchPlaceSuccess,
    required TResult Function(_FetchPlaceFailed value) fetchPlaceFailed,
    required TResult Function(_FetchAirlineSuccess value) fetchAirlineSuccess,
    required TResult Function(_FetchAirlineFailed value) fetchAirlineFailed,
  }) {
    return selectListFlightSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult? Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult? Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult? Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult? Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult? Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult? Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult? Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult? Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult? Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult? Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult? Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult? Function(_FetchAirlineFailed value)? fetchAirlineFailed,
  }) {
    return selectListFlightSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult Function(_FetchAirlineFailed value)? fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (selectListFlightSuccess != null) {
      return selectListFlightSuccess(this);
    }
    return orElse();
  }
}

abstract class _SelectListFlightSuccess extends ListFlightState {
  const factory _SelectListFlightSuccess(
      {required final ListFlightModelState data,
      required final String flightId}) = _$_SelectListFlightSuccess;
  const _SelectListFlightSuccess._() : super._();

  @override
  ListFlightModelState get data;
  String get flightId;
  @override
  @JsonKey(ignore: true)
  _$$_SelectListFlightSuccessCopyWith<_$_SelectListFlightSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectListFlightFailedCopyWith<$Res>
    implements $ListFlightStateCopyWith<$Res> {
  factory _$$_SelectListFlightFailedCopyWith(_$_SelectListFlightFailed value,
          $Res Function(_$_SelectListFlightFailed) then) =
      __$$_SelectListFlightFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListFlightModelState data, String message});

  @override
  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SelectListFlightFailedCopyWithImpl<$Res>
    extends _$ListFlightStateCopyWithImpl<$Res, _$_SelectListFlightFailed>
    implements _$$_SelectListFlightFailedCopyWith<$Res> {
  __$$_SelectListFlightFailedCopyWithImpl(_$_SelectListFlightFailed _value,
      $Res Function(_$_SelectListFlightFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_SelectListFlightFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListFlightModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectListFlightFailed extends _SelectListFlightFailed {
  const _$_SelectListFlightFailed({required this.data, required this.message})
      : super._();

  @override
  final ListFlightModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'ListFlightState.selectListFlightFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectListFlightFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectListFlightFailedCopyWith<_$_SelectListFlightFailed> get copyWith =>
      __$$_SelectListFlightFailedCopyWithImpl<_$_SelectListFlightFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
    required TResult Function(ListFlightModelState data, String flightId)
        openAddEditFlightFormSuccess,
    required TResult Function(ListFlightModelState data) deleteFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        deleteFlightFailed,
    required TResult Function(ListFlightModelState data) updateFlightSuccess,
    required TResult Function(ListFlightModelState data) getFlightByPageSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightPageFFailed,
    required TResult Function(ListFlightModelState data) filterFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        filterFlightFailed,
    required TResult Function(ListFlightModelState data) fetchPlaceSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchPlaceFailed,
    required TResult Function(ListFlightModelState data) fetchAirlineSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchAirlineFailed,
  }) {
    return selectListFlightFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult? Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult? Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult? Function(ListFlightModelState data)? updateFlightSuccess,
    TResult? Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult? Function(ListFlightModelState data)? filterFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult? Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult? Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
  }) {
    return selectListFlightFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult Function(ListFlightModelState data)? updateFlightSuccess,
    TResult Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult Function(ListFlightModelState data)? filterFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (selectListFlightFailed != null) {
      return selectListFlightFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
    required TResult Function(_OpenAddEditFlightFormSuccess value)
        openAddEditFlightFormSuccess,
    required TResult Function(_DeleteFlightSuccess value) deleteFlightSuccess,
    required TResult Function(_DeleteFlightFailed value) deleteFlightFailed,
    required TResult Function(_UpdateFlightSuccess value) updateFlightSuccess,
    required TResult Function(_GetFlightByPageSuccess value)
        getFlightByPageSuccess,
    required TResult Function(_GetFlightByPageFailed value)
        getFlightPageFFailed,
    required TResult Function(_FilterFlightSuccess value) filterFlightSuccess,
    required TResult Function(_FilterFlightFailed value) filterFlightFailed,
    required TResult Function(_FetchPlaceSuccess value) fetchPlaceSuccess,
    required TResult Function(_FetchPlaceFailed value) fetchPlaceFailed,
    required TResult Function(_FetchAirlineSuccess value) fetchAirlineSuccess,
    required TResult Function(_FetchAirlineFailed value) fetchAirlineFailed,
  }) {
    return selectListFlightFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult? Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult? Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult? Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult? Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult? Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult? Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult? Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult? Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult? Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult? Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult? Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult? Function(_FetchAirlineFailed value)? fetchAirlineFailed,
  }) {
    return selectListFlightFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult Function(_FetchAirlineFailed value)? fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (selectListFlightFailed != null) {
      return selectListFlightFailed(this);
    }
    return orElse();
  }
}

abstract class _SelectListFlightFailed extends ListFlightState {
  const factory _SelectListFlightFailed(
      {required final ListFlightModelState data,
      required final String message}) = _$_SelectListFlightFailed;
  const _SelectListFlightFailed._() : super._();

  @override
  ListFlightModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_SelectListFlightFailedCopyWith<_$_SelectListFlightFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetFlightsSuccessCopyWith<$Res>
    implements $ListFlightStateCopyWith<$Res> {
  factory _$$_GetFlightsSuccessCopyWith(_$_GetFlightsSuccess value,
          $Res Function(_$_GetFlightsSuccess) then) =
      __$$_GetFlightsSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListFlightModelState data});

  @override
  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetFlightsSuccessCopyWithImpl<$Res>
    extends _$ListFlightStateCopyWithImpl<$Res, _$_GetFlightsSuccess>
    implements _$$_GetFlightsSuccessCopyWith<$Res> {
  __$$_GetFlightsSuccessCopyWithImpl(
      _$_GetFlightsSuccess _value, $Res Function(_$_GetFlightsSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetFlightsSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListFlightModelState,
    ));
  }
}

/// @nodoc

class _$_GetFlightsSuccess extends _GetFlightsSuccess {
  const _$_GetFlightsSuccess({required this.data}) : super._();

  @override
  final ListFlightModelState data;

  @override
  String toString() {
    return 'ListFlightState.getFlightsSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetFlightsSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetFlightsSuccessCopyWith<_$_GetFlightsSuccess> get copyWith =>
      __$$_GetFlightsSuccessCopyWithImpl<_$_GetFlightsSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
    required TResult Function(ListFlightModelState data, String flightId)
        openAddEditFlightFormSuccess,
    required TResult Function(ListFlightModelState data) deleteFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        deleteFlightFailed,
    required TResult Function(ListFlightModelState data) updateFlightSuccess,
    required TResult Function(ListFlightModelState data) getFlightByPageSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightPageFFailed,
    required TResult Function(ListFlightModelState data) filterFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        filterFlightFailed,
    required TResult Function(ListFlightModelState data) fetchPlaceSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchPlaceFailed,
    required TResult Function(ListFlightModelState data) fetchAirlineSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchAirlineFailed,
  }) {
    return getFlightsSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult? Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult? Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult? Function(ListFlightModelState data)? updateFlightSuccess,
    TResult? Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult? Function(ListFlightModelState data)? filterFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult? Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult? Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
  }) {
    return getFlightsSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult Function(ListFlightModelState data)? updateFlightSuccess,
    TResult Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult Function(ListFlightModelState data)? filterFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (getFlightsSuccess != null) {
      return getFlightsSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
    required TResult Function(_OpenAddEditFlightFormSuccess value)
        openAddEditFlightFormSuccess,
    required TResult Function(_DeleteFlightSuccess value) deleteFlightSuccess,
    required TResult Function(_DeleteFlightFailed value) deleteFlightFailed,
    required TResult Function(_UpdateFlightSuccess value) updateFlightSuccess,
    required TResult Function(_GetFlightByPageSuccess value)
        getFlightByPageSuccess,
    required TResult Function(_GetFlightByPageFailed value)
        getFlightPageFFailed,
    required TResult Function(_FilterFlightSuccess value) filterFlightSuccess,
    required TResult Function(_FilterFlightFailed value) filterFlightFailed,
    required TResult Function(_FetchPlaceSuccess value) fetchPlaceSuccess,
    required TResult Function(_FetchPlaceFailed value) fetchPlaceFailed,
    required TResult Function(_FetchAirlineSuccess value) fetchAirlineSuccess,
    required TResult Function(_FetchAirlineFailed value) fetchAirlineFailed,
  }) {
    return getFlightsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult? Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult? Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult? Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult? Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult? Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult? Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult? Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult? Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult? Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult? Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult? Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult? Function(_FetchAirlineFailed value)? fetchAirlineFailed,
  }) {
    return getFlightsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult Function(_FetchAirlineFailed value)? fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (getFlightsSuccess != null) {
      return getFlightsSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetFlightsSuccess extends ListFlightState {
  const factory _GetFlightsSuccess({required final ListFlightModelState data}) =
      _$_GetFlightsSuccess;
  const _GetFlightsSuccess._() : super._();

  @override
  ListFlightModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetFlightsSuccessCopyWith<_$_GetFlightsSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetFlightsFailedCopyWith<$Res>
    implements $ListFlightStateCopyWith<$Res> {
  factory _$$_GetFlightsFailedCopyWith(
          _$_GetFlightsFailed value, $Res Function(_$_GetFlightsFailed) then) =
      __$$_GetFlightsFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListFlightModelState data, String message});

  @override
  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetFlightsFailedCopyWithImpl<$Res>
    extends _$ListFlightStateCopyWithImpl<$Res, _$_GetFlightsFailed>
    implements _$$_GetFlightsFailedCopyWith<$Res> {
  __$$_GetFlightsFailedCopyWithImpl(
      _$_GetFlightsFailed _value, $Res Function(_$_GetFlightsFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetFlightsFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListFlightModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetFlightsFailed extends _GetFlightsFailed {
  const _$_GetFlightsFailed({required this.data, required this.message})
      : super._();

  @override
  final ListFlightModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'ListFlightState.getFlightsFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetFlightsFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetFlightsFailedCopyWith<_$_GetFlightsFailed> get copyWith =>
      __$$_GetFlightsFailedCopyWithImpl<_$_GetFlightsFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
    required TResult Function(ListFlightModelState data, String flightId)
        openAddEditFlightFormSuccess,
    required TResult Function(ListFlightModelState data) deleteFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        deleteFlightFailed,
    required TResult Function(ListFlightModelState data) updateFlightSuccess,
    required TResult Function(ListFlightModelState data) getFlightByPageSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightPageFFailed,
    required TResult Function(ListFlightModelState data) filterFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        filterFlightFailed,
    required TResult Function(ListFlightModelState data) fetchPlaceSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchPlaceFailed,
    required TResult Function(ListFlightModelState data) fetchAirlineSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchAirlineFailed,
  }) {
    return getFlightsFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult? Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult? Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult? Function(ListFlightModelState data)? updateFlightSuccess,
    TResult? Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult? Function(ListFlightModelState data)? filterFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult? Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult? Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
  }) {
    return getFlightsFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult Function(ListFlightModelState data)? updateFlightSuccess,
    TResult Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult Function(ListFlightModelState data)? filterFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (getFlightsFailed != null) {
      return getFlightsFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
    required TResult Function(_OpenAddEditFlightFormSuccess value)
        openAddEditFlightFormSuccess,
    required TResult Function(_DeleteFlightSuccess value) deleteFlightSuccess,
    required TResult Function(_DeleteFlightFailed value) deleteFlightFailed,
    required TResult Function(_UpdateFlightSuccess value) updateFlightSuccess,
    required TResult Function(_GetFlightByPageSuccess value)
        getFlightByPageSuccess,
    required TResult Function(_GetFlightByPageFailed value)
        getFlightPageFFailed,
    required TResult Function(_FilterFlightSuccess value) filterFlightSuccess,
    required TResult Function(_FilterFlightFailed value) filterFlightFailed,
    required TResult Function(_FetchPlaceSuccess value) fetchPlaceSuccess,
    required TResult Function(_FetchPlaceFailed value) fetchPlaceFailed,
    required TResult Function(_FetchAirlineSuccess value) fetchAirlineSuccess,
    required TResult Function(_FetchAirlineFailed value) fetchAirlineFailed,
  }) {
    return getFlightsFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult? Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult? Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult? Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult? Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult? Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult? Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult? Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult? Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult? Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult? Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult? Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult? Function(_FetchAirlineFailed value)? fetchAirlineFailed,
  }) {
    return getFlightsFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult Function(_FetchAirlineFailed value)? fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (getFlightsFailed != null) {
      return getFlightsFailed(this);
    }
    return orElse();
  }
}

abstract class _GetFlightsFailed extends ListFlightState {
  const factory _GetFlightsFailed(
      {required final ListFlightModelState data,
      required final String message}) = _$_GetFlightsFailed;
  const _GetFlightsFailed._() : super._();

  @override
  ListFlightModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetFlightsFailedCopyWith<_$_GetFlightsFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OpenAddEditFlightFormSuccessCopyWith<$Res>
    implements $ListFlightStateCopyWith<$Res> {
  factory _$$_OpenAddEditFlightFormSuccessCopyWith(
          _$_OpenAddEditFlightFormSuccess value,
          $Res Function(_$_OpenAddEditFlightFormSuccess) then) =
      __$$_OpenAddEditFlightFormSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListFlightModelState data, String flightId});

  @override
  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_OpenAddEditFlightFormSuccessCopyWithImpl<$Res>
    extends _$ListFlightStateCopyWithImpl<$Res, _$_OpenAddEditFlightFormSuccess>
    implements _$$_OpenAddEditFlightFormSuccessCopyWith<$Res> {
  __$$_OpenAddEditFlightFormSuccessCopyWithImpl(
      _$_OpenAddEditFlightFormSuccess _value,
      $Res Function(_$_OpenAddEditFlightFormSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? flightId = null,
  }) {
    return _then(_$_OpenAddEditFlightFormSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListFlightModelState,
      flightId: null == flightId
          ? _value.flightId
          : flightId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OpenAddEditFlightFormSuccess extends _OpenAddEditFlightFormSuccess {
  const _$_OpenAddEditFlightFormSuccess(
      {required this.data, required this.flightId})
      : super._();

  @override
  final ListFlightModelState data;
  @override
  final String flightId;

  @override
  String toString() {
    return 'ListFlightState.openAddEditFlightFormSuccess(data: $data, flightId: $flightId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenAddEditFlightFormSuccess &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.flightId, flightId) ||
                other.flightId == flightId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, flightId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenAddEditFlightFormSuccessCopyWith<_$_OpenAddEditFlightFormSuccess>
      get copyWith => __$$_OpenAddEditFlightFormSuccessCopyWithImpl<
          _$_OpenAddEditFlightFormSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
    required TResult Function(ListFlightModelState data, String flightId)
        openAddEditFlightFormSuccess,
    required TResult Function(ListFlightModelState data) deleteFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        deleteFlightFailed,
    required TResult Function(ListFlightModelState data) updateFlightSuccess,
    required TResult Function(ListFlightModelState data) getFlightByPageSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightPageFFailed,
    required TResult Function(ListFlightModelState data) filterFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        filterFlightFailed,
    required TResult Function(ListFlightModelState data) fetchPlaceSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchPlaceFailed,
    required TResult Function(ListFlightModelState data) fetchAirlineSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchAirlineFailed,
  }) {
    return openAddEditFlightFormSuccess(data, flightId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult? Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult? Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult? Function(ListFlightModelState data)? updateFlightSuccess,
    TResult? Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult? Function(ListFlightModelState data)? filterFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult? Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult? Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
  }) {
    return openAddEditFlightFormSuccess?.call(data, flightId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult Function(ListFlightModelState data)? updateFlightSuccess,
    TResult Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult Function(ListFlightModelState data)? filterFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (openAddEditFlightFormSuccess != null) {
      return openAddEditFlightFormSuccess(data, flightId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
    required TResult Function(_OpenAddEditFlightFormSuccess value)
        openAddEditFlightFormSuccess,
    required TResult Function(_DeleteFlightSuccess value) deleteFlightSuccess,
    required TResult Function(_DeleteFlightFailed value) deleteFlightFailed,
    required TResult Function(_UpdateFlightSuccess value) updateFlightSuccess,
    required TResult Function(_GetFlightByPageSuccess value)
        getFlightByPageSuccess,
    required TResult Function(_GetFlightByPageFailed value)
        getFlightPageFFailed,
    required TResult Function(_FilterFlightSuccess value) filterFlightSuccess,
    required TResult Function(_FilterFlightFailed value) filterFlightFailed,
    required TResult Function(_FetchPlaceSuccess value) fetchPlaceSuccess,
    required TResult Function(_FetchPlaceFailed value) fetchPlaceFailed,
    required TResult Function(_FetchAirlineSuccess value) fetchAirlineSuccess,
    required TResult Function(_FetchAirlineFailed value) fetchAirlineFailed,
  }) {
    return openAddEditFlightFormSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult? Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult? Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult? Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult? Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult? Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult? Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult? Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult? Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult? Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult? Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult? Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult? Function(_FetchAirlineFailed value)? fetchAirlineFailed,
  }) {
    return openAddEditFlightFormSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult Function(_FetchAirlineFailed value)? fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (openAddEditFlightFormSuccess != null) {
      return openAddEditFlightFormSuccess(this);
    }
    return orElse();
  }
}

abstract class _OpenAddEditFlightFormSuccess extends ListFlightState {
  const factory _OpenAddEditFlightFormSuccess(
      {required final ListFlightModelState data,
      required final String flightId}) = _$_OpenAddEditFlightFormSuccess;
  const _OpenAddEditFlightFormSuccess._() : super._();

  @override
  ListFlightModelState get data;
  String get flightId;
  @override
  @JsonKey(ignore: true)
  _$$_OpenAddEditFlightFormSuccessCopyWith<_$_OpenAddEditFlightFormSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteFlightSuccessCopyWith<$Res>
    implements $ListFlightStateCopyWith<$Res> {
  factory _$$_DeleteFlightSuccessCopyWith(_$_DeleteFlightSuccess value,
          $Res Function(_$_DeleteFlightSuccess) then) =
      __$$_DeleteFlightSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListFlightModelState data});

  @override
  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_DeleteFlightSuccessCopyWithImpl<$Res>
    extends _$ListFlightStateCopyWithImpl<$Res, _$_DeleteFlightSuccess>
    implements _$$_DeleteFlightSuccessCopyWith<$Res> {
  __$$_DeleteFlightSuccessCopyWithImpl(_$_DeleteFlightSuccess _value,
      $Res Function(_$_DeleteFlightSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_DeleteFlightSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListFlightModelState,
    ));
  }
}

/// @nodoc

class _$_DeleteFlightSuccess extends _DeleteFlightSuccess {
  const _$_DeleteFlightSuccess({required this.data}) : super._();

  @override
  final ListFlightModelState data;

  @override
  String toString() {
    return 'ListFlightState.deleteFlightSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteFlightSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteFlightSuccessCopyWith<_$_DeleteFlightSuccess> get copyWith =>
      __$$_DeleteFlightSuccessCopyWithImpl<_$_DeleteFlightSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
    required TResult Function(ListFlightModelState data, String flightId)
        openAddEditFlightFormSuccess,
    required TResult Function(ListFlightModelState data) deleteFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        deleteFlightFailed,
    required TResult Function(ListFlightModelState data) updateFlightSuccess,
    required TResult Function(ListFlightModelState data) getFlightByPageSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightPageFFailed,
    required TResult Function(ListFlightModelState data) filterFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        filterFlightFailed,
    required TResult Function(ListFlightModelState data) fetchPlaceSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchPlaceFailed,
    required TResult Function(ListFlightModelState data) fetchAirlineSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchAirlineFailed,
  }) {
    return deleteFlightSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult? Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult? Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult? Function(ListFlightModelState data)? updateFlightSuccess,
    TResult? Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult? Function(ListFlightModelState data)? filterFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult? Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult? Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
  }) {
    return deleteFlightSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult Function(ListFlightModelState data)? updateFlightSuccess,
    TResult Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult Function(ListFlightModelState data)? filterFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (deleteFlightSuccess != null) {
      return deleteFlightSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
    required TResult Function(_OpenAddEditFlightFormSuccess value)
        openAddEditFlightFormSuccess,
    required TResult Function(_DeleteFlightSuccess value) deleteFlightSuccess,
    required TResult Function(_DeleteFlightFailed value) deleteFlightFailed,
    required TResult Function(_UpdateFlightSuccess value) updateFlightSuccess,
    required TResult Function(_GetFlightByPageSuccess value)
        getFlightByPageSuccess,
    required TResult Function(_GetFlightByPageFailed value)
        getFlightPageFFailed,
    required TResult Function(_FilterFlightSuccess value) filterFlightSuccess,
    required TResult Function(_FilterFlightFailed value) filterFlightFailed,
    required TResult Function(_FetchPlaceSuccess value) fetchPlaceSuccess,
    required TResult Function(_FetchPlaceFailed value) fetchPlaceFailed,
    required TResult Function(_FetchAirlineSuccess value) fetchAirlineSuccess,
    required TResult Function(_FetchAirlineFailed value) fetchAirlineFailed,
  }) {
    return deleteFlightSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult? Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult? Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult? Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult? Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult? Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult? Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult? Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult? Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult? Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult? Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult? Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult? Function(_FetchAirlineFailed value)? fetchAirlineFailed,
  }) {
    return deleteFlightSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult Function(_FetchAirlineFailed value)? fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (deleteFlightSuccess != null) {
      return deleteFlightSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteFlightSuccess extends ListFlightState {
  const factory _DeleteFlightSuccess(
      {required final ListFlightModelState data}) = _$_DeleteFlightSuccess;
  const _DeleteFlightSuccess._() : super._();

  @override
  ListFlightModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteFlightSuccessCopyWith<_$_DeleteFlightSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteFlightFailedCopyWith<$Res>
    implements $ListFlightStateCopyWith<$Res> {
  factory _$$_DeleteFlightFailedCopyWith(_$_DeleteFlightFailed value,
          $Res Function(_$_DeleteFlightFailed) then) =
      __$$_DeleteFlightFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListFlightModelState data, String message});

  @override
  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_DeleteFlightFailedCopyWithImpl<$Res>
    extends _$ListFlightStateCopyWithImpl<$Res, _$_DeleteFlightFailed>
    implements _$$_DeleteFlightFailedCopyWith<$Res> {
  __$$_DeleteFlightFailedCopyWithImpl(
      _$_DeleteFlightFailed _value, $Res Function(_$_DeleteFlightFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_DeleteFlightFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListFlightModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteFlightFailed extends _DeleteFlightFailed {
  const _$_DeleteFlightFailed({required this.data, required this.message})
      : super._();

  @override
  final ListFlightModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'ListFlightState.deleteFlightFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteFlightFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteFlightFailedCopyWith<_$_DeleteFlightFailed> get copyWith =>
      __$$_DeleteFlightFailedCopyWithImpl<_$_DeleteFlightFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
    required TResult Function(ListFlightModelState data, String flightId)
        openAddEditFlightFormSuccess,
    required TResult Function(ListFlightModelState data) deleteFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        deleteFlightFailed,
    required TResult Function(ListFlightModelState data) updateFlightSuccess,
    required TResult Function(ListFlightModelState data) getFlightByPageSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightPageFFailed,
    required TResult Function(ListFlightModelState data) filterFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        filterFlightFailed,
    required TResult Function(ListFlightModelState data) fetchPlaceSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchPlaceFailed,
    required TResult Function(ListFlightModelState data) fetchAirlineSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchAirlineFailed,
  }) {
    return deleteFlightFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult? Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult? Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult? Function(ListFlightModelState data)? updateFlightSuccess,
    TResult? Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult? Function(ListFlightModelState data)? filterFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult? Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult? Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
  }) {
    return deleteFlightFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult Function(ListFlightModelState data)? updateFlightSuccess,
    TResult Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult Function(ListFlightModelState data)? filterFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (deleteFlightFailed != null) {
      return deleteFlightFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
    required TResult Function(_OpenAddEditFlightFormSuccess value)
        openAddEditFlightFormSuccess,
    required TResult Function(_DeleteFlightSuccess value) deleteFlightSuccess,
    required TResult Function(_DeleteFlightFailed value) deleteFlightFailed,
    required TResult Function(_UpdateFlightSuccess value) updateFlightSuccess,
    required TResult Function(_GetFlightByPageSuccess value)
        getFlightByPageSuccess,
    required TResult Function(_GetFlightByPageFailed value)
        getFlightPageFFailed,
    required TResult Function(_FilterFlightSuccess value) filterFlightSuccess,
    required TResult Function(_FilterFlightFailed value) filterFlightFailed,
    required TResult Function(_FetchPlaceSuccess value) fetchPlaceSuccess,
    required TResult Function(_FetchPlaceFailed value) fetchPlaceFailed,
    required TResult Function(_FetchAirlineSuccess value) fetchAirlineSuccess,
    required TResult Function(_FetchAirlineFailed value) fetchAirlineFailed,
  }) {
    return deleteFlightFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult? Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult? Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult? Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult? Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult? Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult? Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult? Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult? Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult? Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult? Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult? Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult? Function(_FetchAirlineFailed value)? fetchAirlineFailed,
  }) {
    return deleteFlightFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult Function(_FetchAirlineFailed value)? fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (deleteFlightFailed != null) {
      return deleteFlightFailed(this);
    }
    return orElse();
  }
}

abstract class _DeleteFlightFailed extends ListFlightState {
  const factory _DeleteFlightFailed(
      {required final ListFlightModelState data,
      required final String message}) = _$_DeleteFlightFailed;
  const _DeleteFlightFailed._() : super._();

  @override
  ListFlightModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteFlightFailedCopyWith<_$_DeleteFlightFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateFlightSuccessCopyWith<$Res>
    implements $ListFlightStateCopyWith<$Res> {
  factory _$$_UpdateFlightSuccessCopyWith(_$_UpdateFlightSuccess value,
          $Res Function(_$_UpdateFlightSuccess) then) =
      __$$_UpdateFlightSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListFlightModelState data});

  @override
  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_UpdateFlightSuccessCopyWithImpl<$Res>
    extends _$ListFlightStateCopyWithImpl<$Res, _$_UpdateFlightSuccess>
    implements _$$_UpdateFlightSuccessCopyWith<$Res> {
  __$$_UpdateFlightSuccessCopyWithImpl(_$_UpdateFlightSuccess _value,
      $Res Function(_$_UpdateFlightSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_UpdateFlightSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListFlightModelState,
    ));
  }
}

/// @nodoc

class _$_UpdateFlightSuccess extends _UpdateFlightSuccess {
  const _$_UpdateFlightSuccess({required this.data}) : super._();

  @override
  final ListFlightModelState data;

  @override
  String toString() {
    return 'ListFlightState.updateFlightSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateFlightSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateFlightSuccessCopyWith<_$_UpdateFlightSuccess> get copyWith =>
      __$$_UpdateFlightSuccessCopyWithImpl<_$_UpdateFlightSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
    required TResult Function(ListFlightModelState data, String flightId)
        openAddEditFlightFormSuccess,
    required TResult Function(ListFlightModelState data) deleteFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        deleteFlightFailed,
    required TResult Function(ListFlightModelState data) updateFlightSuccess,
    required TResult Function(ListFlightModelState data) getFlightByPageSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightPageFFailed,
    required TResult Function(ListFlightModelState data) filterFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        filterFlightFailed,
    required TResult Function(ListFlightModelState data) fetchPlaceSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchPlaceFailed,
    required TResult Function(ListFlightModelState data) fetchAirlineSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchAirlineFailed,
  }) {
    return updateFlightSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult? Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult? Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult? Function(ListFlightModelState data)? updateFlightSuccess,
    TResult? Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult? Function(ListFlightModelState data)? filterFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult? Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult? Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
  }) {
    return updateFlightSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult Function(ListFlightModelState data)? updateFlightSuccess,
    TResult Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult Function(ListFlightModelState data)? filterFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (updateFlightSuccess != null) {
      return updateFlightSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
    required TResult Function(_OpenAddEditFlightFormSuccess value)
        openAddEditFlightFormSuccess,
    required TResult Function(_DeleteFlightSuccess value) deleteFlightSuccess,
    required TResult Function(_DeleteFlightFailed value) deleteFlightFailed,
    required TResult Function(_UpdateFlightSuccess value) updateFlightSuccess,
    required TResult Function(_GetFlightByPageSuccess value)
        getFlightByPageSuccess,
    required TResult Function(_GetFlightByPageFailed value)
        getFlightPageFFailed,
    required TResult Function(_FilterFlightSuccess value) filterFlightSuccess,
    required TResult Function(_FilterFlightFailed value) filterFlightFailed,
    required TResult Function(_FetchPlaceSuccess value) fetchPlaceSuccess,
    required TResult Function(_FetchPlaceFailed value) fetchPlaceFailed,
    required TResult Function(_FetchAirlineSuccess value) fetchAirlineSuccess,
    required TResult Function(_FetchAirlineFailed value) fetchAirlineFailed,
  }) {
    return updateFlightSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult? Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult? Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult? Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult? Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult? Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult? Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult? Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult? Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult? Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult? Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult? Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult? Function(_FetchAirlineFailed value)? fetchAirlineFailed,
  }) {
    return updateFlightSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult Function(_FetchAirlineFailed value)? fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (updateFlightSuccess != null) {
      return updateFlightSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateFlightSuccess extends ListFlightState {
  const factory _UpdateFlightSuccess(
      {required final ListFlightModelState data}) = _$_UpdateFlightSuccess;
  const _UpdateFlightSuccess._() : super._();

  @override
  ListFlightModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateFlightSuccessCopyWith<_$_UpdateFlightSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetFlightByPageSuccessCopyWith<$Res>
    implements $ListFlightStateCopyWith<$Res> {
  factory _$$_GetFlightByPageSuccessCopyWith(_$_GetFlightByPageSuccess value,
          $Res Function(_$_GetFlightByPageSuccess) then) =
      __$$_GetFlightByPageSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListFlightModelState data});

  @override
  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetFlightByPageSuccessCopyWithImpl<$Res>
    extends _$ListFlightStateCopyWithImpl<$Res, _$_GetFlightByPageSuccess>
    implements _$$_GetFlightByPageSuccessCopyWith<$Res> {
  __$$_GetFlightByPageSuccessCopyWithImpl(_$_GetFlightByPageSuccess _value,
      $Res Function(_$_GetFlightByPageSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetFlightByPageSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListFlightModelState,
    ));
  }
}

/// @nodoc

class _$_GetFlightByPageSuccess extends _GetFlightByPageSuccess {
  const _$_GetFlightByPageSuccess({required this.data}) : super._();

  @override
  final ListFlightModelState data;

  @override
  String toString() {
    return 'ListFlightState.getFlightByPageSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetFlightByPageSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetFlightByPageSuccessCopyWith<_$_GetFlightByPageSuccess> get copyWith =>
      __$$_GetFlightByPageSuccessCopyWithImpl<_$_GetFlightByPageSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
    required TResult Function(ListFlightModelState data, String flightId)
        openAddEditFlightFormSuccess,
    required TResult Function(ListFlightModelState data) deleteFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        deleteFlightFailed,
    required TResult Function(ListFlightModelState data) updateFlightSuccess,
    required TResult Function(ListFlightModelState data) getFlightByPageSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightPageFFailed,
    required TResult Function(ListFlightModelState data) filterFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        filterFlightFailed,
    required TResult Function(ListFlightModelState data) fetchPlaceSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchPlaceFailed,
    required TResult Function(ListFlightModelState data) fetchAirlineSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchAirlineFailed,
  }) {
    return getFlightByPageSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult? Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult? Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult? Function(ListFlightModelState data)? updateFlightSuccess,
    TResult? Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult? Function(ListFlightModelState data)? filterFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult? Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult? Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
  }) {
    return getFlightByPageSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult Function(ListFlightModelState data)? updateFlightSuccess,
    TResult Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult Function(ListFlightModelState data)? filterFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (getFlightByPageSuccess != null) {
      return getFlightByPageSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
    required TResult Function(_OpenAddEditFlightFormSuccess value)
        openAddEditFlightFormSuccess,
    required TResult Function(_DeleteFlightSuccess value) deleteFlightSuccess,
    required TResult Function(_DeleteFlightFailed value) deleteFlightFailed,
    required TResult Function(_UpdateFlightSuccess value) updateFlightSuccess,
    required TResult Function(_GetFlightByPageSuccess value)
        getFlightByPageSuccess,
    required TResult Function(_GetFlightByPageFailed value)
        getFlightPageFFailed,
    required TResult Function(_FilterFlightSuccess value) filterFlightSuccess,
    required TResult Function(_FilterFlightFailed value) filterFlightFailed,
    required TResult Function(_FetchPlaceSuccess value) fetchPlaceSuccess,
    required TResult Function(_FetchPlaceFailed value) fetchPlaceFailed,
    required TResult Function(_FetchAirlineSuccess value) fetchAirlineSuccess,
    required TResult Function(_FetchAirlineFailed value) fetchAirlineFailed,
  }) {
    return getFlightByPageSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult? Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult? Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult? Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult? Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult? Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult? Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult? Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult? Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult? Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult? Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult? Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult? Function(_FetchAirlineFailed value)? fetchAirlineFailed,
  }) {
    return getFlightByPageSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult Function(_FetchAirlineFailed value)? fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (getFlightByPageSuccess != null) {
      return getFlightByPageSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetFlightByPageSuccess extends ListFlightState {
  const factory _GetFlightByPageSuccess(
      {required final ListFlightModelState data}) = _$_GetFlightByPageSuccess;
  const _GetFlightByPageSuccess._() : super._();

  @override
  ListFlightModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetFlightByPageSuccessCopyWith<_$_GetFlightByPageSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetFlightByPageFailedCopyWith<$Res>
    implements $ListFlightStateCopyWith<$Res> {
  factory _$$_GetFlightByPageFailedCopyWith(_$_GetFlightByPageFailed value,
          $Res Function(_$_GetFlightByPageFailed) then) =
      __$$_GetFlightByPageFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListFlightModelState data, String message});

  @override
  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetFlightByPageFailedCopyWithImpl<$Res>
    extends _$ListFlightStateCopyWithImpl<$Res, _$_GetFlightByPageFailed>
    implements _$$_GetFlightByPageFailedCopyWith<$Res> {
  __$$_GetFlightByPageFailedCopyWithImpl(_$_GetFlightByPageFailed _value,
      $Res Function(_$_GetFlightByPageFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetFlightByPageFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListFlightModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetFlightByPageFailed extends _GetFlightByPageFailed {
  const _$_GetFlightByPageFailed({required this.data, required this.message})
      : super._();

  @override
  final ListFlightModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'ListFlightState.getFlightPageFFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetFlightByPageFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetFlightByPageFailedCopyWith<_$_GetFlightByPageFailed> get copyWith =>
      __$$_GetFlightByPageFailedCopyWithImpl<_$_GetFlightByPageFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
    required TResult Function(ListFlightModelState data, String flightId)
        openAddEditFlightFormSuccess,
    required TResult Function(ListFlightModelState data) deleteFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        deleteFlightFailed,
    required TResult Function(ListFlightModelState data) updateFlightSuccess,
    required TResult Function(ListFlightModelState data) getFlightByPageSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightPageFFailed,
    required TResult Function(ListFlightModelState data) filterFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        filterFlightFailed,
    required TResult Function(ListFlightModelState data) fetchPlaceSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchPlaceFailed,
    required TResult Function(ListFlightModelState data) fetchAirlineSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchAirlineFailed,
  }) {
    return getFlightPageFFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult? Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult? Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult? Function(ListFlightModelState data)? updateFlightSuccess,
    TResult? Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult? Function(ListFlightModelState data)? filterFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult? Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult? Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
  }) {
    return getFlightPageFFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult Function(ListFlightModelState data)? updateFlightSuccess,
    TResult Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult Function(ListFlightModelState data)? filterFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (getFlightPageFFailed != null) {
      return getFlightPageFFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
    required TResult Function(_OpenAddEditFlightFormSuccess value)
        openAddEditFlightFormSuccess,
    required TResult Function(_DeleteFlightSuccess value) deleteFlightSuccess,
    required TResult Function(_DeleteFlightFailed value) deleteFlightFailed,
    required TResult Function(_UpdateFlightSuccess value) updateFlightSuccess,
    required TResult Function(_GetFlightByPageSuccess value)
        getFlightByPageSuccess,
    required TResult Function(_GetFlightByPageFailed value)
        getFlightPageFFailed,
    required TResult Function(_FilterFlightSuccess value) filterFlightSuccess,
    required TResult Function(_FilterFlightFailed value) filterFlightFailed,
    required TResult Function(_FetchPlaceSuccess value) fetchPlaceSuccess,
    required TResult Function(_FetchPlaceFailed value) fetchPlaceFailed,
    required TResult Function(_FetchAirlineSuccess value) fetchAirlineSuccess,
    required TResult Function(_FetchAirlineFailed value) fetchAirlineFailed,
  }) {
    return getFlightPageFFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult? Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult? Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult? Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult? Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult? Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult? Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult? Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult? Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult? Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult? Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult? Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult? Function(_FetchAirlineFailed value)? fetchAirlineFailed,
  }) {
    return getFlightPageFFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult Function(_FetchAirlineFailed value)? fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (getFlightPageFFailed != null) {
      return getFlightPageFFailed(this);
    }
    return orElse();
  }
}

abstract class _GetFlightByPageFailed extends ListFlightState {
  const factory _GetFlightByPageFailed(
      {required final ListFlightModelState data,
      required final String message}) = _$_GetFlightByPageFailed;
  const _GetFlightByPageFailed._() : super._();

  @override
  ListFlightModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetFlightByPageFailedCopyWith<_$_GetFlightByPageFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FilterFlightSuccessCopyWith<$Res>
    implements $ListFlightStateCopyWith<$Res> {
  factory _$$_FilterFlightSuccessCopyWith(_$_FilterFlightSuccess value,
          $Res Function(_$_FilterFlightSuccess) then) =
      __$$_FilterFlightSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListFlightModelState data});

  @override
  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FilterFlightSuccessCopyWithImpl<$Res>
    extends _$ListFlightStateCopyWithImpl<$Res, _$_FilterFlightSuccess>
    implements _$$_FilterFlightSuccessCopyWith<$Res> {
  __$$_FilterFlightSuccessCopyWithImpl(_$_FilterFlightSuccess _value,
      $Res Function(_$_FilterFlightSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_FilterFlightSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListFlightModelState,
    ));
  }
}

/// @nodoc

class _$_FilterFlightSuccess extends _FilterFlightSuccess {
  const _$_FilterFlightSuccess({required this.data}) : super._();

  @override
  final ListFlightModelState data;

  @override
  String toString() {
    return 'ListFlightState.filterFlightSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterFlightSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterFlightSuccessCopyWith<_$_FilterFlightSuccess> get copyWith =>
      __$$_FilterFlightSuccessCopyWithImpl<_$_FilterFlightSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
    required TResult Function(ListFlightModelState data, String flightId)
        openAddEditFlightFormSuccess,
    required TResult Function(ListFlightModelState data) deleteFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        deleteFlightFailed,
    required TResult Function(ListFlightModelState data) updateFlightSuccess,
    required TResult Function(ListFlightModelState data) getFlightByPageSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightPageFFailed,
    required TResult Function(ListFlightModelState data) filterFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        filterFlightFailed,
    required TResult Function(ListFlightModelState data) fetchPlaceSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchPlaceFailed,
    required TResult Function(ListFlightModelState data) fetchAirlineSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchAirlineFailed,
  }) {
    return filterFlightSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult? Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult? Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult? Function(ListFlightModelState data)? updateFlightSuccess,
    TResult? Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult? Function(ListFlightModelState data)? filterFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult? Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult? Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
  }) {
    return filterFlightSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult Function(ListFlightModelState data)? updateFlightSuccess,
    TResult Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult Function(ListFlightModelState data)? filterFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (filterFlightSuccess != null) {
      return filterFlightSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
    required TResult Function(_OpenAddEditFlightFormSuccess value)
        openAddEditFlightFormSuccess,
    required TResult Function(_DeleteFlightSuccess value) deleteFlightSuccess,
    required TResult Function(_DeleteFlightFailed value) deleteFlightFailed,
    required TResult Function(_UpdateFlightSuccess value) updateFlightSuccess,
    required TResult Function(_GetFlightByPageSuccess value)
        getFlightByPageSuccess,
    required TResult Function(_GetFlightByPageFailed value)
        getFlightPageFFailed,
    required TResult Function(_FilterFlightSuccess value) filterFlightSuccess,
    required TResult Function(_FilterFlightFailed value) filterFlightFailed,
    required TResult Function(_FetchPlaceSuccess value) fetchPlaceSuccess,
    required TResult Function(_FetchPlaceFailed value) fetchPlaceFailed,
    required TResult Function(_FetchAirlineSuccess value) fetchAirlineSuccess,
    required TResult Function(_FetchAirlineFailed value) fetchAirlineFailed,
  }) {
    return filterFlightSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult? Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult? Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult? Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult? Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult? Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult? Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult? Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult? Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult? Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult? Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult? Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult? Function(_FetchAirlineFailed value)? fetchAirlineFailed,
  }) {
    return filterFlightSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult Function(_FetchAirlineFailed value)? fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (filterFlightSuccess != null) {
      return filterFlightSuccess(this);
    }
    return orElse();
  }
}

abstract class _FilterFlightSuccess extends ListFlightState {
  const factory _FilterFlightSuccess(
      {required final ListFlightModelState data}) = _$_FilterFlightSuccess;
  const _FilterFlightSuccess._() : super._();

  @override
  ListFlightModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_FilterFlightSuccessCopyWith<_$_FilterFlightSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FilterFlightFailedCopyWith<$Res>
    implements $ListFlightStateCopyWith<$Res> {
  factory _$$_FilterFlightFailedCopyWith(_$_FilterFlightFailed value,
          $Res Function(_$_FilterFlightFailed) then) =
      __$$_FilterFlightFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListFlightModelState data, String message});

  @override
  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FilterFlightFailedCopyWithImpl<$Res>
    extends _$ListFlightStateCopyWithImpl<$Res, _$_FilterFlightFailed>
    implements _$$_FilterFlightFailedCopyWith<$Res> {
  __$$_FilterFlightFailedCopyWithImpl(
      _$_FilterFlightFailed _value, $Res Function(_$_FilterFlightFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_FilterFlightFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListFlightModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FilterFlightFailed extends _FilterFlightFailed {
  const _$_FilterFlightFailed({required this.data, required this.message})
      : super._();

  @override
  final ListFlightModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'ListFlightState.filterFlightFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterFlightFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterFlightFailedCopyWith<_$_FilterFlightFailed> get copyWith =>
      __$$_FilterFlightFailedCopyWithImpl<_$_FilterFlightFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
    required TResult Function(ListFlightModelState data, String flightId)
        openAddEditFlightFormSuccess,
    required TResult Function(ListFlightModelState data) deleteFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        deleteFlightFailed,
    required TResult Function(ListFlightModelState data) updateFlightSuccess,
    required TResult Function(ListFlightModelState data) getFlightByPageSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightPageFFailed,
    required TResult Function(ListFlightModelState data) filterFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        filterFlightFailed,
    required TResult Function(ListFlightModelState data) fetchPlaceSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchPlaceFailed,
    required TResult Function(ListFlightModelState data) fetchAirlineSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchAirlineFailed,
  }) {
    return filterFlightFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult? Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult? Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult? Function(ListFlightModelState data)? updateFlightSuccess,
    TResult? Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult? Function(ListFlightModelState data)? filterFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult? Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult? Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
  }) {
    return filterFlightFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult Function(ListFlightModelState data)? updateFlightSuccess,
    TResult Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult Function(ListFlightModelState data)? filterFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (filterFlightFailed != null) {
      return filterFlightFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
    required TResult Function(_OpenAddEditFlightFormSuccess value)
        openAddEditFlightFormSuccess,
    required TResult Function(_DeleteFlightSuccess value) deleteFlightSuccess,
    required TResult Function(_DeleteFlightFailed value) deleteFlightFailed,
    required TResult Function(_UpdateFlightSuccess value) updateFlightSuccess,
    required TResult Function(_GetFlightByPageSuccess value)
        getFlightByPageSuccess,
    required TResult Function(_GetFlightByPageFailed value)
        getFlightPageFFailed,
    required TResult Function(_FilterFlightSuccess value) filterFlightSuccess,
    required TResult Function(_FilterFlightFailed value) filterFlightFailed,
    required TResult Function(_FetchPlaceSuccess value) fetchPlaceSuccess,
    required TResult Function(_FetchPlaceFailed value) fetchPlaceFailed,
    required TResult Function(_FetchAirlineSuccess value) fetchAirlineSuccess,
    required TResult Function(_FetchAirlineFailed value) fetchAirlineFailed,
  }) {
    return filterFlightFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult? Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult? Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult? Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult? Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult? Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult? Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult? Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult? Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult? Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult? Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult? Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult? Function(_FetchAirlineFailed value)? fetchAirlineFailed,
  }) {
    return filterFlightFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult Function(_FetchAirlineFailed value)? fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (filterFlightFailed != null) {
      return filterFlightFailed(this);
    }
    return orElse();
  }
}

abstract class _FilterFlightFailed extends ListFlightState {
  const factory _FilterFlightFailed(
      {required final ListFlightModelState data,
      required final String message}) = _$_FilterFlightFailed;
  const _FilterFlightFailed._() : super._();

  @override
  ListFlightModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_FilterFlightFailedCopyWith<_$_FilterFlightFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchPlaceSuccessCopyWith<$Res>
    implements $ListFlightStateCopyWith<$Res> {
  factory _$$_FetchPlaceSuccessCopyWith(_$_FetchPlaceSuccess value,
          $Res Function(_$_FetchPlaceSuccess) then) =
      __$$_FetchPlaceSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListFlightModelState data});

  @override
  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FetchPlaceSuccessCopyWithImpl<$Res>
    extends _$ListFlightStateCopyWithImpl<$Res, _$_FetchPlaceSuccess>
    implements _$$_FetchPlaceSuccessCopyWith<$Res> {
  __$$_FetchPlaceSuccessCopyWithImpl(
      _$_FetchPlaceSuccess _value, $Res Function(_$_FetchPlaceSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_FetchPlaceSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListFlightModelState,
    ));
  }
}

/// @nodoc

class _$_FetchPlaceSuccess extends _FetchPlaceSuccess {
  const _$_FetchPlaceSuccess({required this.data}) : super._();

  @override
  final ListFlightModelState data;

  @override
  String toString() {
    return 'ListFlightState.fetchPlaceSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchPlaceSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchPlaceSuccessCopyWith<_$_FetchPlaceSuccess> get copyWith =>
      __$$_FetchPlaceSuccessCopyWithImpl<_$_FetchPlaceSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
    required TResult Function(ListFlightModelState data, String flightId)
        openAddEditFlightFormSuccess,
    required TResult Function(ListFlightModelState data) deleteFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        deleteFlightFailed,
    required TResult Function(ListFlightModelState data) updateFlightSuccess,
    required TResult Function(ListFlightModelState data) getFlightByPageSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightPageFFailed,
    required TResult Function(ListFlightModelState data) filterFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        filterFlightFailed,
    required TResult Function(ListFlightModelState data) fetchPlaceSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchPlaceFailed,
    required TResult Function(ListFlightModelState data) fetchAirlineSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchAirlineFailed,
  }) {
    return fetchPlaceSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult? Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult? Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult? Function(ListFlightModelState data)? updateFlightSuccess,
    TResult? Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult? Function(ListFlightModelState data)? filterFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult? Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult? Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
  }) {
    return fetchPlaceSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult Function(ListFlightModelState data)? updateFlightSuccess,
    TResult Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult Function(ListFlightModelState data)? filterFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (fetchPlaceSuccess != null) {
      return fetchPlaceSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
    required TResult Function(_OpenAddEditFlightFormSuccess value)
        openAddEditFlightFormSuccess,
    required TResult Function(_DeleteFlightSuccess value) deleteFlightSuccess,
    required TResult Function(_DeleteFlightFailed value) deleteFlightFailed,
    required TResult Function(_UpdateFlightSuccess value) updateFlightSuccess,
    required TResult Function(_GetFlightByPageSuccess value)
        getFlightByPageSuccess,
    required TResult Function(_GetFlightByPageFailed value)
        getFlightPageFFailed,
    required TResult Function(_FilterFlightSuccess value) filterFlightSuccess,
    required TResult Function(_FilterFlightFailed value) filterFlightFailed,
    required TResult Function(_FetchPlaceSuccess value) fetchPlaceSuccess,
    required TResult Function(_FetchPlaceFailed value) fetchPlaceFailed,
    required TResult Function(_FetchAirlineSuccess value) fetchAirlineSuccess,
    required TResult Function(_FetchAirlineFailed value) fetchAirlineFailed,
  }) {
    return fetchPlaceSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult? Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult? Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult? Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult? Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult? Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult? Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult? Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult? Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult? Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult? Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult? Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult? Function(_FetchAirlineFailed value)? fetchAirlineFailed,
  }) {
    return fetchPlaceSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult Function(_FetchAirlineFailed value)? fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (fetchPlaceSuccess != null) {
      return fetchPlaceSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchPlaceSuccess extends ListFlightState {
  const factory _FetchPlaceSuccess({required final ListFlightModelState data}) =
      _$_FetchPlaceSuccess;
  const _FetchPlaceSuccess._() : super._();

  @override
  ListFlightModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_FetchPlaceSuccessCopyWith<_$_FetchPlaceSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchPlaceFailedCopyWith<$Res>
    implements $ListFlightStateCopyWith<$Res> {
  factory _$$_FetchPlaceFailedCopyWith(
          _$_FetchPlaceFailed value, $Res Function(_$_FetchPlaceFailed) then) =
      __$$_FetchPlaceFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListFlightModelState data, String message});

  @override
  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FetchPlaceFailedCopyWithImpl<$Res>
    extends _$ListFlightStateCopyWithImpl<$Res, _$_FetchPlaceFailed>
    implements _$$_FetchPlaceFailedCopyWith<$Res> {
  __$$_FetchPlaceFailedCopyWithImpl(
      _$_FetchPlaceFailed _value, $Res Function(_$_FetchPlaceFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_FetchPlaceFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListFlightModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchPlaceFailed extends _FetchPlaceFailed {
  const _$_FetchPlaceFailed({required this.data, required this.message})
      : super._();

  @override
  final ListFlightModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'ListFlightState.fetchPlaceFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchPlaceFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchPlaceFailedCopyWith<_$_FetchPlaceFailed> get copyWith =>
      __$$_FetchPlaceFailedCopyWithImpl<_$_FetchPlaceFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
    required TResult Function(ListFlightModelState data, String flightId)
        openAddEditFlightFormSuccess,
    required TResult Function(ListFlightModelState data) deleteFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        deleteFlightFailed,
    required TResult Function(ListFlightModelState data) updateFlightSuccess,
    required TResult Function(ListFlightModelState data) getFlightByPageSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightPageFFailed,
    required TResult Function(ListFlightModelState data) filterFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        filterFlightFailed,
    required TResult Function(ListFlightModelState data) fetchPlaceSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchPlaceFailed,
    required TResult Function(ListFlightModelState data) fetchAirlineSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchAirlineFailed,
  }) {
    return fetchPlaceFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult? Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult? Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult? Function(ListFlightModelState data)? updateFlightSuccess,
    TResult? Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult? Function(ListFlightModelState data)? filterFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult? Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult? Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
  }) {
    return fetchPlaceFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult Function(ListFlightModelState data)? updateFlightSuccess,
    TResult Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult Function(ListFlightModelState data)? filterFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (fetchPlaceFailed != null) {
      return fetchPlaceFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
    required TResult Function(_OpenAddEditFlightFormSuccess value)
        openAddEditFlightFormSuccess,
    required TResult Function(_DeleteFlightSuccess value) deleteFlightSuccess,
    required TResult Function(_DeleteFlightFailed value) deleteFlightFailed,
    required TResult Function(_UpdateFlightSuccess value) updateFlightSuccess,
    required TResult Function(_GetFlightByPageSuccess value)
        getFlightByPageSuccess,
    required TResult Function(_GetFlightByPageFailed value)
        getFlightPageFFailed,
    required TResult Function(_FilterFlightSuccess value) filterFlightSuccess,
    required TResult Function(_FilterFlightFailed value) filterFlightFailed,
    required TResult Function(_FetchPlaceSuccess value) fetchPlaceSuccess,
    required TResult Function(_FetchPlaceFailed value) fetchPlaceFailed,
    required TResult Function(_FetchAirlineSuccess value) fetchAirlineSuccess,
    required TResult Function(_FetchAirlineFailed value) fetchAirlineFailed,
  }) {
    return fetchPlaceFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult? Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult? Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult? Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult? Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult? Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult? Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult? Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult? Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult? Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult? Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult? Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult? Function(_FetchAirlineFailed value)? fetchAirlineFailed,
  }) {
    return fetchPlaceFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult Function(_FetchAirlineFailed value)? fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (fetchPlaceFailed != null) {
      return fetchPlaceFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchPlaceFailed extends ListFlightState {
  const factory _FetchPlaceFailed(
      {required final ListFlightModelState data,
      required final String message}) = _$_FetchPlaceFailed;
  const _FetchPlaceFailed._() : super._();

  @override
  ListFlightModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_FetchPlaceFailedCopyWith<_$_FetchPlaceFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchAirlineSuccessCopyWith<$Res>
    implements $ListFlightStateCopyWith<$Res> {
  factory _$$_FetchAirlineSuccessCopyWith(_$_FetchAirlineSuccess value,
          $Res Function(_$_FetchAirlineSuccess) then) =
      __$$_FetchAirlineSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListFlightModelState data});

  @override
  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FetchAirlineSuccessCopyWithImpl<$Res>
    extends _$ListFlightStateCopyWithImpl<$Res, _$_FetchAirlineSuccess>
    implements _$$_FetchAirlineSuccessCopyWith<$Res> {
  __$$_FetchAirlineSuccessCopyWithImpl(_$_FetchAirlineSuccess _value,
      $Res Function(_$_FetchAirlineSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_FetchAirlineSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListFlightModelState,
    ));
  }
}

/// @nodoc

class _$_FetchAirlineSuccess extends _FetchAirlineSuccess {
  const _$_FetchAirlineSuccess({required this.data}) : super._();

  @override
  final ListFlightModelState data;

  @override
  String toString() {
    return 'ListFlightState.fetchAirlineSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchAirlineSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchAirlineSuccessCopyWith<_$_FetchAirlineSuccess> get copyWith =>
      __$$_FetchAirlineSuccessCopyWithImpl<_$_FetchAirlineSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
    required TResult Function(ListFlightModelState data, String flightId)
        openAddEditFlightFormSuccess,
    required TResult Function(ListFlightModelState data) deleteFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        deleteFlightFailed,
    required TResult Function(ListFlightModelState data) updateFlightSuccess,
    required TResult Function(ListFlightModelState data) getFlightByPageSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightPageFFailed,
    required TResult Function(ListFlightModelState data) filterFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        filterFlightFailed,
    required TResult Function(ListFlightModelState data) fetchPlaceSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchPlaceFailed,
    required TResult Function(ListFlightModelState data) fetchAirlineSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchAirlineFailed,
  }) {
    return fetchAirlineSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult? Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult? Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult? Function(ListFlightModelState data)? updateFlightSuccess,
    TResult? Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult? Function(ListFlightModelState data)? filterFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult? Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult? Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
  }) {
    return fetchAirlineSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult Function(ListFlightModelState data)? updateFlightSuccess,
    TResult Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult Function(ListFlightModelState data)? filterFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (fetchAirlineSuccess != null) {
      return fetchAirlineSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
    required TResult Function(_OpenAddEditFlightFormSuccess value)
        openAddEditFlightFormSuccess,
    required TResult Function(_DeleteFlightSuccess value) deleteFlightSuccess,
    required TResult Function(_DeleteFlightFailed value) deleteFlightFailed,
    required TResult Function(_UpdateFlightSuccess value) updateFlightSuccess,
    required TResult Function(_GetFlightByPageSuccess value)
        getFlightByPageSuccess,
    required TResult Function(_GetFlightByPageFailed value)
        getFlightPageFFailed,
    required TResult Function(_FilterFlightSuccess value) filterFlightSuccess,
    required TResult Function(_FilterFlightFailed value) filterFlightFailed,
    required TResult Function(_FetchPlaceSuccess value) fetchPlaceSuccess,
    required TResult Function(_FetchPlaceFailed value) fetchPlaceFailed,
    required TResult Function(_FetchAirlineSuccess value) fetchAirlineSuccess,
    required TResult Function(_FetchAirlineFailed value) fetchAirlineFailed,
  }) {
    return fetchAirlineSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult? Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult? Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult? Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult? Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult? Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult? Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult? Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult? Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult? Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult? Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult? Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult? Function(_FetchAirlineFailed value)? fetchAirlineFailed,
  }) {
    return fetchAirlineSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult Function(_FetchAirlineFailed value)? fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (fetchAirlineSuccess != null) {
      return fetchAirlineSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchAirlineSuccess extends ListFlightState {
  const factory _FetchAirlineSuccess(
      {required final ListFlightModelState data}) = _$_FetchAirlineSuccess;
  const _FetchAirlineSuccess._() : super._();

  @override
  ListFlightModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_FetchAirlineSuccessCopyWith<_$_FetchAirlineSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchAirlineFailedCopyWith<$Res>
    implements $ListFlightStateCopyWith<$Res> {
  factory _$$_FetchAirlineFailedCopyWith(_$_FetchAirlineFailed value,
          $Res Function(_$_FetchAirlineFailed) then) =
      __$$_FetchAirlineFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListFlightModelState data, String message});

  @override
  $ListFlightModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FetchAirlineFailedCopyWithImpl<$Res>
    extends _$ListFlightStateCopyWithImpl<$Res, _$_FetchAirlineFailed>
    implements _$$_FetchAirlineFailedCopyWith<$Res> {
  __$$_FetchAirlineFailedCopyWithImpl(
      _$_FetchAirlineFailed _value, $Res Function(_$_FetchAirlineFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_FetchAirlineFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListFlightModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchAirlineFailed extends _FetchAirlineFailed {
  const _$_FetchAirlineFailed({required this.data, required this.message})
      : super._();

  @override
  final ListFlightModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'ListFlightState.fetchAirlineFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchAirlineFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchAirlineFailedCopyWith<_$_FetchAirlineFailed> get copyWith =>
      __$$_FetchAirlineFailedCopyWithImpl<_$_FetchAirlineFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListFlightModelState data) initial,
    required TResult Function(ListFlightModelState data) loading,
    required TResult Function(ListFlightModelState data, String flightId)
        selectListFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        selectListFlightFailed,
    required TResult Function(ListFlightModelState data) getFlightsSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightsFailed,
    required TResult Function(ListFlightModelState data, String flightId)
        openAddEditFlightFormSuccess,
    required TResult Function(ListFlightModelState data) deleteFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        deleteFlightFailed,
    required TResult Function(ListFlightModelState data) updateFlightSuccess,
    required TResult Function(ListFlightModelState data) getFlightByPageSuccess,
    required TResult Function(ListFlightModelState data, String message)
        getFlightPageFFailed,
    required TResult Function(ListFlightModelState data) filterFlightSuccess,
    required TResult Function(ListFlightModelState data, String message)
        filterFlightFailed,
    required TResult Function(ListFlightModelState data) fetchPlaceSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchPlaceFailed,
    required TResult Function(ListFlightModelState data) fetchAirlineSuccess,
    required TResult Function(ListFlightModelState data, String message)
        fetchAirlineFailed,
  }) {
    return fetchAirlineFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListFlightModelState data)? initial,
    TResult? Function(ListFlightModelState data)? loading,
    TResult? Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult? Function(ListFlightModelState data)? getFlightsSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult? Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult? Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult? Function(ListFlightModelState data)? updateFlightSuccess,
    TResult? Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult? Function(ListFlightModelState data)? filterFlightSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult? Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult? Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult? Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
  }) {
    return fetchAirlineFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListFlightModelState data)? initial,
    TResult Function(ListFlightModelState data)? loading,
    TResult Function(ListFlightModelState data, String flightId)?
        selectListFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        selectListFlightFailed,
    TResult Function(ListFlightModelState data)? getFlightsSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightsFailed,
    TResult Function(ListFlightModelState data, String flightId)?
        openAddEditFlightFormSuccess,
    TResult Function(ListFlightModelState data)? deleteFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        deleteFlightFailed,
    TResult Function(ListFlightModelState data)? updateFlightSuccess,
    TResult Function(ListFlightModelState data)? getFlightByPageSuccess,
    TResult Function(ListFlightModelState data, String message)?
        getFlightPageFFailed,
    TResult Function(ListFlightModelState data)? filterFlightSuccess,
    TResult Function(ListFlightModelState data, String message)?
        filterFlightFailed,
    TResult Function(ListFlightModelState data)? fetchPlaceSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchPlaceFailed,
    TResult Function(ListFlightModelState data)? fetchAirlineSuccess,
    TResult Function(ListFlightModelState data, String message)?
        fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (fetchAirlineFailed != null) {
      return fetchAirlineFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListFlightSuccess value)
        selectListFlightSuccess,
    required TResult Function(_SelectListFlightFailed value)
        selectListFlightFailed,
    required TResult Function(_GetFlightsSuccess value) getFlightsSuccess,
    required TResult Function(_GetFlightsFailed value) getFlightsFailed,
    required TResult Function(_OpenAddEditFlightFormSuccess value)
        openAddEditFlightFormSuccess,
    required TResult Function(_DeleteFlightSuccess value) deleteFlightSuccess,
    required TResult Function(_DeleteFlightFailed value) deleteFlightFailed,
    required TResult Function(_UpdateFlightSuccess value) updateFlightSuccess,
    required TResult Function(_GetFlightByPageSuccess value)
        getFlightByPageSuccess,
    required TResult Function(_GetFlightByPageFailed value)
        getFlightPageFFailed,
    required TResult Function(_FilterFlightSuccess value) filterFlightSuccess,
    required TResult Function(_FilterFlightFailed value) filterFlightFailed,
    required TResult Function(_FetchPlaceSuccess value) fetchPlaceSuccess,
    required TResult Function(_FetchPlaceFailed value) fetchPlaceFailed,
    required TResult Function(_FetchAirlineSuccess value) fetchAirlineSuccess,
    required TResult Function(_FetchAirlineFailed value) fetchAirlineFailed,
  }) {
    return fetchAirlineFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult? Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult? Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult? Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult? Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult? Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult? Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult? Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult? Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult? Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult? Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult? Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult? Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult? Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult? Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult? Function(_FetchAirlineFailed value)? fetchAirlineFailed,
  }) {
    return fetchAirlineFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListFlightSuccess value)? selectListFlightSuccess,
    TResult Function(_SelectListFlightFailed value)? selectListFlightFailed,
    TResult Function(_GetFlightsSuccess value)? getFlightsSuccess,
    TResult Function(_GetFlightsFailed value)? getFlightsFailed,
    TResult Function(_OpenAddEditFlightFormSuccess value)?
        openAddEditFlightFormSuccess,
    TResult Function(_DeleteFlightSuccess value)? deleteFlightSuccess,
    TResult Function(_DeleteFlightFailed value)? deleteFlightFailed,
    TResult Function(_UpdateFlightSuccess value)? updateFlightSuccess,
    TResult Function(_GetFlightByPageSuccess value)? getFlightByPageSuccess,
    TResult Function(_GetFlightByPageFailed value)? getFlightPageFFailed,
    TResult Function(_FilterFlightSuccess value)? filterFlightSuccess,
    TResult Function(_FilterFlightFailed value)? filterFlightFailed,
    TResult Function(_FetchPlaceSuccess value)? fetchPlaceSuccess,
    TResult Function(_FetchPlaceFailed value)? fetchPlaceFailed,
    TResult Function(_FetchAirlineSuccess value)? fetchAirlineSuccess,
    TResult Function(_FetchAirlineFailed value)? fetchAirlineFailed,
    required TResult orElse(),
  }) {
    if (fetchAirlineFailed != null) {
      return fetchAirlineFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchAirlineFailed extends ListFlightState {
  const factory _FetchAirlineFailed(
      {required final ListFlightModelState data,
      required final String message}) = _$_FetchAirlineFailed;
  const _FetchAirlineFailed._() : super._();

  @override
  ListFlightModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_FetchAirlineFailedCopyWith<_$_FetchAirlineFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
