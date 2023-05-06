// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'airport_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AirportModelState {
  List<Airport> get airports => throw _privateConstructorUsedError;
  int get pageView => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AirportModelStateCopyWith<AirportModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirportModelStateCopyWith<$Res> {
  factory $AirportModelStateCopyWith(
          AirportModelState value, $Res Function(AirportModelState) then) =
      _$AirportModelStateCopyWithImpl<$Res, AirportModelState>;
  @useResult
  $Res call({List<Airport> airports, int pageView});
}

/// @nodoc
class _$AirportModelStateCopyWithImpl<$Res, $Val extends AirportModelState>
    implements $AirportModelStateCopyWith<$Res> {
  _$AirportModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airports = null,
    Object? pageView = null,
  }) {
    return _then(_value.copyWith(
      airports: null == airports
          ? _value.airports
          : airports // ignore: cast_nullable_to_non_nullable
              as List<Airport>,
      pageView: null == pageView
          ? _value.pageView
          : pageView // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AirportModelStateCopyWith<$Res>
    implements $AirportModelStateCopyWith<$Res> {
  factory _$$_AirportModelStateCopyWith(_$_AirportModelState value,
          $Res Function(_$_AirportModelState) then) =
      __$$_AirportModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Airport> airports, int pageView});
}

/// @nodoc
class __$$_AirportModelStateCopyWithImpl<$Res>
    extends _$AirportModelStateCopyWithImpl<$Res, _$_AirportModelState>
    implements _$$_AirportModelStateCopyWith<$Res> {
  __$$_AirportModelStateCopyWithImpl(
      _$_AirportModelState _value, $Res Function(_$_AirportModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airports = null,
    Object? pageView = null,
  }) {
    return _then(_$_AirportModelState(
      airports: null == airports
          ? _value._airports
          : airports // ignore: cast_nullable_to_non_nullable
              as List<Airport>,
      pageView: null == pageView
          ? _value.pageView
          : pageView // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AirportModelState implements _AirportModelState {
  const _$_AirportModelState(
      {required final List<Airport> airports, required this.pageView})
      : _airports = airports;

  final List<Airport> _airports;
  @override
  List<Airport> get airports {
    if (_airports is EqualUnmodifiableListView) return _airports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_airports);
  }

  @override
  final int pageView;

  @override
  String toString() {
    return 'AirportModelState(airports: $airports, pageView: $pageView)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AirportModelState &&
            const DeepCollectionEquality().equals(other._airports, _airports) &&
            (identical(other.pageView, pageView) ||
                other.pageView == pageView));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_airports), pageView);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AirportModelStateCopyWith<_$_AirportModelState> get copyWith =>
      __$$_AirportModelStateCopyWithImpl<_$_AirportModelState>(
          this, _$identity);
}

abstract class _AirportModelState implements AirportModelState {
  const factory _AirportModelState(
      {required final List<Airport> airports,
      required final int pageView}) = _$_AirportModelState;

  @override
  List<Airport> get airports;
  @override
  int get pageView;
  @override
  @JsonKey(ignore: true)
  _$$_AirportModelStateCopyWith<_$_AirportModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
