// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flight_detail_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FlightDetailModelState {
  double get animation => throw _privateConstructorUsedError;
  ItemViewEnum get itemView => throw _privateConstructorUsedError;
  bool get showMoreInfor => throw _privateConstructorUsedError;
  Flight? get flight => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlightDetailModelStateCopyWith<FlightDetailModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlightDetailModelStateCopyWith<$Res> {
  factory $FlightDetailModelStateCopyWith(FlightDetailModelState value,
          $Res Function(FlightDetailModelState) then) =
      _$FlightDetailModelStateCopyWithImpl<$Res, FlightDetailModelState>;
  @useResult
  $Res call(
      {double animation,
      ItemViewEnum itemView,
      bool showMoreInfor,
      Flight? flight});

  $FlightCopyWith<$Res>? get flight;
}

/// @nodoc
class _$FlightDetailModelStateCopyWithImpl<$Res,
        $Val extends FlightDetailModelState>
    implements $FlightDetailModelStateCopyWith<$Res> {
  _$FlightDetailModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animation = null,
    Object? itemView = null,
    Object? showMoreInfor = null,
    Object? flight = freezed,
  }) {
    return _then(_value.copyWith(
      animation: null == animation
          ? _value.animation
          : animation // ignore: cast_nullable_to_non_nullable
              as double,
      itemView: null == itemView
          ? _value.itemView
          : itemView // ignore: cast_nullable_to_non_nullable
              as ItemViewEnum,
      showMoreInfor: null == showMoreInfor
          ? _value.showMoreInfor
          : showMoreInfor // ignore: cast_nullable_to_non_nullable
              as bool,
      flight: freezed == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as Flight?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FlightCopyWith<$Res>? get flight {
    if (_value.flight == null) {
      return null;
    }

    return $FlightCopyWith<$Res>(_value.flight!, (value) {
      return _then(_value.copyWith(flight: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FlightDetailModelStateCopyWith<$Res>
    implements $FlightDetailModelStateCopyWith<$Res> {
  factory _$$_FlightDetailModelStateCopyWith(_$_FlightDetailModelState value,
          $Res Function(_$_FlightDetailModelState) then) =
      __$$_FlightDetailModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double animation,
      ItemViewEnum itemView,
      bool showMoreInfor,
      Flight? flight});

  @override
  $FlightCopyWith<$Res>? get flight;
}

/// @nodoc
class __$$_FlightDetailModelStateCopyWithImpl<$Res>
    extends _$FlightDetailModelStateCopyWithImpl<$Res,
        _$_FlightDetailModelState>
    implements _$$_FlightDetailModelStateCopyWith<$Res> {
  __$$_FlightDetailModelStateCopyWithImpl(_$_FlightDetailModelState _value,
      $Res Function(_$_FlightDetailModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animation = null,
    Object? itemView = null,
    Object? showMoreInfor = null,
    Object? flight = freezed,
  }) {
    return _then(_$_FlightDetailModelState(
      animation: null == animation
          ? _value.animation
          : animation // ignore: cast_nullable_to_non_nullable
              as double,
      itemView: null == itemView
          ? _value.itemView
          : itemView // ignore: cast_nullable_to_non_nullable
              as ItemViewEnum,
      showMoreInfor: null == showMoreInfor
          ? _value.showMoreInfor
          : showMoreInfor // ignore: cast_nullable_to_non_nullable
              as bool,
      flight: freezed == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as Flight?,
    ));
  }
}

/// @nodoc

class _$_FlightDetailModelState implements _FlightDetailModelState {
  const _$_FlightDetailModelState(
      {required this.animation,
      required this.itemView,
      required this.showMoreInfor,
      this.flight});

  @override
  final double animation;
  @override
  final ItemViewEnum itemView;
  @override
  final bool showMoreInfor;
  @override
  final Flight? flight;

  @override
  String toString() {
    return 'FlightDetailModelState(animation: $animation, itemView: $itemView, showMoreInfor: $showMoreInfor, flight: $flight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlightDetailModelState &&
            (identical(other.animation, animation) ||
                other.animation == animation) &&
            (identical(other.itemView, itemView) ||
                other.itemView == itemView) &&
            (identical(other.showMoreInfor, showMoreInfor) ||
                other.showMoreInfor == showMoreInfor) &&
            (identical(other.flight, flight) || other.flight == flight));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, animation, itemView, showMoreInfor, flight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlightDetailModelStateCopyWith<_$_FlightDetailModelState> get copyWith =>
      __$$_FlightDetailModelStateCopyWithImpl<_$_FlightDetailModelState>(
          this, _$identity);
}

abstract class _FlightDetailModelState implements FlightDetailModelState {
  const factory _FlightDetailModelState(
      {required final double animation,
      required final ItemViewEnum itemView,
      required final bool showMoreInfor,
      final Flight? flight}) = _$_FlightDetailModelState;

  @override
  double get animation;
  @override
  ItemViewEnum get itemView;
  @override
  bool get showMoreInfor;
  @override
  Flight? get flight;
  @override
  @JsonKey(ignore: true)
  _$$_FlightDetailModelStateCopyWith<_$_FlightDetailModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
