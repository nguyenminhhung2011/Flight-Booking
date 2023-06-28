// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_tab_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentTabModelState {
  Flight? get flight => throw _privateConstructorUsedError;
  Customer? get customer => throw _privateConstructorUsedError;
  Payment? get payment => throw _privateConstructorUsedError;
  Map<int, TicketInformation>? get ticInformation =>
      throw _privateConstructorUsedError;
  List<Ticket> get tics => throw _privateConstructorUsedError;
  Map<String, double> get priceSummary => throw _privateConstructorUsedError;
  int get customerIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentTabModelStateCopyWith<PaymentTabModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTabModelStateCopyWith<$Res> {
  factory $PaymentTabModelStateCopyWith(PaymentTabModelState value,
          $Res Function(PaymentTabModelState) then) =
      _$PaymentTabModelStateCopyWithImpl<$Res, PaymentTabModelState>;
  @useResult
  $Res call(
      {Flight? flight,
      Customer? customer,
      Payment? payment,
      Map<int, TicketInformation>? ticInformation,
      List<Ticket> tics,
      Map<String, double> priceSummary,
      int customerIndex});

  $FlightCopyWith<$Res>? get flight;
  $CustomerCopyWith<$Res>? get customer;
  $PaymentCopyWith<$Res>? get payment;
}

/// @nodoc
class _$PaymentTabModelStateCopyWithImpl<$Res,
        $Val extends PaymentTabModelState>
    implements $PaymentTabModelStateCopyWith<$Res> {
  _$PaymentTabModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flight = freezed,
    Object? customer = freezed,
    Object? payment = freezed,
    Object? ticInformation = freezed,
    Object? tics = null,
    Object? priceSummary = null,
    Object? customerIndex = null,
  }) {
    return _then(_value.copyWith(
      flight: freezed == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as Flight?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment?,
      ticInformation: freezed == ticInformation
          ? _value.ticInformation
          : ticInformation // ignore: cast_nullable_to_non_nullable
              as Map<int, TicketInformation>?,
      tics: null == tics
          ? _value.tics
          : tics // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      priceSummary: null == priceSummary
          ? _value.priceSummary
          : priceSummary // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      customerIndex: null == customerIndex
          ? _value.customerIndex
          : customerIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
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

  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $CustomerCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentCopyWith<$Res>? get payment {
    if (_value.payment == null) {
      return null;
    }

    return $PaymentCopyWith<$Res>(_value.payment!, (value) {
      return _then(_value.copyWith(payment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PaymentTabModelStateCopyWith<$Res>
    implements $PaymentTabModelStateCopyWith<$Res> {
  factory _$$_PaymentTabModelStateCopyWith(_$_PaymentTabModelState value,
          $Res Function(_$_PaymentTabModelState) then) =
      __$$_PaymentTabModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Flight? flight,
      Customer? customer,
      Payment? payment,
      Map<int, TicketInformation>? ticInformation,
      List<Ticket> tics,
      Map<String, double> priceSummary,
      int customerIndex});

  @override
  $FlightCopyWith<$Res>? get flight;
  @override
  $CustomerCopyWith<$Res>? get customer;
  @override
  $PaymentCopyWith<$Res>? get payment;
}

/// @nodoc
class __$$_PaymentTabModelStateCopyWithImpl<$Res>
    extends _$PaymentTabModelStateCopyWithImpl<$Res, _$_PaymentTabModelState>
    implements _$$_PaymentTabModelStateCopyWith<$Res> {
  __$$_PaymentTabModelStateCopyWithImpl(_$_PaymentTabModelState _value,
      $Res Function(_$_PaymentTabModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flight = freezed,
    Object? customer = freezed,
    Object? payment = freezed,
    Object? ticInformation = freezed,
    Object? tics = null,
    Object? priceSummary = null,
    Object? customerIndex = null,
  }) {
    return _then(_$_PaymentTabModelState(
      flight: freezed == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as Flight?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment?,
      ticInformation: freezed == ticInformation
          ? _value._ticInformation
          : ticInformation // ignore: cast_nullable_to_non_nullable
              as Map<int, TicketInformation>?,
      tics: null == tics
          ? _value._tics
          : tics // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      priceSummary: null == priceSummary
          ? _value._priceSummary
          : priceSummary // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      customerIndex: null == customerIndex
          ? _value.customerIndex
          : customerIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PaymentTabModelState implements _PaymentTabModelState {
  const _$_PaymentTabModelState(
      {this.flight,
      this.customer,
      this.payment,
      final Map<int, TicketInformation>? ticInformation,
      required final List<Ticket> tics,
      required final Map<String, double> priceSummary,
      required this.customerIndex})
      : _ticInformation = ticInformation,
        _tics = tics,
        _priceSummary = priceSummary;

  @override
  final Flight? flight;
  @override
  final Customer? customer;
  @override
  final Payment? payment;
  final Map<int, TicketInformation>? _ticInformation;
  @override
  Map<int, TicketInformation>? get ticInformation {
    final value = _ticInformation;
    if (value == null) return null;
    if (_ticInformation is EqualUnmodifiableMapView) return _ticInformation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<Ticket> _tics;
  @override
  List<Ticket> get tics {
    if (_tics is EqualUnmodifiableListView) return _tics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tics);
  }

  final Map<String, double> _priceSummary;
  @override
  Map<String, double> get priceSummary {
    if (_priceSummary is EqualUnmodifiableMapView) return _priceSummary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_priceSummary);
  }

  @override
  final int customerIndex;

  @override
  String toString() {
    return 'PaymentTabModelState(flight: $flight, customer: $customer, payment: $payment, ticInformation: $ticInformation, tics: $tics, priceSummary: $priceSummary, customerIndex: $customerIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentTabModelState &&
            (identical(other.flight, flight) || other.flight == flight) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            const DeepCollectionEquality()
                .equals(other._ticInformation, _ticInformation) &&
            const DeepCollectionEquality().equals(other._tics, _tics) &&
            const DeepCollectionEquality()
                .equals(other._priceSummary, _priceSummary) &&
            (identical(other.customerIndex, customerIndex) ||
                other.customerIndex == customerIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      flight,
      customer,
      payment,
      const DeepCollectionEquality().hash(_ticInformation),
      const DeepCollectionEquality().hash(_tics),
      const DeepCollectionEquality().hash(_priceSummary),
      customerIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentTabModelStateCopyWith<_$_PaymentTabModelState> get copyWith =>
      __$$_PaymentTabModelStateCopyWithImpl<_$_PaymentTabModelState>(
          this, _$identity);
}

abstract class _PaymentTabModelState implements PaymentTabModelState {
  const factory _PaymentTabModelState(
      {final Flight? flight,
      final Customer? customer,
      final Payment? payment,
      final Map<int, TicketInformation>? ticInformation,
      required final List<Ticket> tics,
      required final Map<String, double> priceSummary,
      required final int customerIndex}) = _$_PaymentTabModelState;

  @override
  Flight? get flight;
  @override
  Customer? get customer;
  @override
  Payment? get payment;
  @override
  Map<int, TicketInformation>? get ticInformation;
  @override
  List<Ticket> get tics;
  @override
  Map<String, double> get priceSummary;
  @override
  int get customerIndex;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentTabModelStateCopyWith<_$_PaymentTabModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
