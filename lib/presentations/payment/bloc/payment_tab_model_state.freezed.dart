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
  Airport? get airport => throw _privateConstructorUsedError;
  Customer? get customer => throw _privateConstructorUsedError;

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
  $Res call({Flight? flight, Airport? airport, Customer? customer});

  $FlightCopyWith<$Res>? get flight;
  $AirportCopyWith<$Res>? get airport;
  $CustomerCopyWith<$Res>? get customer;
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
    Object? airport = freezed,
    Object? customer = freezed,
  }) {
    return _then(_value.copyWith(
      flight: freezed == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as Flight?,
      airport: freezed == airport
          ? _value.airport
          : airport // ignore: cast_nullable_to_non_nullable
              as Airport?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
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
  $AirportCopyWith<$Res>? get airport {
    if (_value.airport == null) {
      return null;
    }

    return $AirportCopyWith<$Res>(_value.airport!, (value) {
      return _then(_value.copyWith(airport: value) as $Val);
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
}

/// @nodoc
abstract class _$$_PaymentTabModelStateCopyWith<$Res>
    implements $PaymentTabModelStateCopyWith<$Res> {
  factory _$$_PaymentTabModelStateCopyWith(_$_PaymentTabModelState value,
          $Res Function(_$_PaymentTabModelState) then) =
      __$$_PaymentTabModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Flight? flight, Airport? airport, Customer? customer});

  @override
  $FlightCopyWith<$Res>? get flight;
  @override
  $AirportCopyWith<$Res>? get airport;
  @override
  $CustomerCopyWith<$Res>? get customer;
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
    Object? airport = freezed,
    Object? customer = freezed,
  }) {
    return _then(_$_PaymentTabModelState(
      flight: freezed == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as Flight?,
      airport: freezed == airport
          ? _value.airport
          : airport // ignore: cast_nullable_to_non_nullable
              as Airport?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
    ));
  }
}

/// @nodoc

class _$_PaymentTabModelState implements _PaymentTabModelState {
  const _$_PaymentTabModelState({this.flight, this.airport, this.customer});

  @override
  final Flight? flight;
  @override
  final Airport? airport;
  @override
  final Customer? customer;

  @override
  String toString() {
    return 'PaymentTabModelState(flight: $flight, airport: $airport, customer: $customer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentTabModelState &&
            (identical(other.flight, flight) || other.flight == flight) &&
            (identical(other.airport, airport) || other.airport == airport) &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flight, airport, customer);

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
      final Airport? airport,
      final Customer? customer}) = _$_PaymentTabModelState;

  @override
  Flight? get flight;
  @override
  Airport? get airport;
  @override
  Customer? get customer;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentTabModelStateCopyWith<_$_PaymentTabModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
