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
  Flight? get flight => throw _privateConstructorUsedError;
  double get animation => throw _privateConstructorUsedError;
  bool get showMoreInfor => throw _privateConstructorUsedError;
  ItemViewEnum get itemView => throw _privateConstructorUsedError;
  List<SeatSelected> get chairsSelected => throw _privateConstructorUsedError;
  List<TicketInformation> get ticInformation =>
      throw _privateConstructorUsedError;
  Customer? get customerSelected => throw _privateConstructorUsedError;

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
      {Flight? flight,
      double animation,
      bool showMoreInfor,
      ItemViewEnum itemView,
      List<SeatSelected> chairsSelected,
      List<TicketInformation> ticInformation,
      Customer? customerSelected});

  $FlightCopyWith<$Res>? get flight;
  $CustomerCopyWith<$Res>? get customerSelected;
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
    Object? flight = freezed,
    Object? animation = null,
    Object? showMoreInfor = null,
    Object? itemView = null,
    Object? chairsSelected = null,
    Object? ticInformation = null,
    Object? customerSelected = freezed,
  }) {
    return _then(_value.copyWith(
      flight: freezed == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as Flight?,
      animation: null == animation
          ? _value.animation
          : animation // ignore: cast_nullable_to_non_nullable
              as double,
      showMoreInfor: null == showMoreInfor
          ? _value.showMoreInfor
          : showMoreInfor // ignore: cast_nullable_to_non_nullable
              as bool,
      itemView: null == itemView
          ? _value.itemView
          : itemView // ignore: cast_nullable_to_non_nullable
              as ItemViewEnum,
      chairsSelected: null == chairsSelected
          ? _value.chairsSelected
          : chairsSelected // ignore: cast_nullable_to_non_nullable
              as List<SeatSelected>,
      ticInformation: null == ticInformation
          ? _value.ticInformation
          : ticInformation // ignore: cast_nullable_to_non_nullable
              as List<TicketInformation>,
      customerSelected: freezed == customerSelected
          ? _value.customerSelected
          : customerSelected // ignore: cast_nullable_to_non_nullable
              as Customer?,
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

  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res>? get customerSelected {
    if (_value.customerSelected == null) {
      return null;
    }

    return $CustomerCopyWith<$Res>(_value.customerSelected!, (value) {
      return _then(_value.copyWith(customerSelected: value) as $Val);
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
      {Flight? flight,
      double animation,
      bool showMoreInfor,
      ItemViewEnum itemView,
      List<SeatSelected> chairsSelected,
      List<TicketInformation> ticInformation,
      Customer? customerSelected});

  @override
  $FlightCopyWith<$Res>? get flight;
  @override
  $CustomerCopyWith<$Res>? get customerSelected;
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
    Object? flight = freezed,
    Object? animation = null,
    Object? showMoreInfor = null,
    Object? itemView = null,
    Object? chairsSelected = null,
    Object? ticInformation = null,
    Object? customerSelected = freezed,
  }) {
    return _then(_$_FlightDetailModelState(
      flight: freezed == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as Flight?,
      animation: null == animation
          ? _value.animation
          : animation // ignore: cast_nullable_to_non_nullable
              as double,
      showMoreInfor: null == showMoreInfor
          ? _value.showMoreInfor
          : showMoreInfor // ignore: cast_nullable_to_non_nullable
              as bool,
      itemView: null == itemView
          ? _value.itemView
          : itemView // ignore: cast_nullable_to_non_nullable
              as ItemViewEnum,
      chairsSelected: null == chairsSelected
          ? _value._chairsSelected
          : chairsSelected // ignore: cast_nullable_to_non_nullable
              as List<SeatSelected>,
      ticInformation: null == ticInformation
          ? _value._ticInformation
          : ticInformation // ignore: cast_nullable_to_non_nullable
              as List<TicketInformation>,
      customerSelected: freezed == customerSelected
          ? _value.customerSelected
          : customerSelected // ignore: cast_nullable_to_non_nullable
              as Customer?,
    ));
  }
}

/// @nodoc

class _$_FlightDetailModelState implements _FlightDetailModelState {
  const _$_FlightDetailModelState(
      {this.flight,
      required this.animation,
      required this.showMoreInfor,
      required this.itemView,
      required final List<SeatSelected> chairsSelected,
      required final List<TicketInformation> ticInformation,
      this.customerSelected})
      : _chairsSelected = chairsSelected,
        _ticInformation = ticInformation;

  @override
  final Flight? flight;
  @override
  final double animation;
  @override
  final bool showMoreInfor;
  @override
  final ItemViewEnum itemView;
  final List<SeatSelected> _chairsSelected;
  @override
  List<SeatSelected> get chairsSelected {
    if (_chairsSelected is EqualUnmodifiableListView) return _chairsSelected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chairsSelected);
  }

  final List<TicketInformation> _ticInformation;
  @override
  List<TicketInformation> get ticInformation {
    if (_ticInformation is EqualUnmodifiableListView) return _ticInformation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ticInformation);
  }

  @override
  final Customer? customerSelected;

  @override
  String toString() {
    return 'FlightDetailModelState(flight: $flight, animation: $animation, showMoreInfor: $showMoreInfor, itemView: $itemView, chairsSelected: $chairsSelected, ticInformation: $ticInformation, customerSelected: $customerSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlightDetailModelState &&
            (identical(other.flight, flight) || other.flight == flight) &&
            (identical(other.animation, animation) ||
                other.animation == animation) &&
            (identical(other.showMoreInfor, showMoreInfor) ||
                other.showMoreInfor == showMoreInfor) &&
            (identical(other.itemView, itemView) ||
                other.itemView == itemView) &&
            const DeepCollectionEquality()
                .equals(other._chairsSelected, _chairsSelected) &&
            const DeepCollectionEquality()
                .equals(other._ticInformation, _ticInformation) &&
            (identical(other.customerSelected, customerSelected) ||
                other.customerSelected == customerSelected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      flight,
      animation,
      showMoreInfor,
      itemView,
      const DeepCollectionEquality().hash(_chairsSelected),
      const DeepCollectionEquality().hash(_ticInformation),
      customerSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlightDetailModelStateCopyWith<_$_FlightDetailModelState> get copyWith =>
      __$$_FlightDetailModelStateCopyWithImpl<_$_FlightDetailModelState>(
          this, _$identity);
}

abstract class _FlightDetailModelState implements FlightDetailModelState {
  const factory _FlightDetailModelState(
      {final Flight? flight,
      required final double animation,
      required final bool showMoreInfor,
      required final ItemViewEnum itemView,
      required final List<SeatSelected> chairsSelected,
      required final List<TicketInformation> ticInformation,
      final Customer? customerSelected}) = _$_FlightDetailModelState;

  @override
  Flight? get flight;
  @override
  double get animation;
  @override
  bool get showMoreInfor;
  @override
  ItemViewEnum get itemView;
  @override
  List<SeatSelected> get chairsSelected;
  @override
  List<TicketInformation> get ticInformation;
  @override
  Customer? get customerSelected;
  @override
  @JsonKey(ignore: true)
  _$$_FlightDetailModelStateCopyWith<_$_FlightDetailModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
