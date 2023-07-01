// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool theme) changeTheme,
    required TResult Function(int view, bool secondBodyDis) changeView,
    required TResult Function() fetchOverviewData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool theme)? changeTheme,
    TResult? Function(int view, bool secondBodyDis)? changeView,
    TResult? Function()? fetchOverviewData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool theme)? changeTheme,
    TResult Function(int view, bool secondBodyDis)? changeView,
    TResult Function()? fetchOverviewData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeView value) changeView,
    required TResult Function(_FetchOverviewData value) fetchOverviewData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ChangeView value)? changeView,
    TResult? Function(_FetchOverviewData value)? fetchOverviewData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeView value)? changeView,
    TResult Function(_FetchOverviewData value)? fetchOverviewData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEventCopyWith<$Res> {
  factory $DashboardEventCopyWith(
          DashboardEvent value, $Res Function(DashboardEvent) then) =
      _$DashboardEventCopyWithImpl<$Res, DashboardEvent>;
}

/// @nodoc
class _$DashboardEventCopyWithImpl<$Res, $Val extends DashboardEvent>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._value, this._then);

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
    extends _$DashboardEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'DashboardEvent.started()';
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
    required TResult Function(bool theme) changeTheme,
    required TResult Function(int view, bool secondBodyDis) changeView,
    required TResult Function() fetchOverviewData,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool theme)? changeTheme,
    TResult? Function(int view, bool secondBodyDis)? changeView,
    TResult? Function()? fetchOverviewData,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool theme)? changeTheme,
    TResult Function(int view, bool secondBodyDis)? changeView,
    TResult Function()? fetchOverviewData,
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
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeView value) changeView,
    required TResult Function(_FetchOverviewData value) fetchOverviewData,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ChangeView value)? changeView,
    TResult? Function(_FetchOverviewData value)? fetchOverviewData,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeView value)? changeView,
    TResult Function(_FetchOverviewData value)? fetchOverviewData,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DashboardEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ChangeThemeCopyWith<$Res> {
  factory _$$_ChangeThemeCopyWith(
          _$_ChangeTheme value, $Res Function(_$_ChangeTheme) then) =
      __$$_ChangeThemeCopyWithImpl<$Res>;
  @useResult
  $Res call({bool theme});
}

/// @nodoc
class __$$_ChangeThemeCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$_ChangeTheme>
    implements _$$_ChangeThemeCopyWith<$Res> {
  __$$_ChangeThemeCopyWithImpl(
      _$_ChangeTheme _value, $Res Function(_$_ChangeTheme) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_$_ChangeTheme(
      null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeTheme implements _ChangeTheme {
  const _$_ChangeTheme(this.theme);

  @override
  final bool theme;

  @override
  String toString() {
    return 'DashboardEvent.changeTheme(theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeTheme &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeThemeCopyWith<_$_ChangeTheme> get copyWith =>
      __$$_ChangeThemeCopyWithImpl<_$_ChangeTheme>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool theme) changeTheme,
    required TResult Function(int view, bool secondBodyDis) changeView,
    required TResult Function() fetchOverviewData,
  }) {
    return changeTheme(theme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool theme)? changeTheme,
    TResult? Function(int view, bool secondBodyDis)? changeView,
    TResult? Function()? fetchOverviewData,
  }) {
    return changeTheme?.call(theme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool theme)? changeTheme,
    TResult Function(int view, bool secondBodyDis)? changeView,
    TResult Function()? fetchOverviewData,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(theme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeView value) changeView,
    required TResult Function(_FetchOverviewData value) fetchOverviewData,
  }) {
    return changeTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ChangeView value)? changeView,
    TResult? Function(_FetchOverviewData value)? fetchOverviewData,
  }) {
    return changeTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeView value)? changeView,
    TResult Function(_FetchOverviewData value)? fetchOverviewData,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(this);
    }
    return orElse();
  }
}

abstract class _ChangeTheme implements DashboardEvent {
  const factory _ChangeTheme(final bool theme) = _$_ChangeTheme;

  bool get theme;
  @JsonKey(ignore: true)
  _$$_ChangeThemeCopyWith<_$_ChangeTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeViewCopyWith<$Res> {
  factory _$$_ChangeViewCopyWith(
          _$_ChangeView value, $Res Function(_$_ChangeView) then) =
      __$$_ChangeViewCopyWithImpl<$Res>;
  @useResult
  $Res call({int view, bool secondBodyDis});
}

/// @nodoc
class __$$_ChangeViewCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$_ChangeView>
    implements _$$_ChangeViewCopyWith<$Res> {
  __$$_ChangeViewCopyWithImpl(
      _$_ChangeView _value, $Res Function(_$_ChangeView) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? view = null,
    Object? secondBodyDis = null,
  }) {
    return _then(_$_ChangeView(
      null == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as int,
      null == secondBodyDis
          ? _value.secondBodyDis
          : secondBodyDis // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeView implements _ChangeView {
  const _$_ChangeView(this.view, this.secondBodyDis);

  @override
  final int view;
  @override
  final bool secondBodyDis;

  @override
  String toString() {
    return 'DashboardEvent.changeView(view: $view, secondBodyDis: $secondBodyDis)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeView &&
            (identical(other.view, view) || other.view == view) &&
            (identical(other.secondBodyDis, secondBodyDis) ||
                other.secondBodyDis == secondBodyDis));
  }

  @override
  int get hashCode => Object.hash(runtimeType, view, secondBodyDis);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeViewCopyWith<_$_ChangeView> get copyWith =>
      __$$_ChangeViewCopyWithImpl<_$_ChangeView>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool theme) changeTheme,
    required TResult Function(int view, bool secondBodyDis) changeView,
    required TResult Function() fetchOverviewData,
  }) {
    return changeView(view, secondBodyDis);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool theme)? changeTheme,
    TResult? Function(int view, bool secondBodyDis)? changeView,
    TResult? Function()? fetchOverviewData,
  }) {
    return changeView?.call(view, secondBodyDis);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool theme)? changeTheme,
    TResult Function(int view, bool secondBodyDis)? changeView,
    TResult Function()? fetchOverviewData,
    required TResult orElse(),
  }) {
    if (changeView != null) {
      return changeView(view, secondBodyDis);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeView value) changeView,
    required TResult Function(_FetchOverviewData value) fetchOverviewData,
  }) {
    return changeView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ChangeView value)? changeView,
    TResult? Function(_FetchOverviewData value)? fetchOverviewData,
  }) {
    return changeView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeView value)? changeView,
    TResult Function(_FetchOverviewData value)? fetchOverviewData,
    required TResult orElse(),
  }) {
    if (changeView != null) {
      return changeView(this);
    }
    return orElse();
  }
}

abstract class _ChangeView implements DashboardEvent {
  const factory _ChangeView(final int view, final bool secondBodyDis) =
      _$_ChangeView;

  int get view;
  bool get secondBodyDis;
  @JsonKey(ignore: true)
  _$$_ChangeViewCopyWith<_$_ChangeView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchOverviewDataCopyWith<$Res> {
  factory _$$_FetchOverviewDataCopyWith(_$_FetchOverviewData value,
          $Res Function(_$_FetchOverviewData) then) =
      __$$_FetchOverviewDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchOverviewDataCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$_FetchOverviewData>
    implements _$$_FetchOverviewDataCopyWith<$Res> {
  __$$_FetchOverviewDataCopyWithImpl(
      _$_FetchOverviewData _value, $Res Function(_$_FetchOverviewData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchOverviewData implements _FetchOverviewData {
  const _$_FetchOverviewData();

  @override
  String toString() {
    return 'DashboardEvent.fetchOverviewData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchOverviewData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool theme) changeTheme,
    required TResult Function(int view, bool secondBodyDis) changeView,
    required TResult Function() fetchOverviewData,
  }) {
    return fetchOverviewData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool theme)? changeTheme,
    TResult? Function(int view, bool secondBodyDis)? changeView,
    TResult? Function()? fetchOverviewData,
  }) {
    return fetchOverviewData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool theme)? changeTheme,
    TResult Function(int view, bool secondBodyDis)? changeView,
    TResult Function()? fetchOverviewData,
    required TResult orElse(),
  }) {
    if (fetchOverviewData != null) {
      return fetchOverviewData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeView value) changeView,
    required TResult Function(_FetchOverviewData value) fetchOverviewData,
  }) {
    return fetchOverviewData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ChangeView value)? changeView,
    TResult? Function(_FetchOverviewData value)? fetchOverviewData,
  }) {
    return fetchOverviewData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeView value)? changeView,
    TResult Function(_FetchOverviewData value)? fetchOverviewData,
    required TResult orElse(),
  }) {
    if (fetchOverviewData != null) {
      return fetchOverviewData(this);
    }
    return orElse();
  }
}

abstract class _FetchOverviewData implements DashboardEvent {
  const factory _FetchOverviewData() = _$_FetchOverviewData;
}

/// @nodoc
mixin _$DashboardState {
  DashboardModelState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DashboardModelState data) initial,
    required TResult Function(DashboardModelState data) loading,
    required TResult Function(DashboardModelState data)
        fetchOverviewDataSuccess,
    required TResult Function(DashboardModelState data, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DashboardModelState data)? initial,
    TResult? Function(DashboardModelState data)? loading,
    TResult? Function(DashboardModelState data)? fetchOverviewDataSuccess,
    TResult? Function(DashboardModelState data, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DashboardModelState data)? initial,
    TResult Function(DashboardModelState data)? loading,
    TResult Function(DashboardModelState data)? fetchOverviewDataSuccess,
    TResult Function(DashboardModelState data, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchOverviewDataSuccess value)
        fetchOverviewDataSuccess,
    required TResult Function(_error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchOverviewDataSuccess value)?
        fetchOverviewDataSuccess,
    TResult? Function(_error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchOverviewDataSuccess value)? fetchOverviewDataSuccess,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call({DashboardModelState data});

  $DashboardModelStateCopyWith<$Res> get data;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

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
              as DashboardModelState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DashboardModelStateCopyWith<$Res> get data {
    return $DashboardModelStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DashboardModelState data});

  @override
  $DashboardModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$_Initial>
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
              as DashboardModelState,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final DashboardModelState data;

  @override
  String toString() {
    return 'DashboardState.initial(data: $data)';
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
    required TResult Function(DashboardModelState data) initial,
    required TResult Function(DashboardModelState data) loading,
    required TResult Function(DashboardModelState data)
        fetchOverviewDataSuccess,
    required TResult Function(DashboardModelState data, String message) error,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DashboardModelState data)? initial,
    TResult? Function(DashboardModelState data)? loading,
    TResult? Function(DashboardModelState data)? fetchOverviewDataSuccess,
    TResult? Function(DashboardModelState data, String message)? error,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DashboardModelState data)? initial,
    TResult Function(DashboardModelState data)? loading,
    TResult Function(DashboardModelState data)? fetchOverviewDataSuccess,
    TResult Function(DashboardModelState data, String message)? error,
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
    required TResult Function(_FetchOverviewDataSuccess value)
        fetchOverviewDataSuccess,
    required TResult Function(_error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchOverviewDataSuccess value)?
        fetchOverviewDataSuccess,
    TResult? Function(_error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchOverviewDataSuccess value)? fetchOverviewDataSuccess,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends DashboardState {
  const factory _Initial({required final DashboardModelState data}) =
      _$_Initial;
  const _Initial._() : super._();

  @override
  DashboardModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DashboardModelState data});

  @override
  $DashboardModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$_Loading>
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
              as DashboardModelState,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final DashboardModelState data;

  @override
  String toString() {
    return 'DashboardState.loading(data: $data)';
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
    required TResult Function(DashboardModelState data) initial,
    required TResult Function(DashboardModelState data) loading,
    required TResult Function(DashboardModelState data)
        fetchOverviewDataSuccess,
    required TResult Function(DashboardModelState data, String message) error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DashboardModelState data)? initial,
    TResult? Function(DashboardModelState data)? loading,
    TResult? Function(DashboardModelState data)? fetchOverviewDataSuccess,
    TResult? Function(DashboardModelState data, String message)? error,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DashboardModelState data)? initial,
    TResult Function(DashboardModelState data)? loading,
    TResult Function(DashboardModelState data)? fetchOverviewDataSuccess,
    TResult Function(DashboardModelState data, String message)? error,
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
    required TResult Function(_FetchOverviewDataSuccess value)
        fetchOverviewDataSuccess,
    required TResult Function(_error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchOverviewDataSuccess value)?
        fetchOverviewDataSuccess,
    TResult? Function(_error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchOverviewDataSuccess value)? fetchOverviewDataSuccess,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends DashboardState {
  const factory _Loading({required final DashboardModelState data}) =
      _$_Loading;
  const _Loading._() : super._();

  @override
  DashboardModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchOverviewDataSuccessCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$_FetchOverviewDataSuccessCopyWith(
          _$_FetchOverviewDataSuccess value,
          $Res Function(_$_FetchOverviewDataSuccess) then) =
      __$$_FetchOverviewDataSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DashboardModelState data});

  @override
  $DashboardModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FetchOverviewDataSuccessCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$_FetchOverviewDataSuccess>
    implements _$$_FetchOverviewDataSuccessCopyWith<$Res> {
  __$$_FetchOverviewDataSuccessCopyWithImpl(_$_FetchOverviewDataSuccess _value,
      $Res Function(_$_FetchOverviewDataSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_FetchOverviewDataSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DashboardModelState,
    ));
  }
}

/// @nodoc

class _$_FetchOverviewDataSuccess extends _FetchOverviewDataSuccess {
  const _$_FetchOverviewDataSuccess({required this.data}) : super._();

  @override
  final DashboardModelState data;

  @override
  String toString() {
    return 'DashboardState.fetchOverviewDataSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchOverviewDataSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchOverviewDataSuccessCopyWith<_$_FetchOverviewDataSuccess>
      get copyWith => __$$_FetchOverviewDataSuccessCopyWithImpl<
          _$_FetchOverviewDataSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DashboardModelState data) initial,
    required TResult Function(DashboardModelState data) loading,
    required TResult Function(DashboardModelState data)
        fetchOverviewDataSuccess,
    required TResult Function(DashboardModelState data, String message) error,
  }) {
    return fetchOverviewDataSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DashboardModelState data)? initial,
    TResult? Function(DashboardModelState data)? loading,
    TResult? Function(DashboardModelState data)? fetchOverviewDataSuccess,
    TResult? Function(DashboardModelState data, String message)? error,
  }) {
    return fetchOverviewDataSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DashboardModelState data)? initial,
    TResult Function(DashboardModelState data)? loading,
    TResult Function(DashboardModelState data)? fetchOverviewDataSuccess,
    TResult Function(DashboardModelState data, String message)? error,
    required TResult orElse(),
  }) {
    if (fetchOverviewDataSuccess != null) {
      return fetchOverviewDataSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchOverviewDataSuccess value)
        fetchOverviewDataSuccess,
    required TResult Function(_error value) error,
  }) {
    return fetchOverviewDataSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchOverviewDataSuccess value)?
        fetchOverviewDataSuccess,
    TResult? Function(_error value)? error,
  }) {
    return fetchOverviewDataSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchOverviewDataSuccess value)? fetchOverviewDataSuccess,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (fetchOverviewDataSuccess != null) {
      return fetchOverviewDataSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchOverviewDataSuccess extends DashboardState {
  const factory _FetchOverviewDataSuccess(
      {required final DashboardModelState data}) = _$_FetchOverviewDataSuccess;
  const _FetchOverviewDataSuccess._() : super._();

  @override
  DashboardModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_FetchOverviewDataSuccessCopyWith<_$_FetchOverviewDataSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_errorCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$_errorCopyWith(_$_error value, $Res Function(_$_error) then) =
      __$$_errorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DashboardModelState data, String message});

  @override
  $DashboardModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_errorCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$_error>
    implements _$$_errorCopyWith<$Res> {
  __$$_errorCopyWithImpl(_$_error _value, $Res Function(_$_error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_error(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DashboardModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_error extends _error {
  const _$_error({required this.data, required this.message}) : super._();

  @override
  final DashboardModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'DashboardState.error(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_error &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_errorCopyWith<_$_error> get copyWith =>
      __$$_errorCopyWithImpl<_$_error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DashboardModelState data) initial,
    required TResult Function(DashboardModelState data) loading,
    required TResult Function(DashboardModelState data)
        fetchOverviewDataSuccess,
    required TResult Function(DashboardModelState data, String message) error,
  }) {
    return error(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DashboardModelState data)? initial,
    TResult? Function(DashboardModelState data)? loading,
    TResult? Function(DashboardModelState data)? fetchOverviewDataSuccess,
    TResult? Function(DashboardModelState data, String message)? error,
  }) {
    return error?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DashboardModelState data)? initial,
    TResult Function(DashboardModelState data)? loading,
    TResult Function(DashboardModelState data)? fetchOverviewDataSuccess,
    TResult Function(DashboardModelState data, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchOverviewDataSuccess value)
        fetchOverviewDataSuccess,
    required TResult Function(_error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchOverviewDataSuccess value)?
        fetchOverviewDataSuccess,
    TResult? Function(_error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchOverviewDataSuccess value)? fetchOverviewDataSuccess,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _error extends DashboardState {
  const factory _error(
      {required final DashboardModelState data,
      required final String message}) = _$_error;
  const _error._() : super._();

  @override
  DashboardModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_errorCopyWith<_$_error> get copyWith =>
      throw _privateConstructorUsedError;
}
