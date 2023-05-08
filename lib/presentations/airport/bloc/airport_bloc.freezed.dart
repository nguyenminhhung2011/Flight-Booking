// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'airport_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AirportEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() fetchAirports,
    required TResult Function() changePageView,
    required TResult Function(String id) openAddEditAirportForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? fetchAirports,
    TResult? Function()? changePageView,
    TResult? Function(String id)? openAddEditAirportForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? fetchAirports,
    TResult Function()? changePageView,
    TResult Function(String id)? openAddEditAirportForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) onStarted,
    required TResult Function(_FetchAirports value) fetchAirports,
    required TResult Function(_ChangePageView value) changePageView,
    required TResult Function(_OpenAddEditAirportForm value)
        openAddEditAirportForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_FetchAirports value)? fetchAirports,
    TResult? Function(_ChangePageView value)? changePageView,
    TResult? Function(_OpenAddEditAirportForm value)? openAddEditAirportForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_FetchAirports value)? fetchAirports,
    TResult Function(_ChangePageView value)? changePageView,
    TResult Function(_OpenAddEditAirportForm value)? openAddEditAirportForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirportEventCopyWith<$Res> {
  factory $AirportEventCopyWith(
          AirportEvent value, $Res Function(AirportEvent) then) =
      _$AirportEventCopyWithImpl<$Res, AirportEvent>;
}

/// @nodoc
class _$AirportEventCopyWithImpl<$Res, $Val extends AirportEvent>
    implements $AirportEventCopyWith<$Res> {
  _$AirportEventCopyWithImpl(this._value, this._then);

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
    extends _$AirportEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AirportEvent.onStarted()';
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
    required TResult Function() fetchAirports,
    required TResult Function() changePageView,
    required TResult Function(String id) openAddEditAirportForm,
  }) {
    return onStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? fetchAirports,
    TResult? Function()? changePageView,
    TResult? Function(String id)? openAddEditAirportForm,
  }) {
    return onStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? fetchAirports,
    TResult Function()? changePageView,
    TResult Function(String id)? openAddEditAirportForm,
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
    required TResult Function(_FetchAirports value) fetchAirports,
    required TResult Function(_ChangePageView value) changePageView,
    required TResult Function(_OpenAddEditAirportForm value)
        openAddEditAirportForm,
  }) {
    return onStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_FetchAirports value)? fetchAirports,
    TResult? Function(_ChangePageView value)? changePageView,
    TResult? Function(_OpenAddEditAirportForm value)? openAddEditAirportForm,
  }) {
    return onStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_FetchAirports value)? fetchAirports,
    TResult Function(_ChangePageView value)? changePageView,
    TResult Function(_OpenAddEditAirportForm value)? openAddEditAirportForm,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(this);
    }
    return orElse();
  }
}

abstract class _Started implements AirportEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_FetchAirportsCopyWith<$Res> {
  factory _$$_FetchAirportsCopyWith(
          _$_FetchAirports value, $Res Function(_$_FetchAirports) then) =
      __$$_FetchAirportsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchAirportsCopyWithImpl<$Res>
    extends _$AirportEventCopyWithImpl<$Res, _$_FetchAirports>
    implements _$$_FetchAirportsCopyWith<$Res> {
  __$$_FetchAirportsCopyWithImpl(
      _$_FetchAirports _value, $Res Function(_$_FetchAirports) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchAirports implements _FetchAirports {
  const _$_FetchAirports();

  @override
  String toString() {
    return 'AirportEvent.fetchAirports()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchAirports);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() fetchAirports,
    required TResult Function() changePageView,
    required TResult Function(String id) openAddEditAirportForm,
  }) {
    return fetchAirports();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? fetchAirports,
    TResult? Function()? changePageView,
    TResult? Function(String id)? openAddEditAirportForm,
  }) {
    return fetchAirports?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? fetchAirports,
    TResult Function()? changePageView,
    TResult Function(String id)? openAddEditAirportForm,
    required TResult orElse(),
  }) {
    if (fetchAirports != null) {
      return fetchAirports();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) onStarted,
    required TResult Function(_FetchAirports value) fetchAirports,
    required TResult Function(_ChangePageView value) changePageView,
    required TResult Function(_OpenAddEditAirportForm value)
        openAddEditAirportForm,
  }) {
    return fetchAirports(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_FetchAirports value)? fetchAirports,
    TResult? Function(_ChangePageView value)? changePageView,
    TResult? Function(_OpenAddEditAirportForm value)? openAddEditAirportForm,
  }) {
    return fetchAirports?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_FetchAirports value)? fetchAirports,
    TResult Function(_ChangePageView value)? changePageView,
    TResult Function(_OpenAddEditAirportForm value)? openAddEditAirportForm,
    required TResult orElse(),
  }) {
    if (fetchAirports != null) {
      return fetchAirports(this);
    }
    return orElse();
  }
}

abstract class _FetchAirports implements AirportEvent {
  const factory _FetchAirports() = _$_FetchAirports;
}

/// @nodoc
abstract class _$$_ChangePageViewCopyWith<$Res> {
  factory _$$_ChangePageViewCopyWith(
          _$_ChangePageView value, $Res Function(_$_ChangePageView) then) =
      __$$_ChangePageViewCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChangePageViewCopyWithImpl<$Res>
    extends _$AirportEventCopyWithImpl<$Res, _$_ChangePageView>
    implements _$$_ChangePageViewCopyWith<$Res> {
  __$$_ChangePageViewCopyWithImpl(
      _$_ChangePageView _value, $Res Function(_$_ChangePageView) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ChangePageView implements _ChangePageView {
  const _$_ChangePageView();

  @override
  String toString() {
    return 'AirportEvent.changePageView()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ChangePageView);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() fetchAirports,
    required TResult Function() changePageView,
    required TResult Function(String id) openAddEditAirportForm,
  }) {
    return changePageView();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? fetchAirports,
    TResult? Function()? changePageView,
    TResult? Function(String id)? openAddEditAirportForm,
  }) {
    return changePageView?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? fetchAirports,
    TResult Function()? changePageView,
    TResult Function(String id)? openAddEditAirportForm,
    required TResult orElse(),
  }) {
    if (changePageView != null) {
      return changePageView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) onStarted,
    required TResult Function(_FetchAirports value) fetchAirports,
    required TResult Function(_ChangePageView value) changePageView,
    required TResult Function(_OpenAddEditAirportForm value)
        openAddEditAirportForm,
  }) {
    return changePageView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_FetchAirports value)? fetchAirports,
    TResult? Function(_ChangePageView value)? changePageView,
    TResult? Function(_OpenAddEditAirportForm value)? openAddEditAirportForm,
  }) {
    return changePageView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_FetchAirports value)? fetchAirports,
    TResult Function(_ChangePageView value)? changePageView,
    TResult Function(_OpenAddEditAirportForm value)? openAddEditAirportForm,
    required TResult orElse(),
  }) {
    if (changePageView != null) {
      return changePageView(this);
    }
    return orElse();
  }
}

abstract class _ChangePageView implements AirportEvent {
  const factory _ChangePageView() = _$_ChangePageView;
}

/// @nodoc
abstract class _$$_OpenAddEditAirportFormCopyWith<$Res> {
  factory _$$_OpenAddEditAirportFormCopyWith(_$_OpenAddEditAirportForm value,
          $Res Function(_$_OpenAddEditAirportForm) then) =
      __$$_OpenAddEditAirportFormCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_OpenAddEditAirportFormCopyWithImpl<$Res>
    extends _$AirportEventCopyWithImpl<$Res, _$_OpenAddEditAirportForm>
    implements _$$_OpenAddEditAirportFormCopyWith<$Res> {
  __$$_OpenAddEditAirportFormCopyWithImpl(_$_OpenAddEditAirportForm _value,
      $Res Function(_$_OpenAddEditAirportForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_OpenAddEditAirportForm(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OpenAddEditAirportForm implements _OpenAddEditAirportForm {
  const _$_OpenAddEditAirportForm(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'AirportEvent.openAddEditAirportForm(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenAddEditAirportForm &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenAddEditAirportFormCopyWith<_$_OpenAddEditAirportForm> get copyWith =>
      __$$_OpenAddEditAirportFormCopyWithImpl<_$_OpenAddEditAirportForm>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() fetchAirports,
    required TResult Function() changePageView,
    required TResult Function(String id) openAddEditAirportForm,
  }) {
    return openAddEditAirportForm(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? fetchAirports,
    TResult? Function()? changePageView,
    TResult? Function(String id)? openAddEditAirportForm,
  }) {
    return openAddEditAirportForm?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? fetchAirports,
    TResult Function()? changePageView,
    TResult Function(String id)? openAddEditAirportForm,
    required TResult orElse(),
  }) {
    if (openAddEditAirportForm != null) {
      return openAddEditAirportForm(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) onStarted,
    required TResult Function(_FetchAirports value) fetchAirports,
    required TResult Function(_ChangePageView value) changePageView,
    required TResult Function(_OpenAddEditAirportForm value)
        openAddEditAirportForm,
  }) {
    return openAddEditAirportForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_FetchAirports value)? fetchAirports,
    TResult? Function(_ChangePageView value)? changePageView,
    TResult? Function(_OpenAddEditAirportForm value)? openAddEditAirportForm,
  }) {
    return openAddEditAirportForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_FetchAirports value)? fetchAirports,
    TResult Function(_ChangePageView value)? changePageView,
    TResult Function(_OpenAddEditAirportForm value)? openAddEditAirportForm,
    required TResult orElse(),
  }) {
    if (openAddEditAirportForm != null) {
      return openAddEditAirportForm(this);
    }
    return orElse();
  }
}

abstract class _OpenAddEditAirportForm implements AirportEvent {
  const factory _OpenAddEditAirportForm(final String id) =
      _$_OpenAddEditAirportForm;

  String get id;
  @JsonKey(ignore: true)
  _$$_OpenAddEditAirportFormCopyWith<_$_OpenAddEditAirportForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AirportState {
  AirportModelState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AirportModelState data) initial,
    required TResult Function(AirportModelState data) fetchAirportsSuccess,
    required TResult Function(AirportModelState data, String message)
        fetchAirportsFailed,
    required TResult Function(AirportModelState data) loading,
    required TResult Function(AirportModelState data, String id)
        openAddEditAirportSucceess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AirportModelState data)? initial,
    TResult? Function(AirportModelState data)? fetchAirportsSuccess,
    TResult? Function(AirportModelState data, String message)?
        fetchAirportsFailed,
    TResult? Function(AirportModelState data)? loading,
    TResult? Function(AirportModelState data, String id)?
        openAddEditAirportSucceess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AirportModelState data)? initial,
    TResult Function(AirportModelState data)? fetchAirportsSuccess,
    TResult Function(AirportModelState data, String message)?
        fetchAirportsFailed,
    TResult Function(AirportModelState data)? loading,
    TResult Function(AirportModelState data, String id)?
        openAddEditAirportSucceess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchAirportSuccess value) fetchAirportsSuccess,
    required TResult Function(_FetchAirportFailed value) fetchAirportsFailed,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OpenAddEditAirportSuccess value)
        openAddEditAirportSucceess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult? Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSucceess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult Function(_Loading value)? loading,
    TResult Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSucceess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AirportStateCopyWith<AirportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirportStateCopyWith<$Res> {
  factory $AirportStateCopyWith(
          AirportState value, $Res Function(AirportState) then) =
      _$AirportStateCopyWithImpl<$Res, AirportState>;
  @useResult
  $Res call({AirportModelState data});

  $AirportModelStateCopyWith<$Res> get data;
}

/// @nodoc
class _$AirportStateCopyWithImpl<$Res, $Val extends AirportState>
    implements $AirportStateCopyWith<$Res> {
  _$AirportStateCopyWithImpl(this._value, this._then);

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
              as AirportModelState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AirportModelStateCopyWith<$Res> get data {
    return $AirportModelStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $AirportStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AirportModelState data});

  @override
  $AirportModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AirportStateCopyWithImpl<$Res, _$_Initial>
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
              as AirportModelState,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final AirportModelState data;

  @override
  String toString() {
    return 'AirportState.initial(data: $data)';
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
    required TResult Function(AirportModelState data) initial,
    required TResult Function(AirportModelState data) fetchAirportsSuccess,
    required TResult Function(AirportModelState data, String message)
        fetchAirportsFailed,
    required TResult Function(AirportModelState data) loading,
    required TResult Function(AirportModelState data, String id)
        openAddEditAirportSucceess,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AirportModelState data)? initial,
    TResult? Function(AirportModelState data)? fetchAirportsSuccess,
    TResult? Function(AirportModelState data, String message)?
        fetchAirportsFailed,
    TResult? Function(AirportModelState data)? loading,
    TResult? Function(AirportModelState data, String id)?
        openAddEditAirportSucceess,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AirportModelState data)? initial,
    TResult Function(AirportModelState data)? fetchAirportsSuccess,
    TResult Function(AirportModelState data, String message)?
        fetchAirportsFailed,
    TResult Function(AirportModelState data)? loading,
    TResult Function(AirportModelState data, String id)?
        openAddEditAirportSucceess,
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
    required TResult Function(_FetchAirportSuccess value) fetchAirportsSuccess,
    required TResult Function(_FetchAirportFailed value) fetchAirportsFailed,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OpenAddEditAirportSuccess value)
        openAddEditAirportSucceess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult? Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSucceess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult Function(_Loading value)? loading,
    TResult Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSucceess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends AirportState {
  const factory _Initial({required final AirportModelState data}) = _$_Initial;
  const _Initial._() : super._();

  @override
  AirportModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchAirportSuccessCopyWith<$Res>
    implements $AirportStateCopyWith<$Res> {
  factory _$$_FetchAirportSuccessCopyWith(_$_FetchAirportSuccess value,
          $Res Function(_$_FetchAirportSuccess) then) =
      __$$_FetchAirportSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AirportModelState data});

  @override
  $AirportModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FetchAirportSuccessCopyWithImpl<$Res>
    extends _$AirportStateCopyWithImpl<$Res, _$_FetchAirportSuccess>
    implements _$$_FetchAirportSuccessCopyWith<$Res> {
  __$$_FetchAirportSuccessCopyWithImpl(_$_FetchAirportSuccess _value,
      $Res Function(_$_FetchAirportSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_FetchAirportSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AirportModelState,
    ));
  }
}

/// @nodoc

class _$_FetchAirportSuccess extends _FetchAirportSuccess {
  const _$_FetchAirportSuccess({required this.data}) : super._();

  @override
  final AirportModelState data;

  @override
  String toString() {
    return 'AirportState.fetchAirportsSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchAirportSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchAirportSuccessCopyWith<_$_FetchAirportSuccess> get copyWith =>
      __$$_FetchAirportSuccessCopyWithImpl<_$_FetchAirportSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AirportModelState data) initial,
    required TResult Function(AirportModelState data) fetchAirportsSuccess,
    required TResult Function(AirportModelState data, String message)
        fetchAirportsFailed,
    required TResult Function(AirportModelState data) loading,
    required TResult Function(AirportModelState data, String id)
        openAddEditAirportSucceess,
  }) {
    return fetchAirportsSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AirportModelState data)? initial,
    TResult? Function(AirportModelState data)? fetchAirportsSuccess,
    TResult? Function(AirportModelState data, String message)?
        fetchAirportsFailed,
    TResult? Function(AirportModelState data)? loading,
    TResult? Function(AirportModelState data, String id)?
        openAddEditAirportSucceess,
  }) {
    return fetchAirportsSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AirportModelState data)? initial,
    TResult Function(AirportModelState data)? fetchAirportsSuccess,
    TResult Function(AirportModelState data, String message)?
        fetchAirportsFailed,
    TResult Function(AirportModelState data)? loading,
    TResult Function(AirportModelState data, String id)?
        openAddEditAirportSucceess,
    required TResult orElse(),
  }) {
    if (fetchAirportsSuccess != null) {
      return fetchAirportsSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchAirportSuccess value) fetchAirportsSuccess,
    required TResult Function(_FetchAirportFailed value) fetchAirportsFailed,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OpenAddEditAirportSuccess value)
        openAddEditAirportSucceess,
  }) {
    return fetchAirportsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult? Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSucceess,
  }) {
    return fetchAirportsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult Function(_Loading value)? loading,
    TResult Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSucceess,
    required TResult orElse(),
  }) {
    if (fetchAirportsSuccess != null) {
      return fetchAirportsSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchAirportSuccess extends AirportState {
  const factory _FetchAirportSuccess({required final AirportModelState data}) =
      _$_FetchAirportSuccess;
  const _FetchAirportSuccess._() : super._();

  @override
  AirportModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_FetchAirportSuccessCopyWith<_$_FetchAirportSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchAirportFailedCopyWith<$Res>
    implements $AirportStateCopyWith<$Res> {
  factory _$$_FetchAirportFailedCopyWith(_$_FetchAirportFailed value,
          $Res Function(_$_FetchAirportFailed) then) =
      __$$_FetchAirportFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AirportModelState data, String message});

  @override
  $AirportModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FetchAirportFailedCopyWithImpl<$Res>
    extends _$AirportStateCopyWithImpl<$Res, _$_FetchAirportFailed>
    implements _$$_FetchAirportFailedCopyWith<$Res> {
  __$$_FetchAirportFailedCopyWithImpl(
      _$_FetchAirportFailed _value, $Res Function(_$_FetchAirportFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_FetchAirportFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AirportModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchAirportFailed extends _FetchAirportFailed {
  const _$_FetchAirportFailed({required this.data, required this.message})
      : super._();

  @override
  final AirportModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'AirportState.fetchAirportsFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchAirportFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchAirportFailedCopyWith<_$_FetchAirportFailed> get copyWith =>
      __$$_FetchAirportFailedCopyWithImpl<_$_FetchAirportFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AirportModelState data) initial,
    required TResult Function(AirportModelState data) fetchAirportsSuccess,
    required TResult Function(AirportModelState data, String message)
        fetchAirportsFailed,
    required TResult Function(AirportModelState data) loading,
    required TResult Function(AirportModelState data, String id)
        openAddEditAirportSucceess,
  }) {
    return fetchAirportsFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AirportModelState data)? initial,
    TResult? Function(AirportModelState data)? fetchAirportsSuccess,
    TResult? Function(AirportModelState data, String message)?
        fetchAirportsFailed,
    TResult? Function(AirportModelState data)? loading,
    TResult? Function(AirportModelState data, String id)?
        openAddEditAirportSucceess,
  }) {
    return fetchAirportsFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AirportModelState data)? initial,
    TResult Function(AirportModelState data)? fetchAirportsSuccess,
    TResult Function(AirportModelState data, String message)?
        fetchAirportsFailed,
    TResult Function(AirportModelState data)? loading,
    TResult Function(AirportModelState data, String id)?
        openAddEditAirportSucceess,
    required TResult orElse(),
  }) {
    if (fetchAirportsFailed != null) {
      return fetchAirportsFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchAirportSuccess value) fetchAirportsSuccess,
    required TResult Function(_FetchAirportFailed value) fetchAirportsFailed,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OpenAddEditAirportSuccess value)
        openAddEditAirportSucceess,
  }) {
    return fetchAirportsFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult? Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSucceess,
  }) {
    return fetchAirportsFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult Function(_Loading value)? loading,
    TResult Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSucceess,
    required TResult orElse(),
  }) {
    if (fetchAirportsFailed != null) {
      return fetchAirportsFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchAirportFailed extends AirportState {
  const factory _FetchAirportFailed(
      {required final AirportModelState data,
      required final String message}) = _$_FetchAirportFailed;
  const _FetchAirportFailed._() : super._();

  @override
  AirportModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_FetchAirportFailedCopyWith<_$_FetchAirportFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $AirportStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AirportModelState data});

  @override
  $AirportModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AirportStateCopyWithImpl<$Res, _$_Loading>
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
              as AirportModelState,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final AirportModelState data;

  @override
  String toString() {
    return 'AirportState.loading(data: $data)';
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
    required TResult Function(AirportModelState data) initial,
    required TResult Function(AirportModelState data) fetchAirportsSuccess,
    required TResult Function(AirportModelState data, String message)
        fetchAirportsFailed,
    required TResult Function(AirportModelState data) loading,
    required TResult Function(AirportModelState data, String id)
        openAddEditAirportSucceess,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AirportModelState data)? initial,
    TResult? Function(AirportModelState data)? fetchAirportsSuccess,
    TResult? Function(AirportModelState data, String message)?
        fetchAirportsFailed,
    TResult? Function(AirportModelState data)? loading,
    TResult? Function(AirportModelState data, String id)?
        openAddEditAirportSucceess,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AirportModelState data)? initial,
    TResult Function(AirportModelState data)? fetchAirportsSuccess,
    TResult Function(AirportModelState data, String message)?
        fetchAirportsFailed,
    TResult Function(AirportModelState data)? loading,
    TResult Function(AirportModelState data, String id)?
        openAddEditAirportSucceess,
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
    required TResult Function(_FetchAirportSuccess value) fetchAirportsSuccess,
    required TResult Function(_FetchAirportFailed value) fetchAirportsFailed,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OpenAddEditAirportSuccess value)
        openAddEditAirportSucceess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult? Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSucceess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult Function(_Loading value)? loading,
    TResult Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSucceess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends AirportState {
  const factory _Loading({required final AirportModelState data}) = _$_Loading;
  const _Loading._() : super._();

  @override
  AirportModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OpenAddEditAirportSuccessCopyWith<$Res>
    implements $AirportStateCopyWith<$Res> {
  factory _$$_OpenAddEditAirportSuccessCopyWith(
          _$_OpenAddEditAirportSuccess value,
          $Res Function(_$_OpenAddEditAirportSuccess) then) =
      __$$_OpenAddEditAirportSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AirportModelState data, String id});

  @override
  $AirportModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_OpenAddEditAirportSuccessCopyWithImpl<$Res>
    extends _$AirportStateCopyWithImpl<$Res, _$_OpenAddEditAirportSuccess>
    implements _$$_OpenAddEditAirportSuccessCopyWith<$Res> {
  __$$_OpenAddEditAirportSuccessCopyWithImpl(
      _$_OpenAddEditAirportSuccess _value,
      $Res Function(_$_OpenAddEditAirportSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? id = null,
  }) {
    return _then(_$_OpenAddEditAirportSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AirportModelState,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OpenAddEditAirportSuccess extends _OpenAddEditAirportSuccess {
  const _$_OpenAddEditAirportSuccess({required this.data, required this.id})
      : super._();

  @override
  final AirportModelState data;
  @override
  final String id;

  @override
  String toString() {
    return 'AirportState.openAddEditAirportSucceess(data: $data, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenAddEditAirportSuccess &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenAddEditAirportSuccessCopyWith<_$_OpenAddEditAirportSuccess>
      get copyWith => __$$_OpenAddEditAirportSuccessCopyWithImpl<
          _$_OpenAddEditAirportSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AirportModelState data) initial,
    required TResult Function(AirportModelState data) fetchAirportsSuccess,
    required TResult Function(AirportModelState data, String message)
        fetchAirportsFailed,
    required TResult Function(AirportModelState data) loading,
    required TResult Function(AirportModelState data, String id)
        openAddEditAirportSucceess,
  }) {
    return openAddEditAirportSucceess(data, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AirportModelState data)? initial,
    TResult? Function(AirportModelState data)? fetchAirportsSuccess,
    TResult? Function(AirportModelState data, String message)?
        fetchAirportsFailed,
    TResult? Function(AirportModelState data)? loading,
    TResult? Function(AirportModelState data, String id)?
        openAddEditAirportSucceess,
  }) {
    return openAddEditAirportSucceess?.call(data, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AirportModelState data)? initial,
    TResult Function(AirportModelState data)? fetchAirportsSuccess,
    TResult Function(AirportModelState data, String message)?
        fetchAirportsFailed,
    TResult Function(AirportModelState data)? loading,
    TResult Function(AirportModelState data, String id)?
        openAddEditAirportSucceess,
    required TResult orElse(),
  }) {
    if (openAddEditAirportSucceess != null) {
      return openAddEditAirportSucceess(data, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchAirportSuccess value) fetchAirportsSuccess,
    required TResult Function(_FetchAirportFailed value) fetchAirportsFailed,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OpenAddEditAirportSuccess value)
        openAddEditAirportSucceess,
  }) {
    return openAddEditAirportSucceess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult? Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSucceess,
  }) {
    return openAddEditAirportSucceess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult Function(_Loading value)? loading,
    TResult Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSucceess,
    required TResult orElse(),
  }) {
    if (openAddEditAirportSucceess != null) {
      return openAddEditAirportSucceess(this);
    }
    return orElse();
  }
}

abstract class _OpenAddEditAirportSuccess extends AirportState {
  const factory _OpenAddEditAirportSuccess(
      {required final AirportModelState data,
      required final String id}) = _$_OpenAddEditAirportSuccess;
  const _OpenAddEditAirportSuccess._() : super._();

  @override
  AirportModelState get data;
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_OpenAddEditAirportSuccessCopyWith<_$_OpenAddEditAirportSuccess>
      get copyWith => throw _privateConstructorUsedError;
}
