// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'airport_mobile_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AirportMobileModelState {
  List<Airport> get listAirport => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AirportMobileModelStateCopyWith<AirportMobileModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirportMobileModelStateCopyWith<$Res> {
  factory $AirportMobileModelStateCopyWith(AirportMobileModelState value,
          $Res Function(AirportMobileModelState) then) =
      _$AirportMobileModelStateCopyWithImpl<$Res, AirportMobileModelState>;
  @useResult
  $Res call({List<Airport> listAirport});
}

/// @nodoc
class _$AirportMobileModelStateCopyWithImpl<$Res,
        $Val extends AirportMobileModelState>
    implements $AirportMobileModelStateCopyWith<$Res> {
  _$AirportMobileModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listAirport = null,
  }) {
    return _then(_value.copyWith(
      listAirport: null == listAirport
          ? _value.listAirport
          : listAirport // ignore: cast_nullable_to_non_nullable
              as List<Airport>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AirportMobileModelStateCopyWith<$Res>
    implements $AirportMobileModelStateCopyWith<$Res> {
  factory _$$_AirportMobileModelStateCopyWith(_$_AirportMobileModelState value,
          $Res Function(_$_AirportMobileModelState) then) =
      __$$_AirportMobileModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Airport> listAirport});
}

/// @nodoc
class __$$_AirportMobileModelStateCopyWithImpl<$Res>
    extends _$AirportMobileModelStateCopyWithImpl<$Res,
        _$_AirportMobileModelState>
    implements _$$_AirportMobileModelStateCopyWith<$Res> {
  __$$_AirportMobileModelStateCopyWithImpl(_$_AirportMobileModelState _value,
      $Res Function(_$_AirportMobileModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listAirport = null,
  }) {
    return _then(_$_AirportMobileModelState(
      listAirport: null == listAirport
          ? _value._listAirport
          : listAirport // ignore: cast_nullable_to_non_nullable
              as List<Airport>,
    ));
  }
}

/// @nodoc

class _$_AirportMobileModelState implements _AirportMobileModelState {
  const _$_AirportMobileModelState({required final List<Airport> listAirport})
      : _listAirport = listAirport;

  final List<Airport> _listAirport;
  @override
  List<Airport> get listAirport {
    if (_listAirport is EqualUnmodifiableListView) return _listAirport;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listAirport);
  }

  @override
  String toString() {
    return 'AirportMobileModelState(listAirport: $listAirport)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AirportMobileModelState &&
            const DeepCollectionEquality()
                .equals(other._listAirport, _listAirport));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listAirport));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AirportMobileModelStateCopyWith<_$_AirportMobileModelState>
      get copyWith =>
          __$$_AirportMobileModelStateCopyWithImpl<_$_AirportMobileModelState>(
              this, _$identity);
}

abstract class _AirportMobileModelState implements AirportMobileModelState {
  const factory _AirportMobileModelState(
      {required final List<Airport> listAirport}) = _$_AirportMobileModelState;

  @override
  List<Airport> get listAirport;
  @override
  @JsonKey(ignore: true)
  _$$_AirportMobileModelStateCopyWith<_$_AirportMobileModelState>
      get copyWith => throw _privateConstructorUsedError;
}
