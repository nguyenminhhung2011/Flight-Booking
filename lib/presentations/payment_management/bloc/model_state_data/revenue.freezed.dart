// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'revenue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Revenue {
  String get amount => throw _privateConstructorUsedError;
  String get cardPercent => throw _privateConstructorUsedError;
  String get cashPercent => throw _privateConstructorUsedError;
  String get otherPercent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RevenueCopyWith<Revenue> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RevenueCopyWith<$Res> {
  factory $RevenueCopyWith(Revenue value, $Res Function(Revenue) then) =
      _$RevenueCopyWithImpl<$Res, Revenue>;
  @useResult
  $Res call(
      {String amount,
      String cardPercent,
      String cashPercent,
      String otherPercent});
}

/// @nodoc
class _$RevenueCopyWithImpl<$Res, $Val extends Revenue>
    implements $RevenueCopyWith<$Res> {
  _$RevenueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? cardPercent = null,
    Object? cashPercent = null,
    Object? otherPercent = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      cardPercent: null == cardPercent
          ? _value.cardPercent
          : cardPercent // ignore: cast_nullable_to_non_nullable
              as String,
      cashPercent: null == cashPercent
          ? _value.cashPercent
          : cashPercent // ignore: cast_nullable_to_non_nullable
              as String,
      otherPercent: null == otherPercent
          ? _value.otherPercent
          : otherPercent // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RevenueCopyWith<$Res> implements $RevenueCopyWith<$Res> {
  factory _$$_RevenueCopyWith(
          _$_Revenue value, $Res Function(_$_Revenue) then) =
      __$$_RevenueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String amount,
      String cardPercent,
      String cashPercent,
      String otherPercent});
}

/// @nodoc
class __$$_RevenueCopyWithImpl<$Res>
    extends _$RevenueCopyWithImpl<$Res, _$_Revenue>
    implements _$$_RevenueCopyWith<$Res> {
  __$$_RevenueCopyWithImpl(_$_Revenue _value, $Res Function(_$_Revenue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? cardPercent = null,
    Object? cashPercent = null,
    Object? otherPercent = null,
  }) {
    return _then(_$_Revenue(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      cardPercent: null == cardPercent
          ? _value.cardPercent
          : cardPercent // ignore: cast_nullable_to_non_nullable
              as String,
      cashPercent: null == cashPercent
          ? _value.cashPercent
          : cashPercent // ignore: cast_nullable_to_non_nullable
              as String,
      otherPercent: null == otherPercent
          ? _value.otherPercent
          : otherPercent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Revenue implements _Revenue {
  const _$_Revenue(
      {this.amount = "",
      this.cardPercent = "",
      this.cashPercent = "",
      this.otherPercent = ""});

  @override
  @JsonKey()
  final String amount;
  @override
  @JsonKey()
  final String cardPercent;
  @override
  @JsonKey()
  final String cashPercent;
  @override
  @JsonKey()
  final String otherPercent;

  @override
  String toString() {
    return 'Revenue(amount: $amount, cardPercent: $cardPercent, cashPercent: $cashPercent, otherPercent: $otherPercent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Revenue &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.cardPercent, cardPercent) ||
                other.cardPercent == cardPercent) &&
            (identical(other.cashPercent, cashPercent) ||
                other.cashPercent == cashPercent) &&
            (identical(other.otherPercent, otherPercent) ||
                other.otherPercent == otherPercent));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, amount, cardPercent, cashPercent, otherPercent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RevenueCopyWith<_$_Revenue> get copyWith =>
      __$$_RevenueCopyWithImpl<_$_Revenue>(this, _$identity);
}

abstract class _Revenue implements Revenue {
  const factory _Revenue(
      {final String amount,
      final String cardPercent,
      final String cashPercent,
      final String otherPercent}) = _$_Revenue;

  @override
  String get amount;
  @override
  String get cardPercent;
  @override
  String get cashPercent;
  @override
  String get otherPercent;
  @override
  @JsonKey(ignore: true)
  _$$_RevenueCopyWith<_$_Revenue> get copyWith =>
      throw _privateConstructorUsedError;
}
