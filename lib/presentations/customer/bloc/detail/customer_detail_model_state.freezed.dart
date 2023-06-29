// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_detail_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerDetailModelState {
  Customer? get customer => throw _privateConstructorUsedError;
  PaymentDetailItem? get payment => throw _privateConstructorUsedError;
  List<TicketInformation> get ticInformation =>
      throw _privateConstructorUsedError;
  List<PaymentItem> get payments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerDetailModelStateCopyWith<CustomerDetailModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDetailModelStateCopyWith<$Res> {
  factory $CustomerDetailModelStateCopyWith(CustomerDetailModelState value,
          $Res Function(CustomerDetailModelState) then) =
      _$CustomerDetailModelStateCopyWithImpl<$Res, CustomerDetailModelState>;
  @useResult
  $Res call(
      {Customer? customer,
      PaymentDetailItem? payment,
      List<TicketInformation> ticInformation,
      List<PaymentItem> payments});

  $CustomerCopyWith<$Res>? get customer;
  $PaymentDetailItemCopyWith<$Res>? get payment;
}

/// @nodoc
class _$CustomerDetailModelStateCopyWithImpl<$Res,
        $Val extends CustomerDetailModelState>
    implements $CustomerDetailModelStateCopyWith<$Res> {
  _$CustomerDetailModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = freezed,
    Object? payment = freezed,
    Object? ticInformation = null,
    Object? payments = null,
  }) {
    return _then(_value.copyWith(
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as PaymentDetailItem?,
      ticInformation: null == ticInformation
          ? _value.ticInformation
          : ticInformation // ignore: cast_nullable_to_non_nullable
              as List<TicketInformation>,
      payments: null == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentItem>,
    ) as $Val);
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
  $PaymentDetailItemCopyWith<$Res>? get payment {
    if (_value.payment == null) {
      return null;
    }

    return $PaymentDetailItemCopyWith<$Res>(_value.payment!, (value) {
      return _then(_value.copyWith(payment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CustomerDetailModelStateCopyWith<$Res>
    implements $CustomerDetailModelStateCopyWith<$Res> {
  factory _$$_CustomerDetailModelStateCopyWith(
          _$_CustomerDetailModelState value,
          $Res Function(_$_CustomerDetailModelState) then) =
      __$$_CustomerDetailModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Customer? customer,
      PaymentDetailItem? payment,
      List<TicketInformation> ticInformation,
      List<PaymentItem> payments});

  @override
  $CustomerCopyWith<$Res>? get customer;
  @override
  $PaymentDetailItemCopyWith<$Res>? get payment;
}

/// @nodoc
class __$$_CustomerDetailModelStateCopyWithImpl<$Res>
    extends _$CustomerDetailModelStateCopyWithImpl<$Res,
        _$_CustomerDetailModelState>
    implements _$$_CustomerDetailModelStateCopyWith<$Res> {
  __$$_CustomerDetailModelStateCopyWithImpl(_$_CustomerDetailModelState _value,
      $Res Function(_$_CustomerDetailModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = freezed,
    Object? payment = freezed,
    Object? ticInformation = null,
    Object? payments = null,
  }) {
    return _then(_$_CustomerDetailModelState(
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as PaymentDetailItem?,
      ticInformation: null == ticInformation
          ? _value._ticInformation
          : ticInformation // ignore: cast_nullable_to_non_nullable
              as List<TicketInformation>,
      payments: null == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentItem>,
    ));
  }
}

/// @nodoc

class _$_CustomerDetailModelState implements _CustomerDetailModelState {
  const _$_CustomerDetailModelState(
      {this.customer,
      this.payment,
      required final List<TicketInformation> ticInformation,
      required final List<PaymentItem> payments})
      : _ticInformation = ticInformation,
        _payments = payments;

  @override
  final Customer? customer;
  @override
  final PaymentDetailItem? payment;
  final List<TicketInformation> _ticInformation;
  @override
  List<TicketInformation> get ticInformation {
    if (_ticInformation is EqualUnmodifiableListView) return _ticInformation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ticInformation);
  }

  final List<PaymentItem> _payments;
  @override
  List<PaymentItem> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  @override
  String toString() {
    return 'CustomerDetailModelState(customer: $customer, payment: $payment, ticInformation: $ticInformation, payments: $payments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerDetailModelState &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            const DeepCollectionEquality()
                .equals(other._ticInformation, _ticInformation) &&
            const DeepCollectionEquality().equals(other._payments, _payments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      customer,
      payment,
      const DeepCollectionEquality().hash(_ticInformation),
      const DeepCollectionEquality().hash(_payments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerDetailModelStateCopyWith<_$_CustomerDetailModelState>
      get copyWith => __$$_CustomerDetailModelStateCopyWithImpl<
          _$_CustomerDetailModelState>(this, _$identity);
}

abstract class _CustomerDetailModelState implements CustomerDetailModelState {
  const factory _CustomerDetailModelState(
      {final Customer? customer,
      final PaymentDetailItem? payment,
      required final List<TicketInformation> ticInformation,
      required final List<PaymentItem> payments}) = _$_CustomerDetailModelState;

  @override
  Customer? get customer;
  @override
  PaymentDetailItem? get payment;
  @override
  List<TicketInformation> get ticInformation;
  @override
  List<PaymentItem> get payments;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerDetailModelStateCopyWith<_$_CustomerDetailModelState>
      get copyWith => throw _privateConstructorUsedError;
}
