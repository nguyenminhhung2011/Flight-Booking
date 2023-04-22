// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Ticket {
  String get id => throw _privateConstructorUsedError;
  String get idCustomer => throw _privateConstructorUsedError;
  String get idFlight => throw _privateConstructorUsedError;
  DateTime get timeBought => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketCopyWith<Ticket> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketCopyWith<$Res> {
  factory $TicketCopyWith(Ticket value, $Res Function(Ticket) then) =
      _$TicketCopyWithImpl<$Res, Ticket>;
  @useResult
  $Res call(
      {String id,
      String idCustomer,
      String idFlight,
      DateTime timeBought,
      double price});
}

/// @nodoc
class _$TicketCopyWithImpl<$Res, $Val extends Ticket>
    implements $TicketCopyWith<$Res> {
  _$TicketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? idCustomer = null,
    Object? idFlight = null,
    Object? timeBought = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      idCustomer: null == idCustomer
          ? _value.idCustomer
          : idCustomer // ignore: cast_nullable_to_non_nullable
              as String,
      idFlight: null == idFlight
          ? _value.idFlight
          : idFlight // ignore: cast_nullable_to_non_nullable
              as String,
      timeBought: null == timeBought
          ? _value.timeBought
          : timeBought // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TicketCopyWith<$Res> implements $TicketCopyWith<$Res> {
  factory _$$_TicketCopyWith(_$_Ticket value, $Res Function(_$_Ticket) then) =
      __$$_TicketCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String idCustomer,
      String idFlight,
      DateTime timeBought,
      double price});
}

/// @nodoc
class __$$_TicketCopyWithImpl<$Res>
    extends _$TicketCopyWithImpl<$Res, _$_Ticket>
    implements _$$_TicketCopyWith<$Res> {
  __$$_TicketCopyWithImpl(_$_Ticket _value, $Res Function(_$_Ticket) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? idCustomer = null,
    Object? idFlight = null,
    Object? timeBought = null,
    Object? price = null,
  }) {
    return _then(_$_Ticket(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      idCustomer: null == idCustomer
          ? _value.idCustomer
          : idCustomer // ignore: cast_nullable_to_non_nullable
              as String,
      idFlight: null == idFlight
          ? _value.idFlight
          : idFlight // ignore: cast_nullable_to_non_nullable
              as String,
      timeBought: null == timeBought
          ? _value.timeBought
          : timeBought // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Ticket implements _Ticket {
  const _$_Ticket(
      {required this.id,
      required this.idCustomer,
      required this.idFlight,
      required this.timeBought,
      required this.price});

  @override
  final String id;
  @override
  final String idCustomer;
  @override
  final String idFlight;
  @override
  final DateTime timeBought;
  @override
  final double price;

  @override
  String toString() {
    return 'Ticket(id: $id, idCustomer: $idCustomer, idFlight: $idFlight, timeBought: $timeBought, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ticket &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idCustomer, idCustomer) ||
                other.idCustomer == idCustomer) &&
            (identical(other.idFlight, idFlight) ||
                other.idFlight == idFlight) &&
            (identical(other.timeBought, timeBought) ||
                other.timeBought == timeBought) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, idCustomer, idFlight, timeBought, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketCopyWith<_$_Ticket> get copyWith =>
      __$$_TicketCopyWithImpl<_$_Ticket>(this, _$identity);
}

abstract class _Ticket implements Ticket {
  const factory _Ticket(
      {required final String id,
      required final String idCustomer,
      required final String idFlight,
      required final DateTime timeBought,
      required final double price}) = _$_Ticket;

  @override
  String get id;
  @override
  String get idCustomer;
  @override
  String get idFlight;
  @override
  DateTime get timeBought;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$_TicketCopyWith<_$_Ticket> get copyWith =>
      throw _privateConstructorUsedError;
}
