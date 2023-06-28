// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_ticket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListTicketEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ItemViewEnum itemView) changeTicketItemView,
    required TResult Function() fetchAllTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ItemViewEnum itemView)? changeTicketItemView,
    TResult? Function()? fetchAllTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ItemViewEnum itemView)? changeTicketItemView,
    TResult Function()? fetchAllTicket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeTicketItemView value) changeTicketItemView,
    required TResult Function(_FetchAllTicket value) fetchAllTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeTicketItemView value)? changeTicketItemView,
    TResult? Function(_FetchAllTicket value)? fetchAllTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeTicketItemView value)? changeTicketItemView,
    TResult Function(_FetchAllTicket value)? fetchAllTicket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTicketEventCopyWith<$Res> {
  factory $ListTicketEventCopyWith(
          ListTicketEvent value, $Res Function(ListTicketEvent) then) =
      _$ListTicketEventCopyWithImpl<$Res, ListTicketEvent>;
}

/// @nodoc
class _$ListTicketEventCopyWithImpl<$Res, $Val extends ListTicketEvent>
    implements $ListTicketEventCopyWith<$Res> {
  _$ListTicketEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$ListTicketEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ListTicketEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ItemViewEnum itemView) changeTicketItemView,
    required TResult Function() fetchAllTicket,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ItemViewEnum itemView)? changeTicketItemView,
    TResult? Function()? fetchAllTicket,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ItemViewEnum itemView)? changeTicketItemView,
    TResult Function()? fetchAllTicket,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeTicketItemView value) changeTicketItemView,
    required TResult Function(_FetchAllTicket value) fetchAllTicket,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeTicketItemView value)? changeTicketItemView,
    TResult? Function(_FetchAllTicket value)? fetchAllTicket,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeTicketItemView value)? changeTicketItemView,
    TResult Function(_FetchAllTicket value)? fetchAllTicket,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ListTicketEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ChangeTicketItemViewCopyWith<$Res> {
  factory _$$_ChangeTicketItemViewCopyWith(_$_ChangeTicketItemView value,
          $Res Function(_$_ChangeTicketItemView) then) =
      __$$_ChangeTicketItemViewCopyWithImpl<$Res>;
  @useResult
  $Res call({ItemViewEnum itemView});
}

/// @nodoc
class __$$_ChangeTicketItemViewCopyWithImpl<$Res>
    extends _$ListTicketEventCopyWithImpl<$Res, _$_ChangeTicketItemView>
    implements _$$_ChangeTicketItemViewCopyWith<$Res> {
  __$$_ChangeTicketItemViewCopyWithImpl(_$_ChangeTicketItemView _value,
      $Res Function(_$_ChangeTicketItemView) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemView = null,
  }) {
    return _then(_$_ChangeTicketItemView(
      null == itemView
          ? _value.itemView
          : itemView // ignore: cast_nullable_to_non_nullable
              as ItemViewEnum,
    ));
  }
}

/// @nodoc

class _$_ChangeTicketItemView implements _ChangeTicketItemView {
  const _$_ChangeTicketItemView(this.itemView);

  @override
  final ItemViewEnum itemView;

  @override
  String toString() {
    return 'ListTicketEvent.changeTicketItemView(itemView: $itemView)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeTicketItemView &&
            (identical(other.itemView, itemView) ||
                other.itemView == itemView));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemView);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeTicketItemViewCopyWith<_$_ChangeTicketItemView> get copyWith =>
      __$$_ChangeTicketItemViewCopyWithImpl<_$_ChangeTicketItemView>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ItemViewEnum itemView) changeTicketItemView,
    required TResult Function() fetchAllTicket,
  }) {
    return changeTicketItemView(itemView);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ItemViewEnum itemView)? changeTicketItemView,
    TResult? Function()? fetchAllTicket,
  }) {
    return changeTicketItemView?.call(itemView);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ItemViewEnum itemView)? changeTicketItemView,
    TResult Function()? fetchAllTicket,
    required TResult orElse(),
  }) {
    if (changeTicketItemView != null) {
      return changeTicketItemView(itemView);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeTicketItemView value) changeTicketItemView,
    required TResult Function(_FetchAllTicket value) fetchAllTicket,
  }) {
    return changeTicketItemView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeTicketItemView value)? changeTicketItemView,
    TResult? Function(_FetchAllTicket value)? fetchAllTicket,
  }) {
    return changeTicketItemView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeTicketItemView value)? changeTicketItemView,
    TResult Function(_FetchAllTicket value)? fetchAllTicket,
    required TResult orElse(),
  }) {
    if (changeTicketItemView != null) {
      return changeTicketItemView(this);
    }
    return orElse();
  }
}

abstract class _ChangeTicketItemView implements ListTicketEvent {
  const factory _ChangeTicketItemView(final ItemViewEnum itemView) =
      _$_ChangeTicketItemView;

  ItemViewEnum get itemView;
  @JsonKey(ignore: true)
  _$$_ChangeTicketItemViewCopyWith<_$_ChangeTicketItemView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchAllTicketCopyWith<$Res> {
  factory _$$_FetchAllTicketCopyWith(
          _$_FetchAllTicket value, $Res Function(_$_FetchAllTicket) then) =
      __$$_FetchAllTicketCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchAllTicketCopyWithImpl<$Res>
    extends _$ListTicketEventCopyWithImpl<$Res, _$_FetchAllTicket>
    implements _$$_FetchAllTicketCopyWith<$Res> {
  __$$_FetchAllTicketCopyWithImpl(
      _$_FetchAllTicket _value, $Res Function(_$_FetchAllTicket) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchAllTicket implements _FetchAllTicket {
  const _$_FetchAllTicket();

  @override
  String toString() {
    return 'ListTicketEvent.fetchAllTicket()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchAllTicket);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ItemViewEnum itemView) changeTicketItemView,
    required TResult Function() fetchAllTicket,
  }) {
    return fetchAllTicket();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ItemViewEnum itemView)? changeTicketItemView,
    TResult? Function()? fetchAllTicket,
  }) {
    return fetchAllTicket?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ItemViewEnum itemView)? changeTicketItemView,
    TResult Function()? fetchAllTicket,
    required TResult orElse(),
  }) {
    if (fetchAllTicket != null) {
      return fetchAllTicket();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeTicketItemView value) changeTicketItemView,
    required TResult Function(_FetchAllTicket value) fetchAllTicket,
  }) {
    return fetchAllTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeTicketItemView value)? changeTicketItemView,
    TResult? Function(_FetchAllTicket value)? fetchAllTicket,
  }) {
    return fetchAllTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeTicketItemView value)? changeTicketItemView,
    TResult Function(_FetchAllTicket value)? fetchAllTicket,
    required TResult orElse(),
  }) {
    if (fetchAllTicket != null) {
      return fetchAllTicket(this);
    }
    return orElse();
  }
}

abstract class _FetchAllTicket implements ListTicketEvent {
  const factory _FetchAllTicket() = _$_FetchAllTicket;
}

/// @nodoc
mixin _$ListTicketState {
  ListTicketModelState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListTicketModelState data) initial,
    required TResult Function(ListTicketModelState data) loading,
    required TResult Function(ListTicketModelState data) fetchTicketsSuccess,
    required TResult Function(ListTicketModelState data, String message)
        fetchTicketsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListTicketModelState data)? initial,
    TResult? Function(ListTicketModelState data)? loading,
    TResult? Function(ListTicketModelState data)? fetchTicketsSuccess,
    TResult? Function(ListTicketModelState data, String message)?
        fetchTicketsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListTicketModelState data)? initial,
    TResult Function(ListTicketModelState data)? loading,
    TResult Function(ListTicketModelState data)? fetchTicketsSuccess,
    TResult Function(ListTicketModelState data, String message)?
        fetchTicketsFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchTicketsSuccess value) fetchTicketsSuccess,
    required TResult Function(_FetchTicketsFailed value) fetchTicketsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchTicketsSuccess value)? fetchTicketsSuccess,
    TResult? Function(_FetchTicketsFailed value)? fetchTicketsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchTicketsSuccess value)? fetchTicketsSuccess,
    TResult Function(_FetchTicketsFailed value)? fetchTicketsFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListTicketStateCopyWith<ListTicketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTicketStateCopyWith<$Res> {
  factory $ListTicketStateCopyWith(
          ListTicketState value, $Res Function(ListTicketState) then) =
      _$ListTicketStateCopyWithImpl<$Res, ListTicketState>;
  @useResult
  $Res call({ListTicketModelState data});

  $ListTicketModelStateCopyWith<$Res> get data;
}

/// @nodoc
class _$ListTicketStateCopyWithImpl<$Res, $Val extends ListTicketState>
    implements $ListTicketStateCopyWith<$Res> {
  _$ListTicketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListTicketModelState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ListTicketModelStateCopyWith<$Res> get data {
    return $ListTicketModelStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ListTicketStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListTicketModelState data});

  @override
  $ListTicketModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ListTicketStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Initial(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListTicketModelState,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final ListTicketModelState data;

  @override
  String toString() {
    return 'ListTicketState.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListTicketModelState data) initial,
    required TResult Function(ListTicketModelState data) loading,
    required TResult Function(ListTicketModelState data) fetchTicketsSuccess,
    required TResult Function(ListTicketModelState data, String message)
        fetchTicketsFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListTicketModelState data)? initial,
    TResult? Function(ListTicketModelState data)? loading,
    TResult? Function(ListTicketModelState data)? fetchTicketsSuccess,
    TResult? Function(ListTicketModelState data, String message)?
        fetchTicketsFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListTicketModelState data)? initial,
    TResult Function(ListTicketModelState data)? loading,
    TResult Function(ListTicketModelState data)? fetchTicketsSuccess,
    TResult Function(ListTicketModelState data, String message)?
        fetchTicketsFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchTicketsSuccess value) fetchTicketsSuccess,
    required TResult Function(_FetchTicketsFailed value) fetchTicketsFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchTicketsSuccess value)? fetchTicketsSuccess,
    TResult? Function(_FetchTicketsFailed value)? fetchTicketsFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchTicketsSuccess value)? fetchTicketsSuccess,
    TResult Function(_FetchTicketsFailed value)? fetchTicketsFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends ListTicketState {
  const factory _Initial({required final ListTicketModelState data}) =
      _$_Initial;
  const _Initial._() : super._();

  @override
  ListTicketModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $ListTicketStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListTicketModelState data});

  @override
  $ListTicketModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$ListTicketStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Loading(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListTicketModelState,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final ListTicketModelState data;

  @override
  String toString() {
    return 'ListTicketState.loading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListTicketModelState data) initial,
    required TResult Function(ListTicketModelState data) loading,
    required TResult Function(ListTicketModelState data) fetchTicketsSuccess,
    required TResult Function(ListTicketModelState data, String message)
        fetchTicketsFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListTicketModelState data)? initial,
    TResult? Function(ListTicketModelState data)? loading,
    TResult? Function(ListTicketModelState data)? fetchTicketsSuccess,
    TResult? Function(ListTicketModelState data, String message)?
        fetchTicketsFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListTicketModelState data)? initial,
    TResult Function(ListTicketModelState data)? loading,
    TResult Function(ListTicketModelState data)? fetchTicketsSuccess,
    TResult Function(ListTicketModelState data, String message)?
        fetchTicketsFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchTicketsSuccess value) fetchTicketsSuccess,
    required TResult Function(_FetchTicketsFailed value) fetchTicketsFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchTicketsSuccess value)? fetchTicketsSuccess,
    TResult? Function(_FetchTicketsFailed value)? fetchTicketsFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchTicketsSuccess value)? fetchTicketsSuccess,
    TResult Function(_FetchTicketsFailed value)? fetchTicketsFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends ListTicketState {
  const factory _Loading({required final ListTicketModelState data}) =
      _$_Loading;
  const _Loading._() : super._();

  @override
  ListTicketModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchTicketsSuccessCopyWith<$Res>
    implements $ListTicketStateCopyWith<$Res> {
  factory _$$_FetchTicketsSuccessCopyWith(_$_FetchTicketsSuccess value,
          $Res Function(_$_FetchTicketsSuccess) then) =
      __$$_FetchTicketsSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListTicketModelState data});

  @override
  $ListTicketModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FetchTicketsSuccessCopyWithImpl<$Res>
    extends _$ListTicketStateCopyWithImpl<$Res, _$_FetchTicketsSuccess>
    implements _$$_FetchTicketsSuccessCopyWith<$Res> {
  __$$_FetchTicketsSuccessCopyWithImpl(_$_FetchTicketsSuccess _value,
      $Res Function(_$_FetchTicketsSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_FetchTicketsSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListTicketModelState,
    ));
  }
}

/// @nodoc

class _$_FetchTicketsSuccess extends _FetchTicketsSuccess {
  const _$_FetchTicketsSuccess({required this.data}) : super._();

  @override
  final ListTicketModelState data;

  @override
  String toString() {
    return 'ListTicketState.fetchTicketsSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchTicketsSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchTicketsSuccessCopyWith<_$_FetchTicketsSuccess> get copyWith =>
      __$$_FetchTicketsSuccessCopyWithImpl<_$_FetchTicketsSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListTicketModelState data) initial,
    required TResult Function(ListTicketModelState data) loading,
    required TResult Function(ListTicketModelState data) fetchTicketsSuccess,
    required TResult Function(ListTicketModelState data, String message)
        fetchTicketsFailed,
  }) {
    return fetchTicketsSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListTicketModelState data)? initial,
    TResult? Function(ListTicketModelState data)? loading,
    TResult? Function(ListTicketModelState data)? fetchTicketsSuccess,
    TResult? Function(ListTicketModelState data, String message)?
        fetchTicketsFailed,
  }) {
    return fetchTicketsSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListTicketModelState data)? initial,
    TResult Function(ListTicketModelState data)? loading,
    TResult Function(ListTicketModelState data)? fetchTicketsSuccess,
    TResult Function(ListTicketModelState data, String message)?
        fetchTicketsFailed,
    required TResult orElse(),
  }) {
    if (fetchTicketsSuccess != null) {
      return fetchTicketsSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchTicketsSuccess value) fetchTicketsSuccess,
    required TResult Function(_FetchTicketsFailed value) fetchTicketsFailed,
  }) {
    return fetchTicketsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchTicketsSuccess value)? fetchTicketsSuccess,
    TResult? Function(_FetchTicketsFailed value)? fetchTicketsFailed,
  }) {
    return fetchTicketsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchTicketsSuccess value)? fetchTicketsSuccess,
    TResult Function(_FetchTicketsFailed value)? fetchTicketsFailed,
    required TResult orElse(),
  }) {
    if (fetchTicketsSuccess != null) {
      return fetchTicketsSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchTicketsSuccess extends ListTicketState {
  const factory _FetchTicketsSuccess(
      {required final ListTicketModelState data}) = _$_FetchTicketsSuccess;
  const _FetchTicketsSuccess._() : super._();

  @override
  ListTicketModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_FetchTicketsSuccessCopyWith<_$_FetchTicketsSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchTicketsFailedCopyWith<$Res>
    implements $ListTicketStateCopyWith<$Res> {
  factory _$$_FetchTicketsFailedCopyWith(_$_FetchTicketsFailed value,
          $Res Function(_$_FetchTicketsFailed) then) =
      __$$_FetchTicketsFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListTicketModelState data, String message});

  @override
  $ListTicketModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FetchTicketsFailedCopyWithImpl<$Res>
    extends _$ListTicketStateCopyWithImpl<$Res, _$_FetchTicketsFailed>
    implements _$$_FetchTicketsFailedCopyWith<$Res> {
  __$$_FetchTicketsFailedCopyWithImpl(
      _$_FetchTicketsFailed _value, $Res Function(_$_FetchTicketsFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_FetchTicketsFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListTicketModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchTicketsFailed extends _FetchTicketsFailed {
  const _$_FetchTicketsFailed({required this.data, required this.message})
      : super._();

  @override
  final ListTicketModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'ListTicketState.fetchTicketsFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchTicketsFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchTicketsFailedCopyWith<_$_FetchTicketsFailed> get copyWith =>
      __$$_FetchTicketsFailedCopyWithImpl<_$_FetchTicketsFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListTicketModelState data) initial,
    required TResult Function(ListTicketModelState data) loading,
    required TResult Function(ListTicketModelState data) fetchTicketsSuccess,
    required TResult Function(ListTicketModelState data, String message)
        fetchTicketsFailed,
  }) {
    return fetchTicketsFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListTicketModelState data)? initial,
    TResult? Function(ListTicketModelState data)? loading,
    TResult? Function(ListTicketModelState data)? fetchTicketsSuccess,
    TResult? Function(ListTicketModelState data, String message)?
        fetchTicketsFailed,
  }) {
    return fetchTicketsFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListTicketModelState data)? initial,
    TResult Function(ListTicketModelState data)? loading,
    TResult Function(ListTicketModelState data)? fetchTicketsSuccess,
    TResult Function(ListTicketModelState data, String message)?
        fetchTicketsFailed,
    required TResult orElse(),
  }) {
    if (fetchTicketsFailed != null) {
      return fetchTicketsFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchTicketsSuccess value) fetchTicketsSuccess,
    required TResult Function(_FetchTicketsFailed value) fetchTicketsFailed,
  }) {
    return fetchTicketsFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchTicketsSuccess value)? fetchTicketsSuccess,
    TResult? Function(_FetchTicketsFailed value)? fetchTicketsFailed,
  }) {
    return fetchTicketsFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchTicketsSuccess value)? fetchTicketsSuccess,
    TResult Function(_FetchTicketsFailed value)? fetchTicketsFailed,
    required TResult orElse(),
  }) {
    if (fetchTicketsFailed != null) {
      return fetchTicketsFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchTicketsFailed extends ListTicketState {
  const factory _FetchTicketsFailed(
      {required final ListTicketModelState data,
      required final String message}) = _$_FetchTicketsFailed;
  const _FetchTicketsFailed._() : super._();

  @override
  ListTicketModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_FetchTicketsFailedCopyWith<_$_FetchTicketsFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
