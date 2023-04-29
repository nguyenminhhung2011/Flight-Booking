// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_ticket_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListTicketModelState {
  List<Ticket> get tickets => throw _privateConstructorUsedError;
  ItemViewEnum get itemView => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListTicketModelStateCopyWith<ListTicketModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTicketModelStateCopyWith<$Res> {
  factory $ListTicketModelStateCopyWith(ListTicketModelState value,
          $Res Function(ListTicketModelState) then) =
      _$ListTicketModelStateCopyWithImpl<$Res, ListTicketModelState>;
  @useResult
  $Res call({List<Ticket> tickets, ItemViewEnum itemView});
}

/// @nodoc
class _$ListTicketModelStateCopyWithImpl<$Res,
        $Val extends ListTicketModelState>
    implements $ListTicketModelStateCopyWith<$Res> {
  _$ListTicketModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickets = null,
    Object? itemView = null,
  }) {
    return _then(_value.copyWith(
      tickets: null == tickets
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      itemView: null == itemView
          ? _value.itemView
          : itemView // ignore: cast_nullable_to_non_nullable
              as ItemViewEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListTicketModelStateCopyWith<$Res>
    implements $ListTicketModelStateCopyWith<$Res> {
  factory _$$_ListTicketModelStateCopyWith(_$_ListTicketModelState value,
          $Res Function(_$_ListTicketModelState) then) =
      __$$_ListTicketModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Ticket> tickets, ItemViewEnum itemView});
}

/// @nodoc
class __$$_ListTicketModelStateCopyWithImpl<$Res>
    extends _$ListTicketModelStateCopyWithImpl<$Res, _$_ListTicketModelState>
    implements _$$_ListTicketModelStateCopyWith<$Res> {
  __$$_ListTicketModelStateCopyWithImpl(_$_ListTicketModelState _value,
      $Res Function(_$_ListTicketModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickets = null,
    Object? itemView = null,
  }) {
    return _then(_$_ListTicketModelState(
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      itemView: null == itemView
          ? _value.itemView
          : itemView // ignore: cast_nullable_to_non_nullable
              as ItemViewEnum,
    ));
  }
}

/// @nodoc

class _$_ListTicketModelState implements _ListTicketModelState {
  const _$_ListTicketModelState(
      {required final List<Ticket> tickets, required this.itemView})
      : _tickets = tickets;

  final List<Ticket> _tickets;
  @override
  List<Ticket> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  final ItemViewEnum itemView;

  @override
  String toString() {
    return 'ListTicketModelState(tickets: $tickets, itemView: $itemView)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListTicketModelState &&
            const DeepCollectionEquality().equals(other._tickets, _tickets) &&
            (identical(other.itemView, itemView) ||
                other.itemView == itemView));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tickets), itemView);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListTicketModelStateCopyWith<_$_ListTicketModelState> get copyWith =>
      __$$_ListTicketModelStateCopyWithImpl<_$_ListTicketModelState>(
          this, _$identity);
}

abstract class _ListTicketModelState implements ListTicketModelState {
  const factory _ListTicketModelState(
      {required final List<Ticket> tickets,
      required final ItemViewEnum itemView}) = _$_ListTicketModelState;

  @override
  List<Ticket> get tickets;
  @override
  ItemViewEnum get itemView;
  @override
  @JsonKey(ignore: true)
  _$$_ListTicketModelStateCopyWith<_$_ListTicketModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
