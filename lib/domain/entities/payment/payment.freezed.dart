// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return _Payment.fromJson(json);
}

/// @nodoc
mixin _$Payment {
  String get id => throw _privateConstructorUsedError;
  int get createDate => throw _privateConstructorUsedError;
  PaymentType get paymentType => throw _privateConstructorUsedError;
  PaymentStatus get paymentStatus => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  Customer? get customer => throw _privateConstructorUsedError;
  List<Ticket> get tickets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res, Payment>;
  @useResult
  $Res call(
      {String id,
      int createDate,
      PaymentType paymentType,
      PaymentStatus paymentStatus,
      double total,
      Customer? customer,
      List<Ticket> tickets});

  $CustomerCopyWith<$Res>? get customer;
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res, $Val extends Payment>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createDate = null,
    Object? paymentType = null,
    Object? paymentStatus = null,
    Object? total = null,
    Object? customer = freezed,
    Object? tickets = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as int,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentType,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      tickets: null == tickets
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
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
}

/// @nodoc
abstract class _$$_PaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$$_PaymentCopyWith(
          _$_Payment value, $Res Function(_$_Payment) then) =
      __$$_PaymentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int createDate,
      PaymentType paymentType,
      PaymentStatus paymentStatus,
      double total,
      Customer? customer,
      List<Ticket> tickets});

  @override
  $CustomerCopyWith<$Res>? get customer;
}

/// @nodoc
class __$$_PaymentCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$_Payment>
    implements _$$_PaymentCopyWith<$Res> {
  __$$_PaymentCopyWithImpl(_$_Payment _value, $Res Function(_$_Payment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createDate = null,
    Object? paymentType = null,
    Object? paymentStatus = null,
    Object? total = null,
    Object? customer = freezed,
    Object? tickets = null,
  }) {
    return _then(_$_Payment(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as int,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentType,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Payment extends _Payment {
  const _$_Payment(
      {this.id = "",
      this.createDate = 0,
      this.paymentType = PaymentType.cash,
      this.paymentStatus = PaymentStatus.create,
      this.total = 0,
      this.customer = null,
      final List<Ticket> tickets = const []})
      : _tickets = tickets,
        super._();

  factory _$_Payment.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final int createDate;
  @override
  @JsonKey()
  final PaymentType paymentType;
  @override
  @JsonKey()
  final PaymentStatus paymentStatus;
  @override
  @JsonKey()
  final double total;
  @override
  @JsonKey()
  final Customer? customer;
  final List<Ticket> _tickets;
  @override
  @JsonKey()
  List<Ticket> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  String toString() {
    return 'Payment(id: $id, createDate: $createDate, paymentType: $paymentType, paymentStatus: $paymentStatus, total: $total, customer: $customer, tickets: $tickets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Payment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            const DeepCollectionEquality().equals(other._tickets, _tickets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createDate,
      paymentType,
      paymentStatus,
      total,
      customer,
      const DeepCollectionEquality().hash(_tickets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentCopyWith<_$_Payment> get copyWith =>
      __$$_PaymentCopyWithImpl<_$_Payment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentToJson(
      this,
    );
  }
}

abstract class _Payment extends Payment {
  const factory _Payment(
      {final String id,
      final int createDate,
      final PaymentType paymentType,
      final PaymentStatus paymentStatus,
      final double total,
      final Customer? customer,
      final List<Ticket> tickets}) = _$_Payment;
  const _Payment._() : super._();

  factory _Payment.fromJson(Map<String, dynamic> json) = _$_Payment.fromJson;

  @override
  String get id;
  @override
  int get createDate;
  @override
  PaymentType get paymentType;
  @override
  PaymentStatus get paymentStatus;
  @override
  double get total;
  @override
  Customer? get customer;
  @override
  List<Ticket> get tickets;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentCopyWith<_$_Payment> get copyWith =>
      throw _privateConstructorUsedError;
}
