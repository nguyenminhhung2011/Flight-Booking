// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_tic_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListTicModelState {
  List<Ticket> get tickets => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListTicModelStateCopyWith<ListTicModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTicModelStateCopyWith<$Res> {
  factory $ListTicModelStateCopyWith(
          ListTicModelState value, $Res Function(ListTicModelState) then) =
      _$ListTicModelStateCopyWithImpl<$Res, ListTicModelState>;
  @useResult
  $Res call({List<Ticket> tickets});
}

/// @nodoc
class _$ListTicModelStateCopyWithImpl<$Res, $Val extends ListTicModelState>
    implements $ListTicModelStateCopyWith<$Res> {
  _$ListTicModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickets = null,
  }) {
    return _then(_value.copyWith(
      tickets: null == tickets
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListTicModelStateCopyWith<$Res>
    implements $ListTicModelStateCopyWith<$Res> {
  factory _$$_ListTicModelStateCopyWith(_$_ListTicModelState value,
          $Res Function(_$_ListTicModelState) then) =
      __$$_ListTicModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Ticket> tickets});
}

/// @nodoc
class __$$_ListTicModelStateCopyWithImpl<$Res>
    extends _$ListTicModelStateCopyWithImpl<$Res, _$_ListTicModelState>
    implements _$$_ListTicModelStateCopyWith<$Res> {
  __$$_ListTicModelStateCopyWithImpl(
      _$_ListTicModelState _value, $Res Function(_$_ListTicModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickets = null,
  }) {
    return _then(_$_ListTicModelState(
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
    ));
  }
}

/// @nodoc

class _$_ListTicModelState implements _ListTicModelState {
  const _$_ListTicModelState({required final List<Ticket> tickets})
      : _tickets = tickets;

  final List<Ticket> _tickets;
  @override
  List<Ticket> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  String toString() {
    return 'ListTicModelState(tickets: $tickets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListTicModelState &&
            const DeepCollectionEquality().equals(other._tickets, _tickets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tickets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListTicModelStateCopyWith<_$_ListTicModelState> get copyWith =>
      __$$_ListTicModelStateCopyWithImpl<_$_ListTicModelState>(
          this, _$identity);
}

abstract class _ListTicModelState implements ListTicModelState {
  const factory _ListTicModelState({required final List<Ticket> tickets}) =
      _$_ListTicModelState;

  @override
  List<Ticket> get tickets;
  @override
  @JsonKey(ignore: true)
  _$$_ListTicModelStateCopyWith<_$_ListTicModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
