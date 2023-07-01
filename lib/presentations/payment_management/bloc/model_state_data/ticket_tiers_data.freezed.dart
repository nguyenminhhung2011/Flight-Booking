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

TicketTierData _$TicketTierDataFromJson(Map<String, dynamic> json) {
  return _TicketTierData.fromJson(json);
}

/// @nodoc
mixin _$TicketTierData {
  int get economy => throw _privateConstructorUsedError;
  int get premiumEconomy => throw _privateConstructorUsedError;
  int get business => throw _privateConstructorUsedError;
  int get first => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
  $Res call({int economy, int premiumEconomy, int business, int first});
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
              as int,
      premiumEconomy: null == premiumEconomy
          ? _value.premiumEconomy
          : premiumEconomy // ignore: cast_nullable_to_non_nullable
              as int,
      business: null == business
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as int,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call({int economy, int premiumEconomy, int business, int first});
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
              as int,
      premiumEconomy: null == premiumEconomy
          ? _value.premiumEconomy
          : premiumEconomy // ignore: cast_nullable_to_non_nullable
              as int,
      business: null == business
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as int,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TicketTierData extends _TicketTierData {
  const _$_TicketTierData(
      {this.economy = 0,
      this.premiumEconomy = 0,
      this.business = 0,
      this.first = 0})
      : super._();

  factory _$_TicketTierData.fromJson(Map<String, dynamic> json) =>
      _$$_TicketTierDataFromJson(json);

  @override
  @JsonKey()
  final int economy;
  @override
  @JsonKey()
  final int premiumEconomy;
  @override
  @JsonKey()
  final int business;
  @override
  @JsonKey()
  final int first;

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

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, economy, premiumEconomy, business, first);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketTierDataCopyWith<_$_TicketTierData> get copyWith =>
      __$$_TicketTierDataCopyWithImpl<_$_TicketTierData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketTierDataToJson(
      this,
    );
  }
}

abstract class _TicketTierData extends TicketTierData {
  const factory _TicketTierData(
      {final int economy,
      final int premiumEconomy,
      final int business,
      final int first}) = _$_TicketTierData;
  const _TicketTierData._() : super._();

  factory _TicketTierData.fromJson(Map<String, dynamic> json) =
      _$_TicketTierData.fromJson;

  @override
  int get economy;
  @override
  int get premiumEconomy;
  @override
  int get business;
  @override
  int get first;
  @override
  @JsonKey(ignore: true)
  _$$_TicketTierDataCopyWith<_$_TicketTierData> get copyWith =>
      throw _privateConstructorUsedError;
}
