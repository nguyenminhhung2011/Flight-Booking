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
  String get name => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get emailAddress => throw _privateConstructorUsedError;
  int get seat => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  int get luggage => throw _privateConstructorUsedError;
  DateTime get dateBorn => throw _privateConstructorUsedError;
  DateTime get timeBought => throw _privateConstructorUsedError;
  TicketInformation get ticketInformation => throw _privateConstructorUsedError;
  Flight get flight => throw _privateConstructorUsedError;
  Payment get payment => throw _privateConstructorUsedError;

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
      String name,
      String gender,
      String phoneNumber,
      String emailAddress,
      int seat,
      int type,
      int luggage,
      DateTime dateBorn,
      DateTime timeBought,
      TicketInformation ticketInformation,
      Flight flight,
      Payment payment});

  $TicketInformationCopyWith<$Res> get ticketInformation;
  $FlightCopyWith<$Res> get flight;
  $PaymentCopyWith<$Res> get payment;
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
    Object? name = null,
    Object? gender = null,
    Object? phoneNumber = null,
    Object? emailAddress = null,
    Object? seat = null,
    Object? type = null,
    Object? luggage = null,
    Object? dateBorn = null,
    Object? timeBought = null,
    Object? ticketInformation = null,
    Object? flight = null,
    Object? payment = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      seat: null == seat
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      luggage: null == luggage
          ? _value.luggage
          : luggage // ignore: cast_nullable_to_non_nullable
              as int,
      dateBorn: null == dateBorn
          ? _value.dateBorn
          : dateBorn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeBought: null == timeBought
          ? _value.timeBought
          : timeBought // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ticketInformation: null == ticketInformation
          ? _value.ticketInformation
          : ticketInformation // ignore: cast_nullable_to_non_nullable
              as TicketInformation,
      flight: null == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as Flight,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TicketInformationCopyWith<$Res> get ticketInformation {
    return $TicketInformationCopyWith<$Res>(_value.ticketInformation, (value) {
      return _then(_value.copyWith(ticketInformation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FlightCopyWith<$Res> get flight {
    return $FlightCopyWith<$Res>(_value.flight, (value) {
      return _then(_value.copyWith(flight: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentCopyWith<$Res> get payment {
    return $PaymentCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value) as $Val);
    });
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
      String name,
      String gender,
      String phoneNumber,
      String emailAddress,
      int seat,
      int type,
      int luggage,
      DateTime dateBorn,
      DateTime timeBought,
      TicketInformation ticketInformation,
      Flight flight,
      Payment payment});

  @override
  $TicketInformationCopyWith<$Res> get ticketInformation;
  @override
  $FlightCopyWith<$Res> get flight;
  @override
  $PaymentCopyWith<$Res> get payment;
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
    Object? name = null,
    Object? gender = null,
    Object? phoneNumber = null,
    Object? emailAddress = null,
    Object? seat = null,
    Object? type = null,
    Object? luggage = null,
    Object? dateBorn = null,
    Object? timeBought = null,
    Object? ticketInformation = null,
    Object? flight = null,
    Object? payment = null,
  }) {
    return _then(_$_Ticket(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      seat: null == seat
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      luggage: null == luggage
          ? _value.luggage
          : luggage // ignore: cast_nullable_to_non_nullable
              as int,
      dateBorn: null == dateBorn
          ? _value.dateBorn
          : dateBorn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeBought: null == timeBought
          ? _value.timeBought
          : timeBought // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ticketInformation: null == ticketInformation
          ? _value.ticketInformation
          : ticketInformation // ignore: cast_nullable_to_non_nullable
              as TicketInformation,
      flight: null == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as Flight,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
    ));
  }
}

/// @nodoc

class _$_Ticket implements _Ticket {
  const _$_Ticket(
      {required this.id,
      required this.name,
      required this.gender,
      required this.phoneNumber,
      required this.emailAddress,
      required this.seat,
      required this.type,
      required this.luggage,
      required this.dateBorn,
      required this.timeBought,
      required this.ticketInformation,
      required this.flight,
      required this.payment});

  @override
  final String id;
  @override
  final String name;
  @override
  final String gender;
  @override
  final String phoneNumber;
  @override
  final String emailAddress;
  @override
  final int seat;
  @override
  final int type;
  @override
  final int luggage;
  @override
  final DateTime dateBorn;
  @override
  final DateTime timeBought;
  @override
  final TicketInformation ticketInformation;
  @override
  final Flight flight;
  @override
  final Payment payment;

  @override
  String toString() {
    return 'Ticket(id: $id, name: $name, gender: $gender, phoneNumber: $phoneNumber, emailAddress: $emailAddress, seat: $seat, type: $type, luggage: $luggage, dateBorn: $dateBorn, timeBought: $timeBought, ticketInformation: $ticketInformation, flight: $flight, payment: $payment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ticket &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.seat, seat) || other.seat == seat) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.luggage, luggage) || other.luggage == luggage) &&
            (identical(other.dateBorn, dateBorn) ||
                other.dateBorn == dateBorn) &&
            (identical(other.timeBought, timeBought) ||
                other.timeBought == timeBought) &&
            (identical(other.ticketInformation, ticketInformation) ||
                other.ticketInformation == ticketInformation) &&
            (identical(other.flight, flight) || other.flight == flight) &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      gender,
      phoneNumber,
      emailAddress,
      seat,
      type,
      luggage,
      dateBorn,
      timeBought,
      ticketInformation,
      flight,
      payment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketCopyWith<_$_Ticket> get copyWith =>
      __$$_TicketCopyWithImpl<_$_Ticket>(this, _$identity);
}

abstract class _Ticket implements Ticket {
  const factory _Ticket(
      {required final String id,
      required final String name,
      required final String gender,
      required final String phoneNumber,
      required final String emailAddress,
      required final int seat,
      required final int type,
      required final int luggage,
      required final DateTime dateBorn,
      required final DateTime timeBought,
      required final TicketInformation ticketInformation,
      required final Flight flight,
      required final Payment payment}) = _$_Ticket;

  @override
  String get id;
  @override
  String get name;
  @override
  String get gender;
  @override
  String get phoneNumber;
  @override
  String get emailAddress;
  @override
  int get seat;
  @override
  int get type;
  @override
  int get luggage;
  @override
  DateTime get dateBorn;
  @override
  DateTime get timeBought;
  @override
  TicketInformation get ticketInformation;
  @override
  Flight get flight;
  @override
  Payment get payment;
  @override
  @JsonKey(ignore: true)
  _$$_TicketCopyWith<_$_Ticket> get copyWith =>
      throw _privateConstructorUsedError;
}
