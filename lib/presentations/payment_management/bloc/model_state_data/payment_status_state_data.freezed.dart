// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_status_state_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentStatusStateData {
  String get create => throw _privateConstructorUsedError;
  String get declined => throw _privateConstructorUsedError;
  String get pending => throw _privateConstructorUsedError;
  String get succeeded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentStatusStateDataCopyWith<PaymentStatusStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStatusStateDataCopyWith<$Res> {
  factory $PaymentStatusStateDataCopyWith(PaymentStatusStateData value,
          $Res Function(PaymentStatusStateData) then) =
      _$PaymentStatusStateDataCopyWithImpl<$Res, PaymentStatusStateData>;
  @useResult
  $Res call({String create, String declined, String pending, String succeeded});
}

/// @nodoc
class _$PaymentStatusStateDataCopyWithImpl<$Res,
        $Val extends PaymentStatusStateData>
    implements $PaymentStatusStateDataCopyWith<$Res> {
  _$PaymentStatusStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? create = null,
    Object? declined = null,
    Object? pending = null,
    Object? succeeded = null,
  }) {
    return _then(_value.copyWith(
      create: null == create
          ? _value.create
          : create // ignore: cast_nullable_to_non_nullable
              as String,
      declined: null == declined
          ? _value.declined
          : declined // ignore: cast_nullable_to_non_nullable
              as String,
      pending: null == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as String,
      succeeded: null == succeeded
          ? _value.succeeded
          : succeeded // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentStatusStateDataCopyWith<$Res>
    implements $PaymentStatusStateDataCopyWith<$Res> {
  factory _$$_PaymentStatusStateDataCopyWith(_$_PaymentStatusStateData value,
          $Res Function(_$_PaymentStatusStateData) then) =
      __$$_PaymentStatusStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String create, String declined, String pending, String succeeded});
}

/// @nodoc
class __$$_PaymentStatusStateDataCopyWithImpl<$Res>
    extends _$PaymentStatusStateDataCopyWithImpl<$Res,
        _$_PaymentStatusStateData>
    implements _$$_PaymentStatusStateDataCopyWith<$Res> {
  __$$_PaymentStatusStateDataCopyWithImpl(_$_PaymentStatusStateData _value,
      $Res Function(_$_PaymentStatusStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? create = null,
    Object? declined = null,
    Object? pending = null,
    Object? succeeded = null,
  }) {
    return _then(_$_PaymentStatusStateData(
      create: null == create
          ? _value.create
          : create // ignore: cast_nullable_to_non_nullable
              as String,
      declined: null == declined
          ? _value.declined
          : declined // ignore: cast_nullable_to_non_nullable
              as String,
      pending: null == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as String,
      succeeded: null == succeeded
          ? _value.succeeded
          : succeeded // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PaymentStatusStateData implements _PaymentStatusStateData {
  const _$_PaymentStatusStateData(
      {this.create = "",
      this.declined = "",
      this.pending = "",
      this.succeeded = ""});

  @override
  @JsonKey()
  final String create;
  @override
  @JsonKey()
  final String declined;
  @override
  @JsonKey()
  final String pending;
  @override
  @JsonKey()
  final String succeeded;

  @override
  String toString() {
    return 'PaymentStatusStateData(create: $create, declined: $declined, pending: $pending, succeeded: $succeeded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentStatusStateData &&
            (identical(other.create, create) || other.create == create) &&
            (identical(other.declined, declined) ||
                other.declined == declined) &&
            (identical(other.pending, pending) || other.pending == pending) &&
            (identical(other.succeeded, succeeded) ||
                other.succeeded == succeeded));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, create, declined, pending, succeeded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentStatusStateDataCopyWith<_$_PaymentStatusStateData> get copyWith =>
      __$$_PaymentStatusStateDataCopyWithImpl<_$_PaymentStatusStateData>(
          this, _$identity);
}

abstract class _PaymentStatusStateData implements PaymentStatusStateData {
  const factory _PaymentStatusStateData(
      {final String create,
      final String declined,
      final String pending,
      final String succeeded}) = _$_PaymentStatusStateData;

  @override
  String get create;
  @override
  String get declined;
  @override
  String get pending;
  @override
  String get succeeded;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentStatusStateDataCopyWith<_$_PaymentStatusStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
