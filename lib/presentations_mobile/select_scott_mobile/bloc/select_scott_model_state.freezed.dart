// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_scott_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectScottModelState {
  Customer? get customerSelected => throw _privateConstructorUsedError;
  Flight? get flight => throw _privateConstructorUsedError;
  SeatSelected? get currentSeat => throw _privateConstructorUsedError;
  int get tab => throw _privateConstructorUsedError;
  int get selectCustomer => throw _privateConstructorUsedError;
  List<SeatSelected> get chairsSelected => throw _privateConstructorUsedError;
  List<TicketInformation> get ticInformation =>
      throw _privateConstructorUsedError;
  List<Ticket> get tics => throw _privateConstructorUsedError;
  List<Ticket> get redTics => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectScottModelStateCopyWith<SelectScottModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectScottModelStateCopyWith<$Res> {
  factory $SelectScottModelStateCopyWith(SelectScottModelState value,
          $Res Function(SelectScottModelState) then) =
      _$SelectScottModelStateCopyWithImpl<$Res, SelectScottModelState>;
  @useResult
  $Res call(
      {Customer? customerSelected,
      Flight? flight,
      SeatSelected? currentSeat,
      int tab,
      int selectCustomer,
      List<SeatSelected> chairsSelected,
      List<TicketInformation> ticInformation,
      List<Ticket> tics,
      List<Ticket> redTics});

  $CustomerCopyWith<$Res>? get customerSelected;
  $FlightCopyWith<$Res>? get flight;
}

/// @nodoc
class _$SelectScottModelStateCopyWithImpl<$Res,
        $Val extends SelectScottModelState>
    implements $SelectScottModelStateCopyWith<$Res> {
  _$SelectScottModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerSelected = freezed,
    Object? flight = freezed,
    Object? currentSeat = freezed,
    Object? tab = null,
    Object? selectCustomer = null,
    Object? chairsSelected = null,
    Object? ticInformation = null,
    Object? tics = null,
    Object? redTics = null,
  }) {
    return _then(_value.copyWith(
      customerSelected: freezed == customerSelected
          ? _value.customerSelected
          : customerSelected // ignore: cast_nullable_to_non_nullable
              as Customer?,
      flight: freezed == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as Flight?,
      currentSeat: freezed == currentSeat
          ? _value.currentSeat
          : currentSeat // ignore: cast_nullable_to_non_nullable
              as SeatSelected?,
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as int,
      selectCustomer: null == selectCustomer
          ? _value.selectCustomer
          : selectCustomer // ignore: cast_nullable_to_non_nullable
              as int,
      chairsSelected: null == chairsSelected
          ? _value.chairsSelected
          : chairsSelected // ignore: cast_nullable_to_non_nullable
              as List<SeatSelected>,
      ticInformation: null == ticInformation
          ? _value.ticInformation
          : ticInformation // ignore: cast_nullable_to_non_nullable
              as List<TicketInformation>,
      tics: null == tics
          ? _value.tics
          : tics // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      redTics: null == redTics
          ? _value.redTics
          : redTics // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res>? get customerSelected {
    if (_value.customerSelected == null) {
      return null;
    }

    return $CustomerCopyWith<$Res>(_value.customerSelected!, (value) {
      return _then(_value.copyWith(customerSelected: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FlightCopyWith<$Res>? get flight {
    if (_value.flight == null) {
      return null;
    }

    return $FlightCopyWith<$Res>(_value.flight!, (value) {
      return _then(_value.copyWith(flight: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SelectScottModelStateCopyWith<$Res>
    implements $SelectScottModelStateCopyWith<$Res> {
  factory _$$_SelectScottModelStateCopyWith(_$_SelectScottModelState value,
          $Res Function(_$_SelectScottModelState) then) =
      __$$_SelectScottModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Customer? customerSelected,
      Flight? flight,
      SeatSelected? currentSeat,
      int tab,
      int selectCustomer,
      List<SeatSelected> chairsSelected,
      List<TicketInformation> ticInformation,
      List<Ticket> tics,
      List<Ticket> redTics});

  @override
  $CustomerCopyWith<$Res>? get customerSelected;
  @override
  $FlightCopyWith<$Res>? get flight;
}

/// @nodoc
class __$$_SelectScottModelStateCopyWithImpl<$Res>
    extends _$SelectScottModelStateCopyWithImpl<$Res, _$_SelectScottModelState>
    implements _$$_SelectScottModelStateCopyWith<$Res> {
  __$$_SelectScottModelStateCopyWithImpl(_$_SelectScottModelState _value,
      $Res Function(_$_SelectScottModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerSelected = freezed,
    Object? flight = freezed,
    Object? currentSeat = freezed,
    Object? tab = null,
    Object? selectCustomer = null,
    Object? chairsSelected = null,
    Object? ticInformation = null,
    Object? tics = null,
    Object? redTics = null,
  }) {
    return _then(_$_SelectScottModelState(
      customerSelected: freezed == customerSelected
          ? _value.customerSelected
          : customerSelected // ignore: cast_nullable_to_non_nullable
              as Customer?,
      flight: freezed == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as Flight?,
      currentSeat: freezed == currentSeat
          ? _value.currentSeat
          : currentSeat // ignore: cast_nullable_to_non_nullable
              as SeatSelected?,
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as int,
      selectCustomer: null == selectCustomer
          ? _value.selectCustomer
          : selectCustomer // ignore: cast_nullable_to_non_nullable
              as int,
      chairsSelected: null == chairsSelected
          ? _value._chairsSelected
          : chairsSelected // ignore: cast_nullable_to_non_nullable
              as List<SeatSelected>,
      ticInformation: null == ticInformation
          ? _value._ticInformation
          : ticInformation // ignore: cast_nullable_to_non_nullable
              as List<TicketInformation>,
      tics: null == tics
          ? _value._tics
          : tics // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      redTics: null == redTics
          ? _value._redTics
          : redTics // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
    ));
  }
}

/// @nodoc

class _$_SelectScottModelState implements _SelectScottModelState {
  const _$_SelectScottModelState(
      {this.customerSelected,
      this.flight,
      this.currentSeat,
      required this.tab,
      required this.selectCustomer,
      required final List<SeatSelected> chairsSelected,
      required final List<TicketInformation> ticInformation,
      required final List<Ticket> tics,
      required final List<Ticket> redTics})
      : _chairsSelected = chairsSelected,
        _ticInformation = ticInformation,
        _tics = tics,
        _redTics = redTics;

  @override
  final Customer? customerSelected;
  @override
  final Flight? flight;
  @override
  final SeatSelected? currentSeat;
  @override
  final int tab;
  @override
  final int selectCustomer;
  final List<SeatSelected> _chairsSelected;
  @override
  List<SeatSelected> get chairsSelected {
    if (_chairsSelected is EqualUnmodifiableListView) return _chairsSelected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chairsSelected);
  }

  final List<TicketInformation> _ticInformation;
  @override
  List<TicketInformation> get ticInformation {
    if (_ticInformation is EqualUnmodifiableListView) return _ticInformation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ticInformation);
  }

  final List<Ticket> _tics;
  @override
  List<Ticket> get tics {
    if (_tics is EqualUnmodifiableListView) return _tics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tics);
  }

  final List<Ticket> _redTics;
  @override
  List<Ticket> get redTics {
    if (_redTics is EqualUnmodifiableListView) return _redTics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_redTics);
  }

  @override
  String toString() {
    return 'SelectScottModelState(customerSelected: $customerSelected, flight: $flight, currentSeat: $currentSeat, tab: $tab, selectCustomer: $selectCustomer, chairsSelected: $chairsSelected, ticInformation: $ticInformation, tics: $tics, redTics: $redTics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectScottModelState &&
            (identical(other.customerSelected, customerSelected) ||
                other.customerSelected == customerSelected) &&
            (identical(other.flight, flight) || other.flight == flight) &&
            (identical(other.currentSeat, currentSeat) ||
                other.currentSeat == currentSeat) &&
            (identical(other.tab, tab) || other.tab == tab) &&
            (identical(other.selectCustomer, selectCustomer) ||
                other.selectCustomer == selectCustomer) &&
            const DeepCollectionEquality()
                .equals(other._chairsSelected, _chairsSelected) &&
            const DeepCollectionEquality()
                .equals(other._ticInformation, _ticInformation) &&
            const DeepCollectionEquality().equals(other._tics, _tics) &&
            const DeepCollectionEquality().equals(other._redTics, _redTics));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      customerSelected,
      flight,
      currentSeat,
      tab,
      selectCustomer,
      const DeepCollectionEquality().hash(_chairsSelected),
      const DeepCollectionEquality().hash(_ticInformation),
      const DeepCollectionEquality().hash(_tics),
      const DeepCollectionEquality().hash(_redTics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectScottModelStateCopyWith<_$_SelectScottModelState> get copyWith =>
      __$$_SelectScottModelStateCopyWithImpl<_$_SelectScottModelState>(
          this, _$identity);
}

abstract class _SelectScottModelState implements SelectScottModelState {
  const factory _SelectScottModelState(
      {final Customer? customerSelected,
      final Flight? flight,
      final SeatSelected? currentSeat,
      required final int tab,
      required final int selectCustomer,
      required final List<SeatSelected> chairsSelected,
      required final List<TicketInformation> ticInformation,
      required final List<Ticket> tics,
      required final List<Ticket> redTics}) = _$_SelectScottModelState;

  @override
  Customer? get customerSelected;
  @override
  Flight? get flight;
  @override
  SeatSelected? get currentSeat;
  @override
  int get tab;
  @override
  int get selectCustomer;
  @override
  List<SeatSelected> get chairsSelected;
  @override
  List<TicketInformation> get ticInformation;
  @override
  List<Ticket> get tics;
  @override
  List<Ticket> get redTics;
  @override
  @JsonKey(ignore: true)
  _$$_SelectScottModelStateCopyWith<_$_SelectScottModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
