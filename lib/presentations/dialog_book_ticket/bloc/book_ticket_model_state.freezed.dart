// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_ticket_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BTModelState {
  Customer? get customerSelected => throw _privateConstructorUsedError;
  Flight? get flight => throw _privateConstructorUsedError;
  int get indexView => throw _privateConstructorUsedError;
  List<Customer> get customers => throw _privateConstructorUsedError;
  List<SeatSelected> get chairsSelected => throw _privateConstructorUsedError;
  List<TicketInformation> get ticInformation =>
      throw _privateConstructorUsedError;
  List<Ticket> get tics => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BTModelStateCopyWith<BTModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BTModelStateCopyWith<$Res> {
  factory $BTModelStateCopyWith(
          BTModelState value, $Res Function(BTModelState) then) =
      _$BTModelStateCopyWithImpl<$Res, BTModelState>;
  @useResult
  $Res call(
      {Customer? customerSelected,
      Flight? flight,
      int indexView,
      List<Customer> customers,
      List<SeatSelected> chairsSelected,
      List<TicketInformation> ticInformation,
      List<Ticket> tics});

  $CustomerCopyWith<$Res>? get customerSelected;
  $FlightCopyWith<$Res>? get flight;
}

/// @nodoc
class _$BTModelStateCopyWithImpl<$Res, $Val extends BTModelState>
    implements $BTModelStateCopyWith<$Res> {
  _$BTModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerSelected = freezed,
    Object? flight = freezed,
    Object? indexView = null,
    Object? customers = null,
    Object? chairsSelected = null,
    Object? ticInformation = null,
    Object? tics = null,
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
      indexView: null == indexView
          ? _value.indexView
          : indexView // ignore: cast_nullable_to_non_nullable
              as int,
      customers: null == customers
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
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
abstract class _$$_BTModelStateCopyWith<$Res>
    implements $BTModelStateCopyWith<$Res> {
  factory _$$_BTModelStateCopyWith(
          _$_BTModelState value, $Res Function(_$_BTModelState) then) =
      __$$_BTModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Customer? customerSelected,
      Flight? flight,
      int indexView,
      List<Customer> customers,
      List<SeatSelected> chairsSelected,
      List<TicketInformation> ticInformation,
      List<Ticket> tics});

  @override
  $CustomerCopyWith<$Res>? get customerSelected;
  @override
  $FlightCopyWith<$Res>? get flight;
}

/// @nodoc
class __$$_BTModelStateCopyWithImpl<$Res>
    extends _$BTModelStateCopyWithImpl<$Res, _$_BTModelState>
    implements _$$_BTModelStateCopyWith<$Res> {
  __$$_BTModelStateCopyWithImpl(
      _$_BTModelState _value, $Res Function(_$_BTModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerSelected = freezed,
    Object? flight = freezed,
    Object? indexView = null,
    Object? customers = null,
    Object? chairsSelected = null,
    Object? ticInformation = null,
    Object? tics = null,
  }) {
    return _then(_$_BTModelState(
      customerSelected: freezed == customerSelected
          ? _value.customerSelected
          : customerSelected // ignore: cast_nullable_to_non_nullable
              as Customer?,
      flight: freezed == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as Flight?,
      indexView: null == indexView
          ? _value.indexView
          : indexView // ignore: cast_nullable_to_non_nullable
              as int,
      customers: null == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
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
    ));
  }
}

/// @nodoc

class _$_BTModelState implements _BTModelState {
  const _$_BTModelState(
      {this.customerSelected,
      this.flight,
      required this.indexView,
      required final List<Customer> customers,
      required final List<SeatSelected> chairsSelected,
      required final List<TicketInformation> ticInformation,
      required final List<Ticket> tics})
      : _customers = customers,
        _chairsSelected = chairsSelected,
        _ticInformation = ticInformation,
        _tics = tics;

  @override
  final Customer? customerSelected;
  @override
  final Flight? flight;
  @override
  final int indexView;
  final List<Customer> _customers;
  @override
  List<Customer> get customers {
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customers);
  }

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

  @override
  String toString() {
    return 'BTModelState(customerSelected: $customerSelected, flight: $flight, indexView: $indexView, customers: $customers, chairsSelected: $chairsSelected, ticInformation: $ticInformation, tics: $tics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BTModelState &&
            (identical(other.customerSelected, customerSelected) ||
                other.customerSelected == customerSelected) &&
            (identical(other.flight, flight) || other.flight == flight) &&
            (identical(other.indexView, indexView) ||
                other.indexView == indexView) &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers) &&
            const DeepCollectionEquality()
                .equals(other._chairsSelected, _chairsSelected) &&
            const DeepCollectionEquality()
                .equals(other._ticInformation, _ticInformation) &&
            const DeepCollectionEquality().equals(other._tics, _tics));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      customerSelected,
      flight,
      indexView,
      const DeepCollectionEquality().hash(_customers),
      const DeepCollectionEquality().hash(_chairsSelected),
      const DeepCollectionEquality().hash(_ticInformation),
      const DeepCollectionEquality().hash(_tics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BTModelStateCopyWith<_$_BTModelState> get copyWith =>
      __$$_BTModelStateCopyWithImpl<_$_BTModelState>(this, _$identity);
}

abstract class _BTModelState implements BTModelState {
  const factory _BTModelState(
      {final Customer? customerSelected,
      final Flight? flight,
      required final int indexView,
      required final List<Customer> customers,
      required final List<SeatSelected> chairsSelected,
      required final List<TicketInformation> ticInformation,
      required final List<Ticket> tics}) = _$_BTModelState;

  @override
  Customer? get customerSelected;
  @override
  Flight? get flight;
  @override
  int get indexView;
  @override
  List<Customer> get customers;
  @override
  List<SeatSelected> get chairsSelected;
  @override
  List<TicketInformation> get ticInformation;
  @override
  List<Ticket> get tics;
  @override
  @JsonKey(ignore: true)
  _$$_BTModelStateCopyWith<_$_BTModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
