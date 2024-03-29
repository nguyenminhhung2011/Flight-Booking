// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'total_statistical_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TotalStatisticalData {
  int get totalPaymentToday => throw _privateConstructorUsedError;
  int get totalCustomerToday => throw _privateConstructorUsedError;
  int get totalFlightToday => throw _privateConstructorUsedError;
  int get totalPassengerToday => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TotalStatisticalDataCopyWith<TotalStatisticalData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalStatisticalDataCopyWith<$Res> {
  factory $TotalStatisticalDataCopyWith(TotalStatisticalData value,
          $Res Function(TotalStatisticalData) then) =
      _$TotalStatisticalDataCopyWithImpl<$Res, TotalStatisticalData>;
  @useResult
  $Res call(
      {int totalPaymentToday,
      int totalCustomerToday,
      int totalFlightToday,
      int totalPassengerToday});
}

/// @nodoc
class _$TotalStatisticalDataCopyWithImpl<$Res,
        $Val extends TotalStatisticalData>
    implements $TotalStatisticalDataCopyWith<$Res> {
  _$TotalStatisticalDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPaymentToday = null,
    Object? totalCustomerToday = null,
    Object? totalFlightToday = null,
    Object? totalPassengerToday = null,
  }) {
    return _then(_value.copyWith(
      totalPaymentToday: null == totalPaymentToday
          ? _value.totalPaymentToday
          : totalPaymentToday // ignore: cast_nullable_to_non_nullable
              as int,
      totalCustomerToday: null == totalCustomerToday
          ? _value.totalCustomerToday
          : totalCustomerToday // ignore: cast_nullable_to_non_nullable
              as int,
      totalFlightToday: null == totalFlightToday
          ? _value.totalFlightToday
          : totalFlightToday // ignore: cast_nullable_to_non_nullable
              as int,
      totalPassengerToday: null == totalPassengerToday
          ? _value.totalPassengerToday
          : totalPassengerToday // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TotalStatisticalDataCopyWith<$Res>
    implements $TotalStatisticalDataCopyWith<$Res> {
  factory _$$_TotalStatisticalDataCopyWith(_$_TotalStatisticalData value,
          $Res Function(_$_TotalStatisticalData) then) =
      __$$_TotalStatisticalDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalPaymentToday,
      int totalCustomerToday,
      int totalFlightToday,
      int totalPassengerToday});
}

/// @nodoc
class __$$_TotalStatisticalDataCopyWithImpl<$Res>
    extends _$TotalStatisticalDataCopyWithImpl<$Res, _$_TotalStatisticalData>
    implements _$$_TotalStatisticalDataCopyWith<$Res> {
  __$$_TotalStatisticalDataCopyWithImpl(_$_TotalStatisticalData _value,
      $Res Function(_$_TotalStatisticalData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPaymentToday = null,
    Object? totalCustomerToday = null,
    Object? totalFlightToday = null,
    Object? totalPassengerToday = null,
  }) {
    return _then(_$_TotalStatisticalData(
      totalPaymentToday: null == totalPaymentToday
          ? _value.totalPaymentToday
          : totalPaymentToday // ignore: cast_nullable_to_non_nullable
              as int,
      totalCustomerToday: null == totalCustomerToday
          ? _value.totalCustomerToday
          : totalCustomerToday // ignore: cast_nullable_to_non_nullable
              as int,
      totalFlightToday: null == totalFlightToday
          ? _value.totalFlightToday
          : totalFlightToday // ignore: cast_nullable_to_non_nullable
              as int,
      totalPassengerToday: null == totalPassengerToday
          ? _value.totalPassengerToday
          : totalPassengerToday // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TotalStatisticalData implements _TotalStatisticalData {
  const _$_TotalStatisticalData(
      {this.totalPaymentToday = 0,
      this.totalCustomerToday = 0,
      this.totalFlightToday = 0,
      this.totalPassengerToday = 0});

  @override
  @JsonKey()
  final int totalPaymentToday;
  @override
  @JsonKey()
  final int totalCustomerToday;
  @override
  @JsonKey()
  final int totalFlightToday;
  @override
  @JsonKey()
  final int totalPassengerToday;

  @override
  String toString() {
    return 'TotalStatisticalData(totalPaymentToday: $totalPaymentToday, totalCustomerToday: $totalCustomerToday, totalFlightToday: $totalFlightToday, totalPassengerToday: $totalPassengerToday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TotalStatisticalData &&
            (identical(other.totalPaymentToday, totalPaymentToday) ||
                other.totalPaymentToday == totalPaymentToday) &&
            (identical(other.totalCustomerToday, totalCustomerToday) ||
                other.totalCustomerToday == totalCustomerToday) &&
            (identical(other.totalFlightToday, totalFlightToday) ||
                other.totalFlightToday == totalFlightToday) &&
            (identical(other.totalPassengerToday, totalPassengerToday) ||
                other.totalPassengerToday == totalPassengerToday));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalPaymentToday,
      totalCustomerToday, totalFlightToday, totalPassengerToday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TotalStatisticalDataCopyWith<_$_TotalStatisticalData> get copyWith =>
      __$$_TotalStatisticalDataCopyWithImpl<_$_TotalStatisticalData>(
          this, _$identity);
}

abstract class _TotalStatisticalData implements TotalStatisticalData {
  const factory _TotalStatisticalData(
      {final int totalPaymentToday,
      final int totalCustomerToday,
      final int totalFlightToday,
      final int totalPassengerToday}) = _$_TotalStatisticalData;

  @override
  int get totalPaymentToday;
  @override
  int get totalCustomerToday;
  @override
  int get totalFlightToday;
  @override
  int get totalPassengerToday;
  @override
  @JsonKey(ignore: true)
  _$$_TotalStatisticalDataCopyWith<_$_TotalStatisticalData> get copyWith =>
      throw _privateConstructorUsedError;
}
