// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_information_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketInformationId {
  int get ticketType => throw _privateConstructorUsedError;
  Flight get flight => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketInformationIdCopyWith<TicketInformationId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketInformationIdCopyWith<$Res> {
  factory $TicketInformationIdCopyWith(
          TicketInformationId value, $Res Function(TicketInformationId) then) =
      _$TicketInformationIdCopyWithImpl<$Res, TicketInformationId>;
  @useResult
  $Res call({int ticketType, Flight flight});

  $FlightCopyWith<$Res> get flight;
}

/// @nodoc
class _$TicketInformationIdCopyWithImpl<$Res, $Val extends TicketInformationId>
    implements $TicketInformationIdCopyWith<$Res> {
  _$TicketInformationIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketType = null,
    Object? flight = null,
  }) {
    return _then(_value.copyWith(
      ticketType: null == ticketType
          ? _value.ticketType
          : ticketType // ignore: cast_nullable_to_non_nullable
              as int,
      flight: null == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as Flight,
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
abstract class _$$_TicketInformationIdCopyWith<$Res>
    implements $TicketInformationIdCopyWith<$Res> {
  factory _$$_TicketInformationIdCopyWith(_$_TicketInformationId value,
          $Res Function(_$_TicketInformationId) then) =
      __$$_TicketInformationIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int ticketType, Flight flight});

  @override
  $FlightCopyWith<$Res> get flight;
}

/// @nodoc
class __$$_TicketInformationIdCopyWithImpl<$Res>
    extends _$TicketInformationIdCopyWithImpl<$Res, _$_TicketInformationId>
    implements _$$_TicketInformationIdCopyWith<$Res> {
  __$$_TicketInformationIdCopyWithImpl(_$_TicketInformationId _value,
      $Res Function(_$_TicketInformationId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketType = null,
    Object? flight = null,
  }) {
    return _then(_$_TicketInformationId(
      ticketType: null == ticketType
          ? _value.ticketType
          : ticketType // ignore: cast_nullable_to_non_nullable
              as int,
      flight: null == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as Flight,
    ));
  }
}

/// @nodoc

class _$_TicketInformationId implements _TicketInformationId {
  const _$_TicketInformationId(
      {required this.ticketType, required this.flight});

  @override
  final int ticketType;
  @override
  final Flight flight;

  @override
  String toString() {
    return 'TicketInformationId(ticketType: $ticketType, flight: $flight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketInformationId &&
            (identical(other.ticketType, ticketType) ||
                other.ticketType == ticketType) &&
            (identical(other.flight, flight) || other.flight == flight));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticketType, flight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketInformationIdCopyWith<_$_TicketInformationId> get copyWith =>
      __$$_TicketInformationIdCopyWithImpl<_$_TicketInformationId>(
          this, _$identity);
}

abstract class _TicketInformationId implements TicketInformationId {
  const factory _TicketInformationId(
      {required final int ticketType,
      required final Flight flight}) = _$_TicketInformationId;

  @override
  int get ticketType;
  @override
  Flight get flight;
  @override
  @JsonKey(ignore: true)
  _$$_TicketInformationIdCopyWith<_$_TicketInformationId> get copyWith =>
      throw _privateConstructorUsedError;
}
