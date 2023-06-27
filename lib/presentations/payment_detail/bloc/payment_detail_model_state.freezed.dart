// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_detail_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentDetailModelState {
  List<PaymentItem> get payments => throw _privateConstructorUsedError;
  PaymentDetailItem get paymentDetail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentDetailModelStateCopyWith<PaymentDetailModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDetailModelStateCopyWith<$Res> {
  factory $PaymentDetailModelStateCopyWith(PaymentDetailModelState value,
          $Res Function(PaymentDetailModelState) then) =
      _$PaymentDetailModelStateCopyWithImpl<$Res, PaymentDetailModelState>;
  @useResult
  $Res call({List<PaymentItem> payments, PaymentDetailItem paymentDetail});

  $PaymentDetailItemCopyWith<$Res> get paymentDetail;
}

/// @nodoc
class _$PaymentDetailModelStateCopyWithImpl<$Res,
        $Val extends PaymentDetailModelState>
    implements $PaymentDetailModelStateCopyWith<$Res> {
  _$PaymentDetailModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payments = null,
    Object? paymentDetail = null,
  }) {
    return _then(_value.copyWith(
      payments: null == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentItem>,
      paymentDetail: null == paymentDetail
          ? _value.paymentDetail
          : paymentDetail // ignore: cast_nullable_to_non_nullable
              as PaymentDetailItem,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentDetailItemCopyWith<$Res> get paymentDetail {
    return $PaymentDetailItemCopyWith<$Res>(_value.paymentDetail, (value) {
      return _then(_value.copyWith(paymentDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PaymentDetailModelStateCopyWith<$Res>
    implements $PaymentDetailModelStateCopyWith<$Res> {
  factory _$$_PaymentDetailModelStateCopyWith(_$_PaymentDetailModelState value,
          $Res Function(_$_PaymentDetailModelState) then) =
      __$$_PaymentDetailModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PaymentItem> payments, PaymentDetailItem paymentDetail});

  @override
  $PaymentDetailItemCopyWith<$Res> get paymentDetail;
}

/// @nodoc
class __$$_PaymentDetailModelStateCopyWithImpl<$Res>
    extends _$PaymentDetailModelStateCopyWithImpl<$Res,
        _$_PaymentDetailModelState>
    implements _$$_PaymentDetailModelStateCopyWith<$Res> {
  __$$_PaymentDetailModelStateCopyWithImpl(_$_PaymentDetailModelState _value,
      $Res Function(_$_PaymentDetailModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payments = null,
    Object? paymentDetail = null,
  }) {
    return _then(_$_PaymentDetailModelState(
      payments: null == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentItem>,
      paymentDetail: null == paymentDetail
          ? _value.paymentDetail
          : paymentDetail // ignore: cast_nullable_to_non_nullable
              as PaymentDetailItem,
    ));
  }
}

/// @nodoc

class _$_PaymentDetailModelState extends _PaymentDetailModelState {
  const _$_PaymentDetailModelState(
      {required final List<PaymentItem> payments, required this.paymentDetail})
      : _payments = payments,
        super._();

  final List<PaymentItem> _payments;
  @override
  List<PaymentItem> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  @override
  final PaymentDetailItem paymentDetail;

  @override
  String toString() {
    return 'PaymentDetailModelState(payments: $payments, paymentDetail: $paymentDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentDetailModelState &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            (identical(other.paymentDetail, paymentDetail) ||
                other.paymentDetail == paymentDetail));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_payments), paymentDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentDetailModelStateCopyWith<_$_PaymentDetailModelState>
      get copyWith =>
          __$$_PaymentDetailModelStateCopyWithImpl<_$_PaymentDetailModelState>(
              this, _$identity);
}

abstract class _PaymentDetailModelState extends PaymentDetailModelState {
  const factory _PaymentDetailModelState(
          {required final List<PaymentItem> payments,
          required final PaymentDetailItem paymentDetail}) =
      _$_PaymentDetailModelState;
  const _PaymentDetailModelState._() : super._();

  @override
  List<PaymentItem> get payments;
  @override
  PaymentDetailItem get paymentDetail;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentDetailModelStateCopyWith<_$_PaymentDetailModelState>
      get copyWith => throw _privateConstructorUsedError;
}
