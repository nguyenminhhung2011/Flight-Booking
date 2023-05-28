// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flight_history_detail_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FlightHistoryDetailModelState {
  int get customerViewIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlightHistoryDetailModelStateCopyWith<FlightHistoryDetailModelState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlightHistoryDetailModelStateCopyWith<$Res> {
  factory $FlightHistoryDetailModelStateCopyWith(
          FlightHistoryDetailModelState value,
          $Res Function(FlightHistoryDetailModelState) then) =
      _$FlightHistoryDetailModelStateCopyWithImpl<$Res,
          FlightHistoryDetailModelState>;
  @useResult
  $Res call({int customerViewIndex});
}

/// @nodoc
class _$FlightHistoryDetailModelStateCopyWithImpl<$Res,
        $Val extends FlightHistoryDetailModelState>
    implements $FlightHistoryDetailModelStateCopyWith<$Res> {
  _$FlightHistoryDetailModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerViewIndex = null,
  }) {
    return _then(_value.copyWith(
      customerViewIndex: null == customerViewIndex
          ? _value.customerViewIndex
          : customerViewIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FlightHistoryDetailModelStateCopyWith<$Res>
    implements $FlightHistoryDetailModelStateCopyWith<$Res> {
  factory _$$_FlightHistoryDetailModelStateCopyWith(
          _$_FlightHistoryDetailModelState value,
          $Res Function(_$_FlightHistoryDetailModelState) then) =
      __$$_FlightHistoryDetailModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int customerViewIndex});
}

/// @nodoc
class __$$_FlightHistoryDetailModelStateCopyWithImpl<$Res>
    extends _$FlightHistoryDetailModelStateCopyWithImpl<$Res,
        _$_FlightHistoryDetailModelState>
    implements _$$_FlightHistoryDetailModelStateCopyWith<$Res> {
  __$$_FlightHistoryDetailModelStateCopyWithImpl(
      _$_FlightHistoryDetailModelState _value,
      $Res Function(_$_FlightHistoryDetailModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerViewIndex = null,
  }) {
    return _then(_$_FlightHistoryDetailModelState(
      customerViewIndex: null == customerViewIndex
          ? _value.customerViewIndex
          : customerViewIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FlightHistoryDetailModelState
    implements _FlightHistoryDetailModelState {
  const _$_FlightHistoryDetailModelState({required this.customerViewIndex});

  @override
  final int customerViewIndex;

  @override
  String toString() {
    return 'FlightHistoryDetailModelState(customerViewIndex: $customerViewIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlightHistoryDetailModelState &&
            (identical(other.customerViewIndex, customerViewIndex) ||
                other.customerViewIndex == customerViewIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerViewIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlightHistoryDetailModelStateCopyWith<_$_FlightHistoryDetailModelState>
      get copyWith => __$$_FlightHistoryDetailModelStateCopyWithImpl<
          _$_FlightHistoryDetailModelState>(this, _$identity);
}

abstract class _FlightHistoryDetailModelState
    implements FlightHistoryDetailModelState {
  const factory _FlightHistoryDetailModelState(
          {required final int customerViewIndex}) =
      _$_FlightHistoryDetailModelState;

  @override
  int get customerViewIndex;
  @override
  @JsonKey(ignore: true)
  _$$_FlightHistoryDetailModelStateCopyWith<_$_FlightHistoryDetailModelState>
      get copyWith => throw _privateConstructorUsedError;
}
