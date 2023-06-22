// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreditCard {
  int get id => throw _privateConstructorUsedError;
  String get creditNum => throw _privateConstructorUsedError;
  DateTime get expiredDate => throw _privateConstructorUsedError;
  String get cvc => throw _privateConstructorUsedError;
  String get nameCard => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreditCardCopyWith<CreditCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCardCopyWith<$Res> {
  factory $CreditCardCopyWith(
          CreditCard value, $Res Function(CreditCard) then) =
      _$CreditCardCopyWithImpl<$Res, CreditCard>;
  @useResult
  $Res call(
      {int id,
      String creditNum,
      DateTime expiredDate,
      String cvc,
      String nameCard});
}

/// @nodoc
class _$CreditCardCopyWithImpl<$Res, $Val extends CreditCard>
    implements $CreditCardCopyWith<$Res> {
  _$CreditCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creditNum = null,
    Object? expiredDate = null,
    Object? cvc = null,
    Object? nameCard = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      creditNum: null == creditNum
          ? _value.creditNum
          : creditNum // ignore: cast_nullable_to_non_nullable
              as String,
      expiredDate: null == expiredDate
          ? _value.expiredDate
          : expiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cvc: null == cvc
          ? _value.cvc
          : cvc // ignore: cast_nullable_to_non_nullable
              as String,
      nameCard: null == nameCard
          ? _value.nameCard
          : nameCard // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreditCardCopyWith<$Res>
    implements $CreditCardCopyWith<$Res> {
  factory _$$_CreditCardCopyWith(
          _$_CreditCard value, $Res Function(_$_CreditCard) then) =
      __$$_CreditCardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String creditNum,
      DateTime expiredDate,
      String cvc,
      String nameCard});
}

/// @nodoc
class __$$_CreditCardCopyWithImpl<$Res>
    extends _$CreditCardCopyWithImpl<$Res, _$_CreditCard>
    implements _$$_CreditCardCopyWith<$Res> {
  __$$_CreditCardCopyWithImpl(
      _$_CreditCard _value, $Res Function(_$_CreditCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creditNum = null,
    Object? expiredDate = null,
    Object? cvc = null,
    Object? nameCard = null,
  }) {
    return _then(_$_CreditCard(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      creditNum: null == creditNum
          ? _value.creditNum
          : creditNum // ignore: cast_nullable_to_non_nullable
              as String,
      expiredDate: null == expiredDate
          ? _value.expiredDate
          : expiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cvc: null == cvc
          ? _value.cvc
          : cvc // ignore: cast_nullable_to_non_nullable
              as String,
      nameCard: null == nameCard
          ? _value.nameCard
          : nameCard // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreditCard implements _CreditCard {
  const _$_CreditCard(
      {required this.id,
      required this.creditNum,
      required this.expiredDate,
      required this.cvc,
      required this.nameCard});

  @override
  final int id;
  @override
  final String creditNum;
  @override
  final DateTime expiredDate;
  @override
  final String cvc;
  @override
  final String nameCard;

  @override
  String toString() {
    return 'CreditCard(id: $id, creditNum: $creditNum, expiredDate: $expiredDate, cvc: $cvc, nameCard: $nameCard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreditCard &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creditNum, creditNum) ||
                other.creditNum == creditNum) &&
            (identical(other.expiredDate, expiredDate) ||
                other.expiredDate == expiredDate) &&
            (identical(other.cvc, cvc) || other.cvc == cvc) &&
            (identical(other.nameCard, nameCard) ||
                other.nameCard == nameCard));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, creditNum, expiredDate, cvc, nameCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreditCardCopyWith<_$_CreditCard> get copyWith =>
      __$$_CreditCardCopyWithImpl<_$_CreditCard>(this, _$identity);
}

abstract class _CreditCard implements CreditCard {
  const factory _CreditCard(
      {required final int id,
      required final String creditNum,
      required final DateTime expiredDate,
      required final String cvc,
      required final String nameCard}) = _$_CreditCard;

  @override
  int get id;
  @override
  String get creditNum;
  @override
  DateTime get expiredDate;
  @override
  String get cvc;
  @override
  String get nameCard;
  @override
  @JsonKey(ignore: true)
  _$$_CreditCardCopyWith<_$_CreditCard> get copyWith =>
      throw _privateConstructorUsedError;
}
