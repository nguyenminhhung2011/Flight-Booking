// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentItem {
  String get id => throw _privateConstructorUsedError;
  int get createDate => throw _privateConstructorUsedError;
  PaymentType get paymentType => throw _privateConstructorUsedError;
  PaymentStatus get paymentStatus => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  Customer? get customer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentItemCopyWith<PaymentItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentItemCopyWith<$Res> {
  factory $PaymentItemCopyWith(
          PaymentItem value, $Res Function(PaymentItem) then) =
      _$PaymentItemCopyWithImpl<$Res, PaymentItem>;
  @useResult
  $Res call(
      {String id,
      int createDate,
      PaymentType paymentType,
      PaymentStatus paymentStatus,
      double total,
      Customer? customer});

  $CustomerCopyWith<$Res>? get customer;
}

/// @nodoc
class _$PaymentItemCopyWithImpl<$Res, $Val extends PaymentItem>
    implements $PaymentItemCopyWith<$Res> {
  _$PaymentItemCopyWithImpl(this._value, this._then);

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
abstract class _$$_PaymentItemCopyWith<$Res>
    implements $PaymentItemCopyWith<$Res> {
  factory _$$_PaymentItemCopyWith(
          _$_PaymentItem value, $Res Function(_$_PaymentItem) then) =
      __$$_PaymentItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int createDate,
      PaymentType paymentType,
      PaymentStatus paymentStatus,
      double total,
      Customer? customer});

  @override
  $CustomerCopyWith<$Res>? get customer;
}

/// @nodoc
class __$$_PaymentItemCopyWithImpl<$Res>
    extends _$PaymentItemCopyWithImpl<$Res, _$_PaymentItem>
    implements _$$_PaymentItemCopyWith<$Res> {
  __$$_PaymentItemCopyWithImpl(
      _$_PaymentItem _value, $Res Function(_$_PaymentItem) _then)
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
  }) {
    return _then(_$_PaymentItem(
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
    ));
  }
}

/// @nodoc

class _$_PaymentItem implements _PaymentItem {
  const _$_PaymentItem(
      {this.id = "",
      this.createDate = 0,
      this.paymentType = PaymentType.cash,
      this.paymentStatus = PaymentStatus.create,
      this.total = 0,
      this.customer = null});

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

  @override
  String toString() {
    return 'PaymentItem(id: $id, createDate: $createDate, paymentType: $paymentType, paymentStatus: $paymentStatus, total: $total, customer: $customer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, createDate, paymentType, paymentStatus, total, customer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentItemCopyWith<_$_PaymentItem> get copyWith =>
      __$$_PaymentItemCopyWithImpl<_$_PaymentItem>(this, _$identity);
}

abstract class _PaymentItem implements PaymentItem {
  const factory _PaymentItem(
      {final String id,
      final int createDate,
      final PaymentType paymentType,
      final PaymentStatus paymentStatus,
      final double total,
      final Customer? customer}) = _$_PaymentItem;

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
  @JsonKey(ignore: true)
  _$$_PaymentItemCopyWith<_$_PaymentItem> get copyWith =>
      throw _privateConstructorUsedError;
}
