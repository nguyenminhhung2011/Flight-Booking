// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_flight_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListFlightModelState {
  List<Flight> get flights => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListFlightModelStateCopyWith<ListFlightModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListFlightModelStateCopyWith<$Res> {
  factory $ListFlightModelStateCopyWith(ListFlightModelState value,
          $Res Function(ListFlightModelState) then) =
      _$ListFlightModelStateCopyWithImpl<$Res, ListFlightModelState>;
  @useResult
  $Res call({List<Flight> flights});
}

/// @nodoc
class _$ListFlightModelStateCopyWithImpl<$Res,
        $Val extends ListFlightModelState>
    implements $ListFlightModelStateCopyWith<$Res> {
  _$ListFlightModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flights = null,
  }) {
    return _then(_value.copyWith(
      flights: null == flights
          ? _value.flights
          : flights // ignore: cast_nullable_to_non_nullable
              as List<Flight>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListFlightModelStateCopyWith<$Res>
    implements $ListFlightModelStateCopyWith<$Res> {
  factory _$$_ListFlightModelStateCopyWith(_$_ListFlightModelState value,
          $Res Function(_$_ListFlightModelState) then) =
      __$$_ListFlightModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Flight> flights});
}

/// @nodoc
class __$$_ListFlightModelStateCopyWithImpl<$Res>
    extends _$ListFlightModelStateCopyWithImpl<$Res, _$_ListFlightModelState>
    implements _$$_ListFlightModelStateCopyWith<$Res> {
  __$$_ListFlightModelStateCopyWithImpl(_$_ListFlightModelState _value,
      $Res Function(_$_ListFlightModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flights = null,
  }) {
    return _then(_$_ListFlightModelState(
      flights: null == flights
          ? _value._flights
          : flights // ignore: cast_nullable_to_non_nullable
              as List<Flight>,
    ));
  }
}

/// @nodoc

class _$_ListFlightModelState implements _ListFlightModelState {
  const _$_ListFlightModelState({required final List<Flight> flights})
      : _flights = flights;

  final List<Flight> _flights;
  @override
  List<Flight> get flights {
    if (_flights is EqualUnmodifiableListView) return _flights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flights);
  }

  @override
  String toString() {
    return 'ListFlightModelState(flights: $flights)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListFlightModelState &&
            const DeepCollectionEquality().equals(other._flights, _flights));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_flights));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListFlightModelStateCopyWith<_$_ListFlightModelState> get copyWith =>
      __$$_ListFlightModelStateCopyWithImpl<_$_ListFlightModelState>(
          this, _$identity);
}

abstract class _ListFlightModelState implements ListFlightModelState {
  const factory _ListFlightModelState({required final List<Flight> flights}) =
      _$_ListFlightModelState;

  @override
  List<Flight> get flights;
  @override
  @JsonKey(ignore: true)
  _$$_ListFlightModelStateCopyWith<_$_ListFlightModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
