// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_tic_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListTicEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String ticID) selectTic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String ticID)? selectTic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String ticID)? selectTic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectTic value) selectTic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectTic value)? selectTic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectTic value)? selectTic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTicEventCopyWith<$Res> {
  factory $ListTicEventCopyWith(
          ListTicEvent value, $Res Function(ListTicEvent) then) =
      _$ListTicEventCopyWithImpl<$Res, ListTicEvent>;
}

/// @nodoc
class _$ListTicEventCopyWithImpl<$Res, $Val extends ListTicEvent>
    implements $ListTicEventCopyWith<$Res> {
  _$ListTicEventCopyWithImpl(this._value, this._then);

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
    extends _$ListTicEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ListTicEvent.started()';
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
    required TResult Function(String ticID) selectTic,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String ticID)? selectTic,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String ticID)? selectTic,
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
    required TResult Function(_SelectTic value) selectTic,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectTic value)? selectTic,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectTic value)? selectTic,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ListTicEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_SelectTicCopyWith<$Res> {
  factory _$$_SelectTicCopyWith(
          _$_SelectTic value, $Res Function(_$_SelectTic) then) =
      __$$_SelectTicCopyWithImpl<$Res>;
  @useResult
  $Res call({String ticID});
}

/// @nodoc
class __$$_SelectTicCopyWithImpl<$Res>
    extends _$ListTicEventCopyWithImpl<$Res, _$_SelectTic>
    implements _$$_SelectTicCopyWith<$Res> {
  __$$_SelectTicCopyWithImpl(
      _$_SelectTic _value, $Res Function(_$_SelectTic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticID = null,
  }) {
    return _then(_$_SelectTic(
      null == ticID
          ? _value.ticID
          : ticID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectTic implements _SelectTic {
  const _$_SelectTic(this.ticID);

  @override
  final String ticID;

  @override
  String toString() {
    return 'ListTicEvent.selectTic(ticID: $ticID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectTic &&
            (identical(other.ticID, ticID) || other.ticID == ticID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectTicCopyWith<_$_SelectTic> get copyWith =>
      __$$_SelectTicCopyWithImpl<_$_SelectTic>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String ticID) selectTic,
  }) {
    return selectTic(ticID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String ticID)? selectTic,
  }) {
    return selectTic?.call(ticID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String ticID)? selectTic,
    required TResult orElse(),
  }) {
    if (selectTic != null) {
      return selectTic(ticID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectTic value) selectTic,
  }) {
    return selectTic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectTic value)? selectTic,
  }) {
    return selectTic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectTic value)? selectTic,
    required TResult orElse(),
  }) {
    if (selectTic != null) {
      return selectTic(this);
    }
    return orElse();
  }
}

abstract class _SelectTic implements ListTicEvent {
  const factory _SelectTic(final String ticID) = _$_SelectTic;

  String get ticID;
  @JsonKey(ignore: true)
  _$$_SelectTicCopyWith<_$_SelectTic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ListTicState {
  ListTicModelState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListTicModelState data) initial,
    required TResult Function(ListTicModelState data) loading,
    required TResult Function(ListTicModelState data, String ticId)
        selectListTicSuccess,
    required TResult Function(ListTicModelState data, String message)
        selectListTicFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListTicModelState data)? initial,
    TResult? Function(ListTicModelState data)? loading,
    TResult? Function(ListTicModelState data, String ticId)?
        selectListTicSuccess,
    TResult? Function(ListTicModelState data, String message)?
        selectListTicFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListTicModelState data)? initial,
    TResult Function(ListTicModelState data)? loading,
    TResult Function(ListTicModelState data, String ticId)?
        selectListTicSuccess,
    TResult Function(ListTicModelState data, String message)?
        selectListTicFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListTicSuccess value) selectListTicSuccess,
    required TResult Function(_SelectListTicFailed value) selectListTicFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListTicSuccess value)? selectListTicSuccess,
    TResult? Function(_SelectListTicFailed value)? selectListTicFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListTicSuccess value)? selectListTicSuccess,
    TResult Function(_SelectListTicFailed value)? selectListTicFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListTicStateCopyWith<ListTicState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTicStateCopyWith<$Res> {
  factory $ListTicStateCopyWith(
          ListTicState value, $Res Function(ListTicState) then) =
      _$ListTicStateCopyWithImpl<$Res, ListTicState>;
  @useResult
  $Res call({ListTicModelState data});

  $ListTicModelStateCopyWith<$Res> get data;
}

/// @nodoc
class _$ListTicStateCopyWithImpl<$Res, $Val extends ListTicState>
    implements $ListTicStateCopyWith<$Res> {
  _$ListTicStateCopyWithImpl(this._value, this._then);

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
              as ListTicModelState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ListTicModelStateCopyWith<$Res> get data {
    return $ListTicModelStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ListTicStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListTicModelState data});

  @override
  $ListTicModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ListTicStateCopyWithImpl<$Res, _$_Initial>
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
              as ListTicModelState,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final ListTicModelState data;

  @override
  String toString() {
    return 'ListTicState.initial(data: $data)';
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
    required TResult Function(ListTicModelState data) initial,
    required TResult Function(ListTicModelState data) loading,
    required TResult Function(ListTicModelState data, String ticId)
        selectListTicSuccess,
    required TResult Function(ListTicModelState data, String message)
        selectListTicFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListTicModelState data)? initial,
    TResult? Function(ListTicModelState data)? loading,
    TResult? Function(ListTicModelState data, String ticId)?
        selectListTicSuccess,
    TResult? Function(ListTicModelState data, String message)?
        selectListTicFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListTicModelState data)? initial,
    TResult Function(ListTicModelState data)? loading,
    TResult Function(ListTicModelState data, String ticId)?
        selectListTicSuccess,
    TResult Function(ListTicModelState data, String message)?
        selectListTicFailed,
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
    required TResult Function(_SelectListTicSuccess value) selectListTicSuccess,
    required TResult Function(_SelectListTicFailed value) selectListTicFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListTicSuccess value)? selectListTicSuccess,
    TResult? Function(_SelectListTicFailed value)? selectListTicFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListTicSuccess value)? selectListTicSuccess,
    TResult Function(_SelectListTicFailed value)? selectListTicFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends ListTicState {
  const factory _Initial({required final ListTicModelState data}) = _$_Initial;
  const _Initial._() : super._();

  @override
  ListTicModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $ListTicStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListTicModelState data});

  @override
  $ListTicModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$ListTicStateCopyWithImpl<$Res, _$_Loading>
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
              as ListTicModelState,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final ListTicModelState data;

  @override
  String toString() {
    return 'ListTicState.loading(data: $data)';
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
    required TResult Function(ListTicModelState data) initial,
    required TResult Function(ListTicModelState data) loading,
    required TResult Function(ListTicModelState data, String ticId)
        selectListTicSuccess,
    required TResult Function(ListTicModelState data, String message)
        selectListTicFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListTicModelState data)? initial,
    TResult? Function(ListTicModelState data)? loading,
    TResult? Function(ListTicModelState data, String ticId)?
        selectListTicSuccess,
    TResult? Function(ListTicModelState data, String message)?
        selectListTicFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListTicModelState data)? initial,
    TResult Function(ListTicModelState data)? loading,
    TResult Function(ListTicModelState data, String ticId)?
        selectListTicSuccess,
    TResult Function(ListTicModelState data, String message)?
        selectListTicFailed,
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
    required TResult Function(_SelectListTicSuccess value) selectListTicSuccess,
    required TResult Function(_SelectListTicFailed value) selectListTicFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListTicSuccess value)? selectListTicSuccess,
    TResult? Function(_SelectListTicFailed value)? selectListTicFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListTicSuccess value)? selectListTicSuccess,
    TResult Function(_SelectListTicFailed value)? selectListTicFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends ListTicState {
  const factory _Loading({required final ListTicModelState data}) = _$_Loading;
  const _Loading._() : super._();

  @override
  ListTicModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectListTicSuccessCopyWith<$Res>
    implements $ListTicStateCopyWith<$Res> {
  factory _$$_SelectListTicSuccessCopyWith(_$_SelectListTicSuccess value,
          $Res Function(_$_SelectListTicSuccess) then) =
      __$$_SelectListTicSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListTicModelState data, String ticId});

  @override
  $ListTicModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SelectListTicSuccessCopyWithImpl<$Res>
    extends _$ListTicStateCopyWithImpl<$Res, _$_SelectListTicSuccess>
    implements _$$_SelectListTicSuccessCopyWith<$Res> {
  __$$_SelectListTicSuccessCopyWithImpl(_$_SelectListTicSuccess _value,
      $Res Function(_$_SelectListTicSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? ticId = null,
  }) {
    return _then(_$_SelectListTicSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListTicModelState,
      ticId: null == ticId
          ? _value.ticId
          : ticId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectListTicSuccess extends _SelectListTicSuccess {
  const _$_SelectListTicSuccess({required this.data, required this.ticId})
      : super._();

  @override
  final ListTicModelState data;
  @override
  final String ticId;

  @override
  String toString() {
    return 'ListTicState.selectListTicSuccess(data: $data, ticId: $ticId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectListTicSuccess &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.ticId, ticId) || other.ticId == ticId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, ticId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectListTicSuccessCopyWith<_$_SelectListTicSuccess> get copyWith =>
      __$$_SelectListTicSuccessCopyWithImpl<_$_SelectListTicSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListTicModelState data) initial,
    required TResult Function(ListTicModelState data) loading,
    required TResult Function(ListTicModelState data, String ticId)
        selectListTicSuccess,
    required TResult Function(ListTicModelState data, String message)
        selectListTicFailed,
  }) {
    return selectListTicSuccess(data, ticId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListTicModelState data)? initial,
    TResult? Function(ListTicModelState data)? loading,
    TResult? Function(ListTicModelState data, String ticId)?
        selectListTicSuccess,
    TResult? Function(ListTicModelState data, String message)?
        selectListTicFailed,
  }) {
    return selectListTicSuccess?.call(data, ticId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListTicModelState data)? initial,
    TResult Function(ListTicModelState data)? loading,
    TResult Function(ListTicModelState data, String ticId)?
        selectListTicSuccess,
    TResult Function(ListTicModelState data, String message)?
        selectListTicFailed,
    required TResult orElse(),
  }) {
    if (selectListTicSuccess != null) {
      return selectListTicSuccess(data, ticId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListTicSuccess value) selectListTicSuccess,
    required TResult Function(_SelectListTicFailed value) selectListTicFailed,
  }) {
    return selectListTicSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListTicSuccess value)? selectListTicSuccess,
    TResult? Function(_SelectListTicFailed value)? selectListTicFailed,
  }) {
    return selectListTicSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListTicSuccess value)? selectListTicSuccess,
    TResult Function(_SelectListTicFailed value)? selectListTicFailed,
    required TResult orElse(),
  }) {
    if (selectListTicSuccess != null) {
      return selectListTicSuccess(this);
    }
    return orElse();
  }
}

abstract class _SelectListTicSuccess extends ListTicState {
  const factory _SelectListTicSuccess(
      {required final ListTicModelState data,
      required final String ticId}) = _$_SelectListTicSuccess;
  const _SelectListTicSuccess._() : super._();

  @override
  ListTicModelState get data;
  String get ticId;
  @override
  @JsonKey(ignore: true)
  _$$_SelectListTicSuccessCopyWith<_$_SelectListTicSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectListTicFailedCopyWith<$Res>
    implements $ListTicStateCopyWith<$Res> {
  factory _$$_SelectListTicFailedCopyWith(_$_SelectListTicFailed value,
          $Res Function(_$_SelectListTicFailed) then) =
      __$$_SelectListTicFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListTicModelState data, String message});

  @override
  $ListTicModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SelectListTicFailedCopyWithImpl<$Res>
    extends _$ListTicStateCopyWithImpl<$Res, _$_SelectListTicFailed>
    implements _$$_SelectListTicFailedCopyWith<$Res> {
  __$$_SelectListTicFailedCopyWithImpl(_$_SelectListTicFailed _value,
      $Res Function(_$_SelectListTicFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_SelectListTicFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListTicModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectListTicFailed extends _SelectListTicFailed {
  const _$_SelectListTicFailed({required this.data, required this.message})
      : super._();

  @override
  final ListTicModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'ListTicState.selectListTicFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectListTicFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectListTicFailedCopyWith<_$_SelectListTicFailed> get copyWith =>
      __$$_SelectListTicFailedCopyWithImpl<_$_SelectListTicFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListTicModelState data) initial,
    required TResult Function(ListTicModelState data) loading,
    required TResult Function(ListTicModelState data, String ticId)
        selectListTicSuccess,
    required TResult Function(ListTicModelState data, String message)
        selectListTicFailed,
  }) {
    return selectListTicFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListTicModelState data)? initial,
    TResult? Function(ListTicModelState data)? loading,
    TResult? Function(ListTicModelState data, String ticId)?
        selectListTicSuccess,
    TResult? Function(ListTicModelState data, String message)?
        selectListTicFailed,
  }) {
    return selectListTicFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListTicModelState data)? initial,
    TResult Function(ListTicModelState data)? loading,
    TResult Function(ListTicModelState data, String ticId)?
        selectListTicSuccess,
    TResult Function(ListTicModelState data, String message)?
        selectListTicFailed,
    required TResult orElse(),
  }) {
    if (selectListTicFailed != null) {
      return selectListTicFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SelectListTicSuccess value) selectListTicSuccess,
    required TResult Function(_SelectListTicFailed value) selectListTicFailed,
  }) {
    return selectListTicFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SelectListTicSuccess value)? selectListTicSuccess,
    TResult? Function(_SelectListTicFailed value)? selectListTicFailed,
  }) {
    return selectListTicFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SelectListTicSuccess value)? selectListTicSuccess,
    TResult Function(_SelectListTicFailed value)? selectListTicFailed,
    required TResult orElse(),
  }) {
    if (selectListTicFailed != null) {
      return selectListTicFailed(this);
    }
    return orElse();
  }
}

abstract class _SelectListTicFailed extends ListTicState {
  const factory _SelectListTicFailed(
      {required final ListTicModelState data,
      required final String message}) = _$_SelectListTicFailed;
  const _SelectListTicFailed._() : super._();

  @override
  ListTicModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_SelectListTicFailedCopyWith<_$_SelectListTicFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
