// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_tiers_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketTierData {
  String get economy => throw _privateConstructorUsedError;
  String get premiumEconomy => throw _privateConstructorUsedError;
  String get business => throw _privateConstructorUsedError;
  String get first => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketTierDataCopyWith<TicketTierData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketTierDataCopyWith<$Res> {
  factory $TicketTierDataCopyWith(
          TicketTierData value, $Res Function(TicketTierData) then) =
      _$TicketTierDataCopyWithImpl<$Res, TicketTierData>;
  @useResult
  $Res call(
      {String economy, String premiumEconomy, String business, String first});
}

/// @nodoc
class _$TicketTierDataCopyWithImpl<$Res, $Val extends TicketTierData>
    implements $TicketTierDataCopyWith<$Res> {
  _$TicketTierDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? economy = null,
    Object? premiumEconomy = null,
    Object? business = null,
    Object? first = null,
  }) {
    return _then(_value.copyWith(
      economy: null == economy
          ? _value.economy
          : economy // ignore: cast_nullable_to_non_nullable
              as String,
      premiumEconomy: null == premiumEconomy
          ? _value.premiumEconomy
          : premiumEconomy // ignore: cast_nullable_to_non_nullable
              as String,
      business: null == business
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as String,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TicketTierDataCopyWith<$Res>
    implements $TicketTierDataCopyWith<$Res> {
  factory _$$_TicketTierDataCopyWith(
          _$_TicketTierData value, $Res Function(_$_TicketTierData) then) =
      __$$_TicketTierDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String economy, String premiumEconomy, String business, String first});
}

/// @nodoc
class __$$_TicketTierDataCopyWithImpl<$Res>
    extends _$TicketTierDataCopyWithImpl<$Res, _$_TicketTierData>
    implements _$$_TicketTierDataCopyWith<$Res> {
  __$$_TicketTierDataCopyWithImpl(
      _$_TicketTierData _value, $Res Function(_$_TicketTierData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? economy = null,
    Object? premiumEconomy = null,
    Object? business = null,
    Object? first = null,
  }) {
    return _then(_$_TicketTierData(
      economy: null == economy
          ? _value.economy
          : economy // ignore: cast_nullable_to_non_nullable
              as String,
      premiumEconomy: null == premiumEconomy
          ? _value.premiumEconomy
          : premiumEconomy // ignore: cast_nullable_to_non_nullable
              as String,
      business: null == business
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as String,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TicketTierData implements _TicketTierData {
  const _$_TicketTierData(
      {this.economy = "",
      this.premiumEconomy = "",
      this.business = "",
      this.first = ""});

  @override
  @JsonKey()
  final String economy;
  @override
  @JsonKey()
  final String premiumEconomy;
  @override
  @JsonKey()
  final String business;
  @override
  @JsonKey()
  final String first;

  @override
  String toString() {
    return 'TicketTierData(economy: $economy, premiumEconomy: $premiumEconomy, business: $business, first: $first)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketTierData &&
            (identical(other.economy, economy) || other.economy == economy) &&
            (identical(other.premiumEconomy, premiumEconomy) ||
                other.premiumEconomy == premiumEconomy) &&
            (identical(other.business, business) ||
                other.business == business) &&
            (identical(other.first, first) || other.first == first));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, economy, premiumEconomy, business, first);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketTierDataCopyWith<_$_TicketTierData> get copyWith =>
      __$$_TicketTierDataCopyWithImpl<_$_TicketTierData>(this, _$identity);
}

abstract class _TicketTierData implements TicketTierData {
  const factory _TicketTierData(
      {final String economy,
      final String premiumEconomy,
      final String business,
      final String first}) = _$_TicketTierData;

  @override
  String get economy;
  @override
  String get premiumEconomy;
  @override
  String get business;
  @override
  String get first;
  @override
  @JsonKey(ignore: true)
  _$$_TicketTierDataCopyWith<_$_TicketTierData> get copyWith =>
      throw _privateConstructorUsedError;
}
