// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tic_mobile_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicMobileModelState {
  Airport? get airportStart => throw _privateConstructorUsedError;
  Airport? get airportFinish => throw _privateConstructorUsedError;
  List<Ticket> get listTic => throw _privateConstructorUsedError;
  TicTypeEnum get typeTic => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicMobileModelStateCopyWith<TicMobileModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicMobileModelStateCopyWith<$Res> {
  factory $TicMobileModelStateCopyWith(
          TicMobileModelState value, $Res Function(TicMobileModelState) then) =
      _$TicMobileModelStateCopyWithImpl<$Res, TicMobileModelState>;
  @useResult
  $Res call(
      {Airport? airportStart,
      Airport? airportFinish,
      List<Ticket> listTic,
      TicTypeEnum typeTic});

  $AirportCopyWith<$Res>? get airportStart;
  $AirportCopyWith<$Res>? get airportFinish;
}

/// @nodoc
class _$TicMobileModelStateCopyWithImpl<$Res, $Val extends TicMobileModelState>
    implements $TicMobileModelStateCopyWith<$Res> {
  _$TicMobileModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airportStart = freezed,
    Object? airportFinish = freezed,
    Object? listTic = null,
    Object? typeTic = null,
  }) {
    return _then(_value.copyWith(
      airportStart: freezed == airportStart
          ? _value.airportStart
          : airportStart // ignore: cast_nullable_to_non_nullable
              as Airport?,
      airportFinish: freezed == airportFinish
          ? _value.airportFinish
          : airportFinish // ignore: cast_nullable_to_non_nullable
              as Airport?,
      listTic: null == listTic
          ? _value.listTic
          : listTic // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      typeTic: null == typeTic
          ? _value.typeTic
          : typeTic // ignore: cast_nullable_to_non_nullable
              as TicTypeEnum,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AirportCopyWith<$Res>? get airportStart {
    if (_value.airportStart == null) {
      return null;
    }

    return $AirportCopyWith<$Res>(_value.airportStart!, (value) {
      return _then(_value.copyWith(airportStart: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AirportCopyWith<$Res>? get airportFinish {
    if (_value.airportFinish == null) {
      return null;
    }

    return $AirportCopyWith<$Res>(_value.airportFinish!, (value) {
      return _then(_value.copyWith(airportFinish: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TicMobileModelStateCopyWith<$Res>
    implements $TicMobileModelStateCopyWith<$Res> {
  factory _$$_TicMobileModelStateCopyWith(_$_TicMobileModelState value,
          $Res Function(_$_TicMobileModelState) then) =
      __$$_TicMobileModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Airport? airportStart,
      Airport? airportFinish,
      List<Ticket> listTic,
      TicTypeEnum typeTic});

  @override
  $AirportCopyWith<$Res>? get airportStart;
  @override
  $AirportCopyWith<$Res>? get airportFinish;
}

/// @nodoc
class __$$_TicMobileModelStateCopyWithImpl<$Res>
    extends _$TicMobileModelStateCopyWithImpl<$Res, _$_TicMobileModelState>
    implements _$$_TicMobileModelStateCopyWith<$Res> {
  __$$_TicMobileModelStateCopyWithImpl(_$_TicMobileModelState _value,
      $Res Function(_$_TicMobileModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airportStart = freezed,
    Object? airportFinish = freezed,
    Object? listTic = null,
    Object? typeTic = null,
  }) {
    return _then(_$_TicMobileModelState(
      airportStart: freezed == airportStart
          ? _value.airportStart
          : airportStart // ignore: cast_nullable_to_non_nullable
              as Airport?,
      airportFinish: freezed == airportFinish
          ? _value.airportFinish
          : airportFinish // ignore: cast_nullable_to_non_nullable
              as Airport?,
      listTic: null == listTic
          ? _value._listTic
          : listTic // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      typeTic: null == typeTic
          ? _value.typeTic
          : typeTic // ignore: cast_nullable_to_non_nullable
              as TicTypeEnum,
    ));
  }
}

/// @nodoc

class _$_TicMobileModelState implements _TicMobileModelState {
  const _$_TicMobileModelState(
      {required this.airportStart,
      required this.airportFinish,
      required final List<Ticket> listTic,
      required this.typeTic})
      : _listTic = listTic;

  @override
  final Airport? airportStart;
  @override
  final Airport? airportFinish;
  final List<Ticket> _listTic;
  @override
  List<Ticket> get listTic {
    if (_listTic is EqualUnmodifiableListView) return _listTic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTic);
  }

  @override
  final TicTypeEnum typeTic;

  @override
  String toString() {
    return 'TicMobileModelState(airportStart: $airportStart, airportFinish: $airportFinish, listTic: $listTic, typeTic: $typeTic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicMobileModelState &&
            (identical(other.airportStart, airportStart) ||
                other.airportStart == airportStart) &&
            (identical(other.airportFinish, airportFinish) ||
                other.airportFinish == airportFinish) &&
            const DeepCollectionEquality().equals(other._listTic, _listTic) &&
            (identical(other.typeTic, typeTic) || other.typeTic == typeTic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, airportStart, airportFinish,
      const DeepCollectionEquality().hash(_listTic), typeTic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicMobileModelStateCopyWith<_$_TicMobileModelState> get copyWith =>
      __$$_TicMobileModelStateCopyWithImpl<_$_TicMobileModelState>(
          this, _$identity);
}

abstract class _TicMobileModelState implements TicMobileModelState {
  const factory _TicMobileModelState(
      {required final Airport? airportStart,
      required final Airport? airportFinish,
      required final List<Ticket> listTic,
      required final TicTypeEnum typeTic}) = _$_TicMobileModelState;

  @override
  Airport? get airportStart;
  @override
  Airport? get airportFinish;
  @override
  List<Ticket> get listTic;
  @override
  TicTypeEnum get typeTic;
  @override
  @JsonKey(ignore: true)
  _$$_TicMobileModelStateCopyWith<_$_TicMobileModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
