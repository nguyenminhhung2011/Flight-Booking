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
  int get id => throw _privateConstructorUsedError;
  Flight get flight => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get ticketType => throw _privateConstructorUsedError;

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
      {int id, Flight flight, int quantity, double price, int ticketType});

  $FlightCopyWith<$Res> get flight;
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
    Object? flight = null,
    Object? quantity = null,
    Object? price = null,
    Object? ticketType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      flight: null == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as Flight,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      ticketType: null == ticketType
          ? _value.ticketType
          : ticketType // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FlightCopyWith<$Res> get flight {
    return $FlightCopyWith<$Res>(_value.flight, (value) {
      return _then(_value.copyWith(flight: value) as $Val);
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
      {int id, Flight flight, int quantity, double price, int ticketType});

  @override
  $FlightCopyWith<$Res> get flight;
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
    Object? flight = null,
    Object? quantity = null,
    Object? price = null,
    Object? ticketType = null,
  }) {
    return _then(_$_TicketInformation(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      flight: null == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as Flight,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      ticketType: null == ticketType
          ? _value.ticketType
          : ticketType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TicketInformation implements _TicketInformation {
  const _$_TicketInformation(
      {required this.id,
      required this.flight,
      required this.quantity,
      required this.price,
      required this.ticketType});

  @override
  final int id;
  @override
  final Flight flight;
  @override
  final int quantity;
  @override
  final double price;
  @override
  final int ticketType;

  @override
  String toString() {
    return 'TicketInformation(id: $id, flight: $flight, quantity: $quantity, price: $price, ticketType: $ticketType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketInformation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.flight, flight) || other.flight == flight) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.ticketType, ticketType) ||
                other.ticketType == ticketType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, flight, quantity, price, ticketType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketInformationCopyWith<_$_TicketInformation> get copyWith =>
      __$$_TicketInformationCopyWithImpl<_$_TicketInformation>(
          this, _$identity);
}

abstract class _TicketInformation implements TicketInformation {
  const factory _TicketInformation(
      {required final int id,
      required final Flight flight,
      required final int quantity,
      required final double price,
      required final int ticketType}) = _$_TicketInformation;

  @override
  int get id;
  @override
  Flight get flight;
  @override
  int get quantity;
  @override
  double get price;
  @override
  int get ticketType;
  @override
  @JsonKey(ignore: true)
  _$$_TicketInformationCopyWith<_$_TicketInformation> get copyWith =>
      throw _privateConstructorUsedError;
}
