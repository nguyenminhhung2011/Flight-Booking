// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'airport_detail_mobile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AirportDetailMobileState {
  AirportDetailMobileModelState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AirportDetailMobileModelState data) initial,
    required TResult Function(AirportDetailMobileModelState data) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AirportDetailMobileModelState data)? initial,
    TResult? Function(AirportDetailMobileModelState data)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AirportDetailMobileModelState data)? initial,
    TResult Function(AirportDetailMobileModelState data)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AirportDetailMobileStateCopyWith<AirportDetailMobileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirportDetailMobileStateCopyWith<$Res> {
  factory $AirportDetailMobileStateCopyWith(AirportDetailMobileState value,
          $Res Function(AirportDetailMobileState) then) =
      _$AirportDetailMobileStateCopyWithImpl<$Res, AirportDetailMobileState>;
  @useResult
  $Res call({AirportDetailMobileModelState data});

  $AirportDetailMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class _$AirportDetailMobileStateCopyWithImpl<$Res,
        $Val extends AirportDetailMobileState>
    implements $AirportDetailMobileStateCopyWith<$Res> {
  _$AirportDetailMobileStateCopyWithImpl(this._value, this._then);

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
              as AirportDetailMobileModelState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AirportDetailMobileModelStateCopyWith<$Res> get data {
    return $AirportDetailMobileModelStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $AirportDetailMobileStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AirportDetailMobileModelState data});

  @override
  $AirportDetailMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AirportDetailMobileStateCopyWithImpl<$Res, _$_Initial>
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
              as AirportDetailMobileModelState,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final AirportDetailMobileModelState data;

  @override
  String toString() {
    return 'AirportDetailMobileState.initial(data: $data)';
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
    required TResult Function(AirportDetailMobileModelState data) initial,
    required TResult Function(AirportDetailMobileModelState data) loading,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AirportDetailMobileModelState data)? initial,
    TResult? Function(AirportDetailMobileModelState data)? loading,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AirportDetailMobileModelState data)? initial,
    TResult Function(AirportDetailMobileModelState data)? loading,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends AirportDetailMobileState {
  const factory _Initial({required final AirportDetailMobileModelState data}) =
      _$_Initial;
  const _Initial._() : super._();

  @override
  AirportDetailMobileModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $AirportDetailMobileStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AirportDetailMobileModelState data});

  @override
  $AirportDetailMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AirportDetailMobileStateCopyWithImpl<$Res, _$_Loading>
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
              as AirportDetailMobileModelState,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final AirportDetailMobileModelState data;

  @override
  String toString() {
    return 'AirportDetailMobileState.loading(data: $data)';
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
    required TResult Function(AirportDetailMobileModelState data) initial,
    required TResult Function(AirportDetailMobileModelState data) loading,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AirportDetailMobileModelState data)? initial,
    TResult? Function(AirportDetailMobileModelState data)? loading,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AirportDetailMobileModelState data)? initial,
    TResult Function(AirportDetailMobileModelState data)? loading,
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
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends AirportDetailMobileState {
  const factory _Loading({required final AirportDetailMobileModelState data}) =
      _$_Loading;
  const _Loading._() : super._();

  @override
  AirportDetailMobileModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AirportDetailMobileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(int index) changeTabView,
    required TResult Function() loadingComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(int index)? changeTabView,
    TResult? Function()? loadingComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(int index)? changeTabView,
    TResult Function()? loadingComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) onStarted,
    required TResult Function(_ChangeTabView value) changeTabView,
    required TResult Function(_LoadingComplete value) loadingComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_ChangeTabView value)? changeTabView,
    TResult? Function(_LoadingComplete value)? loadingComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_ChangeTabView value)? changeTabView,
    TResult Function(_LoadingComplete value)? loadingComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirportDetailMobileEventCopyWith<$Res> {
  factory $AirportDetailMobileEventCopyWith(AirportDetailMobileEvent value,
          $Res Function(AirportDetailMobileEvent) then) =
      _$AirportDetailMobileEventCopyWithImpl<$Res, AirportDetailMobileEvent>;
}

/// @nodoc
class _$AirportDetailMobileEventCopyWithImpl<$Res,
        $Val extends AirportDetailMobileEvent>
    implements $AirportDetailMobileEventCopyWith<$Res> {
  _$AirportDetailMobileEventCopyWithImpl(this._value, this._then);

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
    extends _$AirportDetailMobileEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AirportDetailMobileEvent.onStarted()';
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
    required TResult Function(int index) changeTabView,
    required TResult Function() loadingComplete,
  }) {
    return onStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(int index)? changeTabView,
    TResult? Function()? loadingComplete,
  }) {
    return onStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(int index)? changeTabView,
    TResult Function()? loadingComplete,
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
    required TResult Function(_ChangeTabView value) changeTabView,
    required TResult Function(_LoadingComplete value) loadingComplete,
  }) {
    return onStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_ChangeTabView value)? changeTabView,
    TResult? Function(_LoadingComplete value)? loadingComplete,
  }) {
    return onStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_ChangeTabView value)? changeTabView,
    TResult Function(_LoadingComplete value)? loadingComplete,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(this);
    }
    return orElse();
  }
}

abstract class _Started implements AirportDetailMobileEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ChangeTabViewCopyWith<$Res> {
  factory _$$_ChangeTabViewCopyWith(
          _$_ChangeTabView value, $Res Function(_$_ChangeTabView) then) =
      __$$_ChangeTabViewCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_ChangeTabViewCopyWithImpl<$Res>
    extends _$AirportDetailMobileEventCopyWithImpl<$Res, _$_ChangeTabView>
    implements _$$_ChangeTabViewCopyWith<$Res> {
  __$$_ChangeTabViewCopyWithImpl(
      _$_ChangeTabView _value, $Res Function(_$_ChangeTabView) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_ChangeTabView(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeTabView implements _ChangeTabView {
  const _$_ChangeTabView({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'AirportDetailMobileEvent.changeTabView(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeTabView &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeTabViewCopyWith<_$_ChangeTabView> get copyWith =>
      __$$_ChangeTabViewCopyWithImpl<_$_ChangeTabView>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(int index) changeTabView,
    required TResult Function() loadingComplete,
  }) {
    return changeTabView(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(int index)? changeTabView,
    TResult? Function()? loadingComplete,
  }) {
    return changeTabView?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(int index)? changeTabView,
    TResult Function()? loadingComplete,
    required TResult orElse(),
  }) {
    if (changeTabView != null) {
      return changeTabView(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) onStarted,
    required TResult Function(_ChangeTabView value) changeTabView,
    required TResult Function(_LoadingComplete value) loadingComplete,
  }) {
    return changeTabView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_ChangeTabView value)? changeTabView,
    TResult? Function(_LoadingComplete value)? loadingComplete,
  }) {
    return changeTabView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_ChangeTabView value)? changeTabView,
    TResult Function(_LoadingComplete value)? loadingComplete,
    required TResult orElse(),
  }) {
    if (changeTabView != null) {
      return changeTabView(this);
    }
    return orElse();
  }
}

abstract class _ChangeTabView implements AirportDetailMobileEvent {
  const factory _ChangeTabView({required final int index}) = _$_ChangeTabView;

  int get index;
  @JsonKey(ignore: true)
  _$$_ChangeTabViewCopyWith<_$_ChangeTabView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCompleteCopyWith<$Res> {
  factory _$$_LoadingCompleteCopyWith(
          _$_LoadingComplete value, $Res Function(_$_LoadingComplete) then) =
      __$$_LoadingCompleteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCompleteCopyWithImpl<$Res>
    extends _$AirportDetailMobileEventCopyWithImpl<$Res, _$_LoadingComplete>
    implements _$$_LoadingCompleteCopyWith<$Res> {
  __$$_LoadingCompleteCopyWithImpl(
      _$_LoadingComplete _value, $Res Function(_$_LoadingComplete) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingComplete implements _LoadingComplete {
  const _$_LoadingComplete();

  @override
  String toString() {
    return 'AirportDetailMobileEvent.loadingComplete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingComplete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(int index) changeTabView,
    required TResult Function() loadingComplete,
  }) {
    return loadingComplete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(int index)? changeTabView,
    TResult? Function()? loadingComplete,
  }) {
    return loadingComplete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(int index)? changeTabView,
    TResult Function()? loadingComplete,
    required TResult orElse(),
  }) {
    if (loadingComplete != null) {
      return loadingComplete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) onStarted,
    required TResult Function(_ChangeTabView value) changeTabView,
    required TResult Function(_LoadingComplete value) loadingComplete,
  }) {
    return loadingComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_ChangeTabView value)? changeTabView,
    TResult? Function(_LoadingComplete value)? loadingComplete,
  }) {
    return loadingComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_ChangeTabView value)? changeTabView,
    TResult Function(_LoadingComplete value)? loadingComplete,
    required TResult orElse(),
  }) {
    if (loadingComplete != null) {
      return loadingComplete(this);
    }
    return orElse();
  }
}

abstract class _LoadingComplete implements AirportDetailMobileEvent {
  const factory _LoadingComplete() = _$_LoadingComplete;
}
