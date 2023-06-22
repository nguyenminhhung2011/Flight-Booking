// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_ticket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BTEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() buttonTap,
    required TResult Function(int index) changeTicIndexView,
    required TResult Function() updateTicOverview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? buttonTap,
    TResult? Function(int index)? changeTicIndexView,
    TResult? Function()? updateTicOverview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? buttonTap,
    TResult Function(int index)? changeTicIndexView,
    TResult Function()? updateTicOverview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) onStarted,
    required TResult Function(_ButtonTap value) buttonTap,
    required TResult Function(_ChangeTicIndexView value) changeTicIndexView,
    required TResult Function(_UpdateTicOverview value) updateTicOverview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_ButtonTap value)? buttonTap,
    TResult? Function(_ChangeTicIndexView value)? changeTicIndexView,
    TResult? Function(_UpdateTicOverview value)? updateTicOverview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_ButtonTap value)? buttonTap,
    TResult Function(_ChangeTicIndexView value)? changeTicIndexView,
    TResult Function(_UpdateTicOverview value)? updateTicOverview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BTEventCopyWith<$Res> {
  factory $BTEventCopyWith(BTEvent value, $Res Function(BTEvent) then) =
      _$BTEventCopyWithImpl<$Res, BTEvent>;
}

/// @nodoc
class _$BTEventCopyWithImpl<$Res, $Val extends BTEvent>
    implements $BTEventCopyWith<$Res> {
  _$BTEventCopyWithImpl(this._value, this._then);

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
    extends _$BTEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'BTEvent.onStarted()';
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
    required TResult Function() onStarted,
    required TResult Function() buttonTap,
    required TResult Function(int index) changeTicIndexView,
    required TResult Function() updateTicOverview,
  }) {
    return onStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? buttonTap,
    TResult? Function(int index)? changeTicIndexView,
    TResult? Function()? updateTicOverview,
  }) {
    return onStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? buttonTap,
    TResult Function(int index)? changeTicIndexView,
    TResult Function()? updateTicOverview,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) onStarted,
    required TResult Function(_ButtonTap value) buttonTap,
    required TResult Function(_ChangeTicIndexView value) changeTicIndexView,
    required TResult Function(_UpdateTicOverview value) updateTicOverview,
  }) {
    return onStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_ButtonTap value)? buttonTap,
    TResult? Function(_ChangeTicIndexView value)? changeTicIndexView,
    TResult? Function(_UpdateTicOverview value)? updateTicOverview,
  }) {
    return onStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_ButtonTap value)? buttonTap,
    TResult Function(_ChangeTicIndexView value)? changeTicIndexView,
    TResult Function(_UpdateTicOverview value)? updateTicOverview,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(this);
    }
    return orElse();
  }
}

abstract class _Started implements BTEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ButtonTapCopyWith<$Res> {
  factory _$$_ButtonTapCopyWith(
          _$_ButtonTap value, $Res Function(_$_ButtonTap) then) =
      __$$_ButtonTapCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ButtonTapCopyWithImpl<$Res>
    extends _$BTEventCopyWithImpl<$Res, _$_ButtonTap>
    implements _$$_ButtonTapCopyWith<$Res> {
  __$$_ButtonTapCopyWithImpl(
      _$_ButtonTap _value, $Res Function(_$_ButtonTap) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ButtonTap implements _ButtonTap {
  const _$_ButtonTap();

  @override
  String toString() {
    return 'BTEvent.buttonTap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ButtonTap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() buttonTap,
    required TResult Function(int index) changeTicIndexView,
    required TResult Function() updateTicOverview,
  }) {
    return buttonTap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? buttonTap,
    TResult? Function(int index)? changeTicIndexView,
    TResult? Function()? updateTicOverview,
  }) {
    return buttonTap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? buttonTap,
    TResult Function(int index)? changeTicIndexView,
    TResult Function()? updateTicOverview,
    required TResult orElse(),
  }) {
    if (buttonTap != null) {
      return buttonTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) onStarted,
    required TResult Function(_ButtonTap value) buttonTap,
    required TResult Function(_ChangeTicIndexView value) changeTicIndexView,
    required TResult Function(_UpdateTicOverview value) updateTicOverview,
  }) {
    return buttonTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_ButtonTap value)? buttonTap,
    TResult? Function(_ChangeTicIndexView value)? changeTicIndexView,
    TResult? Function(_UpdateTicOverview value)? updateTicOverview,
  }) {
    return buttonTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_ButtonTap value)? buttonTap,
    TResult Function(_ChangeTicIndexView value)? changeTicIndexView,
    TResult Function(_UpdateTicOverview value)? updateTicOverview,
    required TResult orElse(),
  }) {
    if (buttonTap != null) {
      return buttonTap(this);
    }
    return orElse();
  }
}

abstract class _ButtonTap implements BTEvent {
  const factory _ButtonTap() = _$_ButtonTap;
}

/// @nodoc
abstract class _$$_ChangeTicIndexViewCopyWith<$Res> {
  factory _$$_ChangeTicIndexViewCopyWith(_$_ChangeTicIndexView value,
          $Res Function(_$_ChangeTicIndexView) then) =
      __$$_ChangeTicIndexViewCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_ChangeTicIndexViewCopyWithImpl<$Res>
    extends _$BTEventCopyWithImpl<$Res, _$_ChangeTicIndexView>
    implements _$$_ChangeTicIndexViewCopyWith<$Res> {
  __$$_ChangeTicIndexViewCopyWithImpl(
      _$_ChangeTicIndexView _value, $Res Function(_$_ChangeTicIndexView) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_ChangeTicIndexView(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeTicIndexView implements _ChangeTicIndexView {
  const _$_ChangeTicIndexView({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'BTEvent.changeTicIndexView(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeTicIndexView &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeTicIndexViewCopyWith<_$_ChangeTicIndexView> get copyWith =>
      __$$_ChangeTicIndexViewCopyWithImpl<_$_ChangeTicIndexView>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() buttonTap,
    required TResult Function(int index) changeTicIndexView,
    required TResult Function() updateTicOverview,
  }) {
    return changeTicIndexView(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? buttonTap,
    TResult? Function(int index)? changeTicIndexView,
    TResult? Function()? updateTicOverview,
  }) {
    return changeTicIndexView?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? buttonTap,
    TResult Function(int index)? changeTicIndexView,
    TResult Function()? updateTicOverview,
    required TResult orElse(),
  }) {
    if (changeTicIndexView != null) {
      return changeTicIndexView(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) onStarted,
    required TResult Function(_ButtonTap value) buttonTap,
    required TResult Function(_ChangeTicIndexView value) changeTicIndexView,
    required TResult Function(_UpdateTicOverview value) updateTicOverview,
  }) {
    return changeTicIndexView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_ButtonTap value)? buttonTap,
    TResult? Function(_ChangeTicIndexView value)? changeTicIndexView,
    TResult? Function(_UpdateTicOverview value)? updateTicOverview,
  }) {
    return changeTicIndexView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_ButtonTap value)? buttonTap,
    TResult Function(_ChangeTicIndexView value)? changeTicIndexView,
    TResult Function(_UpdateTicOverview value)? updateTicOverview,
    required TResult orElse(),
  }) {
    if (changeTicIndexView != null) {
      return changeTicIndexView(this);
    }
    return orElse();
  }
}

abstract class _ChangeTicIndexView implements BTEvent {
  const factory _ChangeTicIndexView({required final int index}) =
      _$_ChangeTicIndexView;

  int get index;
  @JsonKey(ignore: true)
  _$$_ChangeTicIndexViewCopyWith<_$_ChangeTicIndexView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateTicOverviewCopyWith<$Res> {
  factory _$$_UpdateTicOverviewCopyWith(_$_UpdateTicOverview value,
          $Res Function(_$_UpdateTicOverview) then) =
      __$$_UpdateTicOverviewCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateTicOverviewCopyWithImpl<$Res>
    extends _$BTEventCopyWithImpl<$Res, _$_UpdateTicOverview>
    implements _$$_UpdateTicOverviewCopyWith<$Res> {
  __$$_UpdateTicOverviewCopyWithImpl(
      _$_UpdateTicOverview _value, $Res Function(_$_UpdateTicOverview) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UpdateTicOverview implements _UpdateTicOverview {
  const _$_UpdateTicOverview();

  @override
  String toString() {
    return 'BTEvent.updateTicOverview()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UpdateTicOverview);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() buttonTap,
    required TResult Function(int index) changeTicIndexView,
    required TResult Function() updateTicOverview,
  }) {
    return updateTicOverview();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? buttonTap,
    TResult? Function(int index)? changeTicIndexView,
    TResult? Function()? updateTicOverview,
  }) {
    return updateTicOverview?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? buttonTap,
    TResult Function(int index)? changeTicIndexView,
    TResult Function()? updateTicOverview,
    required TResult orElse(),
  }) {
    if (updateTicOverview != null) {
      return updateTicOverview();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) onStarted,
    required TResult Function(_ButtonTap value) buttonTap,
    required TResult Function(_ChangeTicIndexView value) changeTicIndexView,
    required TResult Function(_UpdateTicOverview value) updateTicOverview,
  }) {
    return updateTicOverview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_ButtonTap value)? buttonTap,
    TResult? Function(_ChangeTicIndexView value)? changeTicIndexView,
    TResult? Function(_UpdateTicOverview value)? updateTicOverview,
  }) {
    return updateTicOverview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_ButtonTap value)? buttonTap,
    TResult Function(_ChangeTicIndexView value)? changeTicIndexView,
    TResult Function(_UpdateTicOverview value)? updateTicOverview,
    required TResult orElse(),
  }) {
    if (updateTicOverview != null) {
      return updateTicOverview(this);
    }
    return orElse();
  }
}

abstract class _UpdateTicOverview implements BTEvent {
  const factory _UpdateTicOverview() = _$_UpdateTicOverview;
}

/// @nodoc
mixin _$BTState {
  BTModelState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BTModelState data) initial,
    required TResult Function(BTModelState data, int groupLoading) loading,
    required TResult Function(BTModelState data) changeTicIndexViewSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BTModelState data)? initial,
    TResult? Function(BTModelState data, int groupLoading)? loading,
    TResult? Function(BTModelState data)? changeTicIndexViewSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BTModelState data)? initial,
    TResult Function(BTModelState data, int groupLoading)? loading,
    TResult Function(BTModelState data)? changeTicIndexViewSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ChangeTicIndexViewSuccess value)
        changeTicIndexViewSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ChangeTicIndexViewSuccess value)?
        changeTicIndexViewSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ChangeTicIndexViewSuccess value)?
        changeTicIndexViewSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BTStateCopyWith<BTState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BTStateCopyWith<$Res> {
  factory $BTStateCopyWith(BTState value, $Res Function(BTState) then) =
      _$BTStateCopyWithImpl<$Res, BTState>;
  @useResult
  $Res call({BTModelState data});

  $BTModelStateCopyWith<$Res> get data;
}

/// @nodoc
class _$BTStateCopyWithImpl<$Res, $Val extends BTState>
    implements $BTStateCopyWith<$Res> {
  _$BTStateCopyWithImpl(this._value, this._then);

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
              as BTModelState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BTModelStateCopyWith<$Res> get data {
    return $BTModelStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $BTStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BTModelState data});

  @override
  $BTModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$BTStateCopyWithImpl<$Res, _$_Initial>
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
              as BTModelState,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final BTModelState data;

  @override
  String toString() {
    return 'BTState.initial(data: $data)';
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
    required TResult Function(BTModelState data) initial,
    required TResult Function(BTModelState data, int groupLoading) loading,
    required TResult Function(BTModelState data) changeTicIndexViewSuccess,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BTModelState data)? initial,
    TResult? Function(BTModelState data, int groupLoading)? loading,
    TResult? Function(BTModelState data)? changeTicIndexViewSuccess,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BTModelState data)? initial,
    TResult Function(BTModelState data, int groupLoading)? loading,
    TResult Function(BTModelState data)? changeTicIndexViewSuccess,
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
    required TResult Function(_ChangeTicIndexViewSuccess value)
        changeTicIndexViewSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ChangeTicIndexViewSuccess value)?
        changeTicIndexViewSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ChangeTicIndexViewSuccess value)?
        changeTicIndexViewSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends BTState {
  const factory _Initial({required final BTModelState data}) = _$_Initial;
  const _Initial._() : super._();

  @override
  BTModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> implements $BTStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BTModelState data, int groupLoading});

  @override
  $BTModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$BTStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? groupLoading = null,
  }) {
    return _then(_$_Loading(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BTModelState,
      groupLoading: null == groupLoading
          ? _value.groupLoading
          : groupLoading // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data, required this.groupLoading})
      : super._();

  @override
  final BTModelState data;
  @override
  final int groupLoading;

  @override
  String toString() {
    return 'BTState.loading(data: $data, groupLoading: $groupLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.groupLoading, groupLoading) ||
                other.groupLoading == groupLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, groupLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BTModelState data) initial,
    required TResult Function(BTModelState data, int groupLoading) loading,
    required TResult Function(BTModelState data) changeTicIndexViewSuccess,
  }) {
    return loading(data, groupLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BTModelState data)? initial,
    TResult? Function(BTModelState data, int groupLoading)? loading,
    TResult? Function(BTModelState data)? changeTicIndexViewSuccess,
  }) {
    return loading?.call(data, groupLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BTModelState data)? initial,
    TResult Function(BTModelState data, int groupLoading)? loading,
    TResult Function(BTModelState data)? changeTicIndexViewSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data, groupLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ChangeTicIndexViewSuccess value)
        changeTicIndexViewSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ChangeTicIndexViewSuccess value)?
        changeTicIndexViewSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ChangeTicIndexViewSuccess value)?
        changeTicIndexViewSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends BTState {
  const factory _Loading(
      {required final BTModelState data,
      required final int groupLoading}) = _$_Loading;
  const _Loading._() : super._();

  @override
  BTModelState get data;
  int get groupLoading;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeTicIndexViewSuccessCopyWith<$Res>
    implements $BTStateCopyWith<$Res> {
  factory _$$_ChangeTicIndexViewSuccessCopyWith(
          _$_ChangeTicIndexViewSuccess value,
          $Res Function(_$_ChangeTicIndexViewSuccess) then) =
      __$$_ChangeTicIndexViewSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BTModelState data});

  @override
  $BTModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ChangeTicIndexViewSuccessCopyWithImpl<$Res>
    extends _$BTStateCopyWithImpl<$Res, _$_ChangeTicIndexViewSuccess>
    implements _$$_ChangeTicIndexViewSuccessCopyWith<$Res> {
  __$$_ChangeTicIndexViewSuccessCopyWithImpl(
      _$_ChangeTicIndexViewSuccess _value,
      $Res Function(_$_ChangeTicIndexViewSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ChangeTicIndexViewSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BTModelState,
    ));
  }
}

/// @nodoc

class _$_ChangeTicIndexViewSuccess extends _ChangeTicIndexViewSuccess {
  const _$_ChangeTicIndexViewSuccess({required this.data}) : super._();

  @override
  final BTModelState data;

  @override
  String toString() {
    return 'BTState.changeTicIndexViewSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeTicIndexViewSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeTicIndexViewSuccessCopyWith<_$_ChangeTicIndexViewSuccess>
      get copyWith => __$$_ChangeTicIndexViewSuccessCopyWithImpl<
          _$_ChangeTicIndexViewSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BTModelState data) initial,
    required TResult Function(BTModelState data, int groupLoading) loading,
    required TResult Function(BTModelState data) changeTicIndexViewSuccess,
  }) {
    return changeTicIndexViewSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BTModelState data)? initial,
    TResult? Function(BTModelState data, int groupLoading)? loading,
    TResult? Function(BTModelState data)? changeTicIndexViewSuccess,
  }) {
    return changeTicIndexViewSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BTModelState data)? initial,
    TResult Function(BTModelState data, int groupLoading)? loading,
    TResult Function(BTModelState data)? changeTicIndexViewSuccess,
    required TResult orElse(),
  }) {
    if (changeTicIndexViewSuccess != null) {
      return changeTicIndexViewSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ChangeTicIndexViewSuccess value)
        changeTicIndexViewSuccess,
  }) {
    return changeTicIndexViewSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ChangeTicIndexViewSuccess value)?
        changeTicIndexViewSuccess,
  }) {
    return changeTicIndexViewSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ChangeTicIndexViewSuccess value)?
        changeTicIndexViewSuccess,
    required TResult orElse(),
  }) {
    if (changeTicIndexViewSuccess != null) {
      return changeTicIndexViewSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChangeTicIndexViewSuccess extends BTState {
  const factory _ChangeTicIndexViewSuccess({required final BTModelState data}) =
      _$_ChangeTicIndexViewSuccess;
  const _ChangeTicIndexViewSuccess._() : super._();

  @override
  BTModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeTicIndexViewSuccessCopyWith<_$_ChangeTicIndexViewSuccess>
      get copyWith => throw _privateConstructorUsedError;
}
