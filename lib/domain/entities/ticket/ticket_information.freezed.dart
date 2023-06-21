// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketInformation {
  TicketInformationId get id => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get seatPosition => throw _privateConstructorUsedError;
  String get seatHeader => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketInformationCopyWith<TicketInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketInformationCopyWith<$Res> {
  factory $TicketInformationCopyWith(
          TicketInformation value, $Res Function(TicketInformation) then) =
      _$TicketInformationCopyWithImpl<$Res, TicketInformation>;
  @useResult
  $Res call(
      {TicketInformationId id,
      int quantity,
      double price,
      int seatPosition,
      String seatHeader});

  $TicketInformationIdCopyWith<$Res> get id;
}

/// @nodoc
class _$TicketInformationCopyWithImpl<$Res, $Val extends TicketInformation>
    implements $TicketInformationCopyWith<$Res> {
  _$TicketInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
    Object? price = null,
    Object? seatPosition = null,
    Object? seatHeader = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TicketInformationId,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      seatPosition: null == seatPosition
          ? _value.seatPosition
          : seatPosition // ignore: cast_nullable_to_non_nullable
              as int,
      seatHeader: null == seatHeader
          ? _value.seatHeader
          : seatHeader // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TicketInformationIdCopyWith<$Res> get id {
    return $TicketInformationIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TicketInformationCopyWith<$Res>
    implements $TicketInformationCopyWith<$Res> {
  factory _$$_TicketInformationCopyWith(_$_TicketInformation value,
          $Res Function(_$_TicketInformation) then) =
      __$$_TicketInformationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TicketInformationId id,
      int quantity,
      double price,
      int seatPosition,
      String seatHeader});

  @override
  $TicketInformationIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$_TicketInformationCopyWithImpl<$Res>
    extends _$TicketInformationCopyWithImpl<$Res, _$_TicketInformation>
    implements _$$_TicketInformationCopyWith<$Res> {
  __$$_TicketInformationCopyWithImpl(
      _$_TicketInformation _value, $Res Function(_$_TicketInformation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
    Object? price = null,
    Object? seatPosition = null,
    Object? seatHeader = null,
  }) {
    return _then(_$_TicketInformation(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TicketInformationId,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      seatPosition: null == seatPosition
          ? _value.seatPosition
          : seatPosition // ignore: cast_nullable_to_non_nullable
              as int,
      seatHeader: null == seatHeader
          ? _value.seatHeader
          : seatHeader // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TicketInformation implements _TicketInformation {
  const _$_TicketInformation(
      {required this.id,
      required this.quantity,
      required this.price,
      required this.seatPosition,
      required this.seatHeader});

  @override
  final TicketInformationId id;
  @override
  final int quantity;
  @override
  final double price;
  @override
  final int seatPosition;
  @override
  final String seatHeader;

  @override
  String toString() {
    return 'TicketInformation(id: $id, quantity: $quantity, price: $price, seatPosition: $seatPosition, seatHeader: $seatHeader)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketInformation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.seatPosition, seatPosition) ||
                other.seatPosition == seatPosition) &&
            (identical(other.seatHeader, seatHeader) ||
                other.seatHeader == seatHeader));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, quantity, price, seatPosition, seatHeader);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketInformationCopyWith<_$_TicketInformation> get copyWith =>
      __$$_TicketInformationCopyWithImpl<_$_TicketInformation>(
          this, _$identity);
}

abstract class _TicketInformation implements TicketInformation {
  const factory _TicketInformation(
      {required final TicketInformationId id,
      required final int quantity,
      required final double price,
      required final int seatPosition,
      required final String seatHeader}) = _$_TicketInformation;

  @override
  TicketInformationId get id;
  @override
  int get quantity;
  @override
  double get price;
  @override
  int get seatPosition;
  @override
  String get seatHeader;
  @override
  @JsonKey(ignore: true)
  _$$_TicketInformationCopyWith<_$_TicketInformation> get copyWith =>
      throw _privateConstructorUsedError;
}
