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
    required TResult Function(Airport airport) updateAirportsAfterAdd,
    required TResult Function(Airport airport) updateAirportsAfterEdit,
    required TResult Function(int id) deleteAirport,
    required TResult Function() loadingComplete,
    required TResult Function(int page) changePageAirportView,
    required TResult Function(String text) textChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? fetchAirports,
    TResult? Function()? changePageView,
    TResult? Function(String id)? openAddEditAirportForm,
    TResult? Function(Airport airport)? updateAirportsAfterAdd,
    TResult? Function(Airport airport)? updateAirportsAfterEdit,
    TResult? Function(int id)? deleteAirport,
    TResult? Function()? loadingComplete,
    TResult? Function(int page)? changePageAirportView,
    TResult? Function(String text)? textChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? fetchAirports,
    TResult Function()? changePageView,
    TResult Function(String id)? openAddEditAirportForm,
    TResult Function(Airport airport)? updateAirportsAfterAdd,
    TResult Function(Airport airport)? updateAirportsAfterEdit,
    TResult Function(int id)? deleteAirport,
    TResult Function()? loadingComplete,
    TResult Function(int page)? changePageAirportView,
    TResult Function(String text)? textChange,
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
    required TResult Function(_UpdateAirportsAfterAdd value)
        updateAirportsAfterAdd,
    required TResult Function(_UpdateAirportsAfterEdit value)
        updateAirportsAfterEdit,
    required TResult Function(_DeleteAirport value) deleteAirport,
    required TResult Function(_LoadingComplete value) loadingComplete,
    required TResult Function(_ChangePageAirportView value)
        changePageAirportView,
    required TResult Function(_TextChange value) textChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_FetchAirports value)? fetchAirports,
    TResult? Function(_ChangePageView value)? changePageView,
    TResult? Function(_OpenAddEditAirportForm value)? openAddEditAirportForm,
    TResult? Function(_UpdateAirportsAfterAdd value)? updateAirportsAfterAdd,
    TResult? Function(_UpdateAirportsAfterEdit value)? updateAirportsAfterEdit,
    TResult? Function(_DeleteAirport value)? deleteAirport,
    TResult? Function(_LoadingComplete value)? loadingComplete,
    TResult? Function(_ChangePageAirportView value)? changePageAirportView,
    TResult? Function(_TextChange value)? textChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_FetchAirports value)? fetchAirports,
    TResult Function(_ChangePageView value)? changePageView,
    TResult Function(_OpenAddEditAirportForm value)? openAddEditAirportForm,
    TResult Function(_UpdateAirportsAfterAdd value)? updateAirportsAfterAdd,
    TResult Function(_UpdateAirportsAfterEdit value)? updateAirportsAfterEdit,
    TResult Function(_DeleteAirport value)? deleteAirport,
    TResult Function(_LoadingComplete value)? loadingComplete,
    TResult Function(_ChangePageAirportView value)? changePageAirportView,
    TResult Function(_TextChange value)? textChange,
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
    required TResult Function(Airport airport) updateAirportsAfterAdd,
    required TResult Function(Airport airport) updateAirportsAfterEdit,
    required TResult Function(int id) deleteAirport,
    required TResult Function() loadingComplete,
    required TResult Function(int page) changePageAirportView,
    required TResult Function(String text) textChange,
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
    TResult? Function(Airport airport)? updateAirportsAfterAdd,
    TResult? Function(Airport airport)? updateAirportsAfterEdit,
    TResult? Function(int id)? deleteAirport,
    TResult? Function()? loadingComplete,
    TResult? Function(int page)? changePageAirportView,
    TResult? Function(String text)? textChange,
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
    TResult Function(Airport airport)? updateAirportsAfterAdd,
    TResult Function(Airport airport)? updateAirportsAfterEdit,
    TResult Function(int id)? deleteAirport,
    TResult Function()? loadingComplete,
    TResult Function(int page)? changePageAirportView,
    TResult Function(String text)? textChange,
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
    required TResult Function(_UpdateAirportsAfterAdd value)
        updateAirportsAfterAdd,
    required TResult Function(_UpdateAirportsAfterEdit value)
        updateAirportsAfterEdit,
    required TResult Function(_DeleteAirport value) deleteAirport,
    required TResult Function(_LoadingComplete value) loadingComplete,
    required TResult Function(_ChangePageAirportView value)
        changePageAirportView,
    required TResult Function(_TextChange value) textChange,
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
    TResult? Function(_UpdateAirportsAfterAdd value)? updateAirportsAfterAdd,
    TResult? Function(_UpdateAirportsAfterEdit value)? updateAirportsAfterEdit,
    TResult? Function(_DeleteAirport value)? deleteAirport,
    TResult? Function(_LoadingComplete value)? loadingComplete,
    TResult? Function(_ChangePageAirportView value)? changePageAirportView,
    TResult? Function(_TextChange value)? textChange,
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
    TResult Function(_UpdateAirportsAfterAdd value)? updateAirportsAfterAdd,
    TResult Function(_UpdateAirportsAfterEdit value)? updateAirportsAfterEdit,
    TResult Function(_DeleteAirport value)? deleteAirport,
    TResult Function(_LoadingComplete value)? loadingComplete,
    TResult Function(_ChangePageAirportView value)? changePageAirportView,
    TResult Function(_TextChange value)? textChange,
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
    required TResult Function(Airport airport) updateAirportsAfterAdd,
    required TResult Function(Airport airport) updateAirportsAfterEdit,
    required TResult Function(int id) deleteAirport,
    required TResult Function() loadingComplete,
    required TResult Function(int page) changePageAirportView,
    required TResult Function(String text) textChange,
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
    TResult? Function(Airport airport)? updateAirportsAfterAdd,
    TResult? Function(Airport airport)? updateAirportsAfterEdit,
    TResult? Function(int id)? deleteAirport,
    TResult? Function()? loadingComplete,
    TResult? Function(int page)? changePageAirportView,
    TResult? Function(String text)? textChange,
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
    TResult Function(Airport airport)? updateAirportsAfterAdd,
    TResult Function(Airport airport)? updateAirportsAfterEdit,
    TResult Function(int id)? deleteAirport,
    TResult Function()? loadingComplete,
    TResult Function(int page)? changePageAirportView,
    TResult Function(String text)? textChange,
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
    required TResult Function(_UpdateAirportsAfterAdd value)
        updateAirportsAfterAdd,
    required TResult Function(_UpdateAirportsAfterEdit value)
        updateAirportsAfterEdit,
    required TResult Function(_DeleteAirport value) deleteAirport,
    required TResult Function(_LoadingComplete value) loadingComplete,
    required TResult Function(_ChangePageAirportView value)
        changePageAirportView,
    required TResult Function(_TextChange value) textChange,
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
    TResult? Function(_UpdateAirportsAfterAdd value)? updateAirportsAfterAdd,
    TResult? Function(_UpdateAirportsAfterEdit value)? updateAirportsAfterEdit,
    TResult? Function(_DeleteAirport value)? deleteAirport,
    TResult? Function(_LoadingComplete value)? loadingComplete,
    TResult? Function(_ChangePageAirportView value)? changePageAirportView,
    TResult? Function(_TextChange value)? textChange,
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
    TResult Function(_UpdateAirportsAfterAdd value)? updateAirportsAfterAdd,
    TResult Function(_UpdateAirportsAfterEdit value)? updateAirportsAfterEdit,
    TResult Function(_DeleteAirport value)? deleteAirport,
    TResult Function(_LoadingComplete value)? loadingComplete,
    TResult Function(_ChangePageAirportView value)? changePageAirportView,
    TResult Function(_TextChange value)? textChange,
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
    required TResult Function(Airport airport) updateAirportsAfterAdd,
    required TResult Function(Airport airport) updateAirportsAfterEdit,
    required TResult Function(int id) deleteAirport,
    required TResult Function() loadingComplete,
    required TResult Function(int page) changePageAirportView,
    required TResult Function(String text) textChange,
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
    TResult? Function(Airport airport)? updateAirportsAfterAdd,
    TResult? Function(Airport airport)? updateAirportsAfterEdit,
    TResult? Function(int id)? deleteAirport,
    TResult? Function()? loadingComplete,
    TResult? Function(int page)? changePageAirportView,
    TResult? Function(String text)? textChange,
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
    TResult Function(Airport airport)? updateAirportsAfterAdd,
    TResult Function(Airport airport)? updateAirportsAfterEdit,
    TResult Function(int id)? deleteAirport,
    TResult Function()? loadingComplete,
    TResult Function(int page)? changePageAirportView,
    TResult Function(String text)? textChange,
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
    required TResult Function(_UpdateAirportsAfterAdd value)
        updateAirportsAfterAdd,
    required TResult Function(_UpdateAirportsAfterEdit value)
        updateAirportsAfterEdit,
    required TResult Function(_DeleteAirport value) deleteAirport,
    required TResult Function(_LoadingComplete value) loadingComplete,
    required TResult Function(_ChangePageAirportView value)
        changePageAirportView,
    required TResult Function(_TextChange value) textChange,
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
    TResult? Function(_UpdateAirportsAfterAdd value)? updateAirportsAfterAdd,
    TResult? Function(_UpdateAirportsAfterEdit value)? updateAirportsAfterEdit,
    TResult? Function(_DeleteAirport value)? deleteAirport,
    TResult? Function(_LoadingComplete value)? loadingComplete,
    TResult? Function(_ChangePageAirportView value)? changePageAirportView,
    TResult? Function(_TextChange value)? textChange,
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
    TResult Function(_UpdateAirportsAfterAdd value)? updateAirportsAfterAdd,
    TResult Function(_UpdateAirportsAfterEdit value)? updateAirportsAfterEdit,
    TResult Function(_DeleteAirport value)? deleteAirport,
    TResult Function(_LoadingComplete value)? loadingComplete,
    TResult Function(_ChangePageAirportView value)? changePageAirportView,
    TResult Function(_TextChange value)? textChange,
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
    required TResult Function(Airport airport) updateAirportsAfterAdd,
    required TResult Function(Airport airport) updateAirportsAfterEdit,
    required TResult Function(int id) deleteAirport,
    required TResult Function() loadingComplete,
    required TResult Function(int page) changePageAirportView,
    required TResult Function(String text) textChange,
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
    TResult? Function(Airport airport)? updateAirportsAfterAdd,
    TResult? Function(Airport airport)? updateAirportsAfterEdit,
    TResult? Function(int id)? deleteAirport,
    TResult? Function()? loadingComplete,
    TResult? Function(int page)? changePageAirportView,
    TResult? Function(String text)? textChange,
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
    TResult Function(Airport airport)? updateAirportsAfterAdd,
    TResult Function(Airport airport)? updateAirportsAfterEdit,
    TResult Function(int id)? deleteAirport,
    TResult Function()? loadingComplete,
    TResult Function(int page)? changePageAirportView,
    TResult Function(String text)? textChange,
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
    required TResult Function(_UpdateAirportsAfterAdd value)
        updateAirportsAfterAdd,
    required TResult Function(_UpdateAirportsAfterEdit value)
        updateAirportsAfterEdit,
    required TResult Function(_DeleteAirport value) deleteAirport,
    required TResult Function(_LoadingComplete value) loadingComplete,
    required TResult Function(_ChangePageAirportView value)
        changePageAirportView,
    required TResult Function(_TextChange value) textChange,
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
    TResult? Function(_UpdateAirportsAfterAdd value)? updateAirportsAfterAdd,
    TResult? Function(_UpdateAirportsAfterEdit value)? updateAirportsAfterEdit,
    TResult? Function(_DeleteAirport value)? deleteAirport,
    TResult? Function(_LoadingComplete value)? loadingComplete,
    TResult? Function(_ChangePageAirportView value)? changePageAirportView,
    TResult? Function(_TextChange value)? textChange,
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
    TResult Function(_UpdateAirportsAfterAdd value)? updateAirportsAfterAdd,
    TResult Function(_UpdateAirportsAfterEdit value)? updateAirportsAfterEdit,
    TResult Function(_DeleteAirport value)? deleteAirport,
    TResult Function(_LoadingComplete value)? loadingComplete,
    TResult Function(_ChangePageAirportView value)? changePageAirportView,
    TResult Function(_TextChange value)? textChange,
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
abstract class _$$_UpdateAirportsAfterAddCopyWith<$Res> {
  factory _$$_UpdateAirportsAfterAddCopyWith(_$_UpdateAirportsAfterAdd value,
          $Res Function(_$_UpdateAirportsAfterAdd) then) =
      __$$_UpdateAirportsAfterAddCopyWithImpl<$Res>;
  @useResult
  $Res call({Airport airport});

  $AirportCopyWith<$Res> get airport;
}

/// @nodoc
class __$$_UpdateAirportsAfterAddCopyWithImpl<$Res>
    extends _$AirportEventCopyWithImpl<$Res, _$_UpdateAirportsAfterAdd>
    implements _$$_UpdateAirportsAfterAddCopyWith<$Res> {
  __$$_UpdateAirportsAfterAddCopyWithImpl(_$_UpdateAirportsAfterAdd _value,
      $Res Function(_$_UpdateAirportsAfterAdd) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airport = null,
  }) {
    return _then(_$_UpdateAirportsAfterAdd(
      null == airport
          ? _value.airport
          : airport // ignore: cast_nullable_to_non_nullable
              as Airport,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AirportCopyWith<$Res> get airport {
    return $AirportCopyWith<$Res>(_value.airport, (value) {
      return _then(_value.copyWith(airport: value));
    });
  }
}

/// @nodoc

class _$_UpdateAirportsAfterAdd implements _UpdateAirportsAfterAdd {
  const _$_UpdateAirportsAfterAdd(this.airport);

  @override
  final Airport airport;

  @override
  String toString() {
    return 'AirportEvent.updateAirportsAfterAdd(airport: $airport)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAirportsAfterAdd &&
            (identical(other.airport, airport) || other.airport == airport));
  }

  @override
  int get hashCode => Object.hash(runtimeType, airport);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateAirportsAfterAddCopyWith<_$_UpdateAirportsAfterAdd> get copyWith =>
      __$$_UpdateAirportsAfterAddCopyWithImpl<_$_UpdateAirportsAfterAdd>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() fetchAirports,
    required TResult Function() changePageView,
    required TResult Function(String id) openAddEditAirportForm,
    required TResult Function(Airport airport) updateAirportsAfterAdd,
    required TResult Function(Airport airport) updateAirportsAfterEdit,
    required TResult Function(int id) deleteAirport,
    required TResult Function() loadingComplete,
    required TResult Function(int page) changePageAirportView,
    required TResult Function(String text) textChange,
  }) {
    return updateAirportsAfterAdd(airport);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? fetchAirports,
    TResult? Function()? changePageView,
    TResult? Function(String id)? openAddEditAirportForm,
    TResult? Function(Airport airport)? updateAirportsAfterAdd,
    TResult? Function(Airport airport)? updateAirportsAfterEdit,
    TResult? Function(int id)? deleteAirport,
    TResult? Function()? loadingComplete,
    TResult? Function(int page)? changePageAirportView,
    TResult? Function(String text)? textChange,
  }) {
    return updateAirportsAfterAdd?.call(airport);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? fetchAirports,
    TResult Function()? changePageView,
    TResult Function(String id)? openAddEditAirportForm,
    TResult Function(Airport airport)? updateAirportsAfterAdd,
    TResult Function(Airport airport)? updateAirportsAfterEdit,
    TResult Function(int id)? deleteAirport,
    TResult Function()? loadingComplete,
    TResult Function(int page)? changePageAirportView,
    TResult Function(String text)? textChange,
    required TResult orElse(),
  }) {
    if (updateAirportsAfterAdd != null) {
      return updateAirportsAfterAdd(airport);
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
    required TResult Function(_UpdateAirportsAfterAdd value)
        updateAirportsAfterAdd,
    required TResult Function(_UpdateAirportsAfterEdit value)
        updateAirportsAfterEdit,
    required TResult Function(_DeleteAirport value) deleteAirport,
    required TResult Function(_LoadingComplete value) loadingComplete,
    required TResult Function(_ChangePageAirportView value)
        changePageAirportView,
    required TResult Function(_TextChange value) textChange,
  }) {
    return updateAirportsAfterAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_FetchAirports value)? fetchAirports,
    TResult? Function(_ChangePageView value)? changePageView,
    TResult? Function(_OpenAddEditAirportForm value)? openAddEditAirportForm,
    TResult? Function(_UpdateAirportsAfterAdd value)? updateAirportsAfterAdd,
    TResult? Function(_UpdateAirportsAfterEdit value)? updateAirportsAfterEdit,
    TResult? Function(_DeleteAirport value)? deleteAirport,
    TResult? Function(_LoadingComplete value)? loadingComplete,
    TResult? Function(_ChangePageAirportView value)? changePageAirportView,
    TResult? Function(_TextChange value)? textChange,
  }) {
    return updateAirportsAfterAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_FetchAirports value)? fetchAirports,
    TResult Function(_ChangePageView value)? changePageView,
    TResult Function(_OpenAddEditAirportForm value)? openAddEditAirportForm,
    TResult Function(_UpdateAirportsAfterAdd value)? updateAirportsAfterAdd,
    TResult Function(_UpdateAirportsAfterEdit value)? updateAirportsAfterEdit,
    TResult Function(_DeleteAirport value)? deleteAirport,
    TResult Function(_LoadingComplete value)? loadingComplete,
    TResult Function(_ChangePageAirportView value)? changePageAirportView,
    TResult Function(_TextChange value)? textChange,
    required TResult orElse(),
  }) {
    if (updateAirportsAfterAdd != null) {
      return updateAirportsAfterAdd(this);
    }
    return orElse();
  }
}

abstract class _UpdateAirportsAfterAdd implements AirportEvent {
  const factory _UpdateAirportsAfterAdd(final Airport airport) =
      _$_UpdateAirportsAfterAdd;

  Airport get airport;
  @JsonKey(ignore: true)
  _$$_UpdateAirportsAfterAddCopyWith<_$_UpdateAirportsAfterAdd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateAirportsAfterEditCopyWith<$Res> {
  factory _$$_UpdateAirportsAfterEditCopyWith(_$_UpdateAirportsAfterEdit value,
          $Res Function(_$_UpdateAirportsAfterEdit) then) =
      __$$_UpdateAirportsAfterEditCopyWithImpl<$Res>;
  @useResult
  $Res call({Airport airport});

  $AirportCopyWith<$Res> get airport;
}

/// @nodoc
class __$$_UpdateAirportsAfterEditCopyWithImpl<$Res>
    extends _$AirportEventCopyWithImpl<$Res, _$_UpdateAirportsAfterEdit>
    implements _$$_UpdateAirportsAfterEditCopyWith<$Res> {
  __$$_UpdateAirportsAfterEditCopyWithImpl(_$_UpdateAirportsAfterEdit _value,
      $Res Function(_$_UpdateAirportsAfterEdit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airport = null,
  }) {
    return _then(_$_UpdateAirportsAfterEdit(
      null == airport
          ? _value.airport
          : airport // ignore: cast_nullable_to_non_nullable
              as Airport,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AirportCopyWith<$Res> get airport {
    return $AirportCopyWith<$Res>(_value.airport, (value) {
      return _then(_value.copyWith(airport: value));
    });
  }
}

/// @nodoc

class _$_UpdateAirportsAfterEdit implements _UpdateAirportsAfterEdit {
  const _$_UpdateAirportsAfterEdit(this.airport);

  @override
  final Airport airport;

  @override
  String toString() {
    return 'AirportEvent.updateAirportsAfterEdit(airport: $airport)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAirportsAfterEdit &&
            (identical(other.airport, airport) || other.airport == airport));
  }

  @override
  int get hashCode => Object.hash(runtimeType, airport);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateAirportsAfterEditCopyWith<_$_UpdateAirportsAfterEdit>
      get copyWith =>
          __$$_UpdateAirportsAfterEditCopyWithImpl<_$_UpdateAirportsAfterEdit>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() fetchAirports,
    required TResult Function() changePageView,
    required TResult Function(String id) openAddEditAirportForm,
    required TResult Function(Airport airport) updateAirportsAfterAdd,
    required TResult Function(Airport airport) updateAirportsAfterEdit,
    required TResult Function(int id) deleteAirport,
    required TResult Function() loadingComplete,
    required TResult Function(int page) changePageAirportView,
    required TResult Function(String text) textChange,
  }) {
    return updateAirportsAfterEdit(airport);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? fetchAirports,
    TResult? Function()? changePageView,
    TResult? Function(String id)? openAddEditAirportForm,
    TResult? Function(Airport airport)? updateAirportsAfterAdd,
    TResult? Function(Airport airport)? updateAirportsAfterEdit,
    TResult? Function(int id)? deleteAirport,
    TResult? Function()? loadingComplete,
    TResult? Function(int page)? changePageAirportView,
    TResult? Function(String text)? textChange,
  }) {
    return updateAirportsAfterEdit?.call(airport);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? fetchAirports,
    TResult Function()? changePageView,
    TResult Function(String id)? openAddEditAirportForm,
    TResult Function(Airport airport)? updateAirportsAfterAdd,
    TResult Function(Airport airport)? updateAirportsAfterEdit,
    TResult Function(int id)? deleteAirport,
    TResult Function()? loadingComplete,
    TResult Function(int page)? changePageAirportView,
    TResult Function(String text)? textChange,
    required TResult orElse(),
  }) {
    if (updateAirportsAfterEdit != null) {
      return updateAirportsAfterEdit(airport);
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
    required TResult Function(_UpdateAirportsAfterAdd value)
        updateAirportsAfterAdd,
    required TResult Function(_UpdateAirportsAfterEdit value)
        updateAirportsAfterEdit,
    required TResult Function(_DeleteAirport value) deleteAirport,
    required TResult Function(_LoadingComplete value) loadingComplete,
    required TResult Function(_ChangePageAirportView value)
        changePageAirportView,
    required TResult Function(_TextChange value) textChange,
  }) {
    return updateAirportsAfterEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_FetchAirports value)? fetchAirports,
    TResult? Function(_ChangePageView value)? changePageView,
    TResult? Function(_OpenAddEditAirportForm value)? openAddEditAirportForm,
    TResult? Function(_UpdateAirportsAfterAdd value)? updateAirportsAfterAdd,
    TResult? Function(_UpdateAirportsAfterEdit value)? updateAirportsAfterEdit,
    TResult? Function(_DeleteAirport value)? deleteAirport,
    TResult? Function(_LoadingComplete value)? loadingComplete,
    TResult? Function(_ChangePageAirportView value)? changePageAirportView,
    TResult? Function(_TextChange value)? textChange,
  }) {
    return updateAirportsAfterEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_FetchAirports value)? fetchAirports,
    TResult Function(_ChangePageView value)? changePageView,
    TResult Function(_OpenAddEditAirportForm value)? openAddEditAirportForm,
    TResult Function(_UpdateAirportsAfterAdd value)? updateAirportsAfterAdd,
    TResult Function(_UpdateAirportsAfterEdit value)? updateAirportsAfterEdit,
    TResult Function(_DeleteAirport value)? deleteAirport,
    TResult Function(_LoadingComplete value)? loadingComplete,
    TResult Function(_ChangePageAirportView value)? changePageAirportView,
    TResult Function(_TextChange value)? textChange,
    required TResult orElse(),
  }) {
    if (updateAirportsAfterEdit != null) {
      return updateAirportsAfterEdit(this);
    }
    return orElse();
  }
}

abstract class _UpdateAirportsAfterEdit implements AirportEvent {
  const factory _UpdateAirportsAfterEdit(final Airport airport) =
      _$_UpdateAirportsAfterEdit;

  Airport get airport;
  @JsonKey(ignore: true)
  _$$_UpdateAirportsAfterEditCopyWith<_$_UpdateAirportsAfterEdit>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteAirportCopyWith<$Res> {
  factory _$$_DeleteAirportCopyWith(
          _$_DeleteAirport value, $Res Function(_$_DeleteAirport) then) =
      __$$_DeleteAirportCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_DeleteAirportCopyWithImpl<$Res>
    extends _$AirportEventCopyWithImpl<$Res, _$_DeleteAirport>
    implements _$$_DeleteAirportCopyWith<$Res> {
  __$$_DeleteAirportCopyWithImpl(
      _$_DeleteAirport _value, $Res Function(_$_DeleteAirport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_DeleteAirport(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteAirport implements _DeleteAirport {
  const _$_DeleteAirport(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'AirportEvent.deleteAirport(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteAirport &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteAirportCopyWith<_$_DeleteAirport> get copyWith =>
      __$$_DeleteAirportCopyWithImpl<_$_DeleteAirport>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() fetchAirports,
    required TResult Function() changePageView,
    required TResult Function(String id) openAddEditAirportForm,
    required TResult Function(Airport airport) updateAirportsAfterAdd,
    required TResult Function(Airport airport) updateAirportsAfterEdit,
    required TResult Function(int id) deleteAirport,
    required TResult Function() loadingComplete,
    required TResult Function(int page) changePageAirportView,
    required TResult Function(String text) textChange,
  }) {
    return deleteAirport(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? fetchAirports,
    TResult? Function()? changePageView,
    TResult? Function(String id)? openAddEditAirportForm,
    TResult? Function(Airport airport)? updateAirportsAfterAdd,
    TResult? Function(Airport airport)? updateAirportsAfterEdit,
    TResult? Function(int id)? deleteAirport,
    TResult? Function()? loadingComplete,
    TResult? Function(int page)? changePageAirportView,
    TResult? Function(String text)? textChange,
  }) {
    return deleteAirport?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? fetchAirports,
    TResult Function()? changePageView,
    TResult Function(String id)? openAddEditAirportForm,
    TResult Function(Airport airport)? updateAirportsAfterAdd,
    TResult Function(Airport airport)? updateAirportsAfterEdit,
    TResult Function(int id)? deleteAirport,
    TResult Function()? loadingComplete,
    TResult Function(int page)? changePageAirportView,
    TResult Function(String text)? textChange,
    required TResult orElse(),
  }) {
    if (deleteAirport != null) {
      return deleteAirport(id);
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
    required TResult Function(_UpdateAirportsAfterAdd value)
        updateAirportsAfterAdd,
    required TResult Function(_UpdateAirportsAfterEdit value)
        updateAirportsAfterEdit,
    required TResult Function(_DeleteAirport value) deleteAirport,
    required TResult Function(_LoadingComplete value) loadingComplete,
    required TResult Function(_ChangePageAirportView value)
        changePageAirportView,
    required TResult Function(_TextChange value) textChange,
  }) {
    return deleteAirport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_FetchAirports value)? fetchAirports,
    TResult? Function(_ChangePageView value)? changePageView,
    TResult? Function(_OpenAddEditAirportForm value)? openAddEditAirportForm,
    TResult? Function(_UpdateAirportsAfterAdd value)? updateAirportsAfterAdd,
    TResult? Function(_UpdateAirportsAfterEdit value)? updateAirportsAfterEdit,
    TResult? Function(_DeleteAirport value)? deleteAirport,
    TResult? Function(_LoadingComplete value)? loadingComplete,
    TResult? Function(_ChangePageAirportView value)? changePageAirportView,
    TResult? Function(_TextChange value)? textChange,
  }) {
    return deleteAirport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_FetchAirports value)? fetchAirports,
    TResult Function(_ChangePageView value)? changePageView,
    TResult Function(_OpenAddEditAirportForm value)? openAddEditAirportForm,
    TResult Function(_UpdateAirportsAfterAdd value)? updateAirportsAfterAdd,
    TResult Function(_UpdateAirportsAfterEdit value)? updateAirportsAfterEdit,
    TResult Function(_DeleteAirport value)? deleteAirport,
    TResult Function(_LoadingComplete value)? loadingComplete,
    TResult Function(_ChangePageAirportView value)? changePageAirportView,
    TResult Function(_TextChange value)? textChange,
    required TResult orElse(),
  }) {
    if (deleteAirport != null) {
      return deleteAirport(this);
    }
    return orElse();
  }
}

abstract class _DeleteAirport implements AirportEvent {
  const factory _DeleteAirport(final int id) = _$_DeleteAirport;

  int get id;
  @JsonKey(ignore: true)
  _$$_DeleteAirportCopyWith<_$_DeleteAirport> get copyWith =>
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
    extends _$AirportEventCopyWithImpl<$Res, _$_LoadingComplete>
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
    return 'AirportEvent.loadingComplete()';
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
    required TResult Function() fetchAirports,
    required TResult Function() changePageView,
    required TResult Function(String id) openAddEditAirportForm,
    required TResult Function(Airport airport) updateAirportsAfterAdd,
    required TResult Function(Airport airport) updateAirportsAfterEdit,
    required TResult Function(int id) deleteAirport,
    required TResult Function() loadingComplete,
    required TResult Function(int page) changePageAirportView,
    required TResult Function(String text) textChange,
  }) {
    return loadingComplete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? fetchAirports,
    TResult? Function()? changePageView,
    TResult? Function(String id)? openAddEditAirportForm,
    TResult? Function(Airport airport)? updateAirportsAfterAdd,
    TResult? Function(Airport airport)? updateAirportsAfterEdit,
    TResult? Function(int id)? deleteAirport,
    TResult? Function()? loadingComplete,
    TResult? Function(int page)? changePageAirportView,
    TResult? Function(String text)? textChange,
  }) {
    return loadingComplete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? fetchAirports,
    TResult Function()? changePageView,
    TResult Function(String id)? openAddEditAirportForm,
    TResult Function(Airport airport)? updateAirportsAfterAdd,
    TResult Function(Airport airport)? updateAirportsAfterEdit,
    TResult Function(int id)? deleteAirport,
    TResult Function()? loadingComplete,
    TResult Function(int page)? changePageAirportView,
    TResult Function(String text)? textChange,
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
    required TResult Function(_FetchAirports value) fetchAirports,
    required TResult Function(_ChangePageView value) changePageView,
    required TResult Function(_OpenAddEditAirportForm value)
        openAddEditAirportForm,
    required TResult Function(_UpdateAirportsAfterAdd value)
        updateAirportsAfterAdd,
    required TResult Function(_UpdateAirportsAfterEdit value)
        updateAirportsAfterEdit,
    required TResult Function(_DeleteAirport value) deleteAirport,
    required TResult Function(_LoadingComplete value) loadingComplete,
    required TResult Function(_ChangePageAirportView value)
        changePageAirportView,
    required TResult Function(_TextChange value) textChange,
  }) {
    return loadingComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_FetchAirports value)? fetchAirports,
    TResult? Function(_ChangePageView value)? changePageView,
    TResult? Function(_OpenAddEditAirportForm value)? openAddEditAirportForm,
    TResult? Function(_UpdateAirportsAfterAdd value)? updateAirportsAfterAdd,
    TResult? Function(_UpdateAirportsAfterEdit value)? updateAirportsAfterEdit,
    TResult? Function(_DeleteAirport value)? deleteAirport,
    TResult? Function(_LoadingComplete value)? loadingComplete,
    TResult? Function(_ChangePageAirportView value)? changePageAirportView,
    TResult? Function(_TextChange value)? textChange,
  }) {
    return loadingComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_FetchAirports value)? fetchAirports,
    TResult Function(_ChangePageView value)? changePageView,
    TResult Function(_OpenAddEditAirportForm value)? openAddEditAirportForm,
    TResult Function(_UpdateAirportsAfterAdd value)? updateAirportsAfterAdd,
    TResult Function(_UpdateAirportsAfterEdit value)? updateAirportsAfterEdit,
    TResult Function(_DeleteAirport value)? deleteAirport,
    TResult Function(_LoadingComplete value)? loadingComplete,
    TResult Function(_ChangePageAirportView value)? changePageAirportView,
    TResult Function(_TextChange value)? textChange,
    required TResult orElse(),
  }) {
    if (loadingComplete != null) {
      return loadingComplete(this);
    }
    return orElse();
  }
}

abstract class _LoadingComplete implements AirportEvent {
  const factory _LoadingComplete() = _$_LoadingComplete;
}

/// @nodoc
abstract class _$$_ChangePageAirportViewCopyWith<$Res> {
  factory _$$_ChangePageAirportViewCopyWith(_$_ChangePageAirportView value,
          $Res Function(_$_ChangePageAirportView) then) =
      __$$_ChangePageAirportViewCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$_ChangePageAirportViewCopyWithImpl<$Res>
    extends _$AirportEventCopyWithImpl<$Res, _$_ChangePageAirportView>
    implements _$$_ChangePageAirportViewCopyWith<$Res> {
  __$$_ChangePageAirportViewCopyWithImpl(_$_ChangePageAirportView _value,
      $Res Function(_$_ChangePageAirportView) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$_ChangePageAirportView(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangePageAirportView implements _ChangePageAirportView {
  const _$_ChangePageAirportView(this.page);

  @override
  final int page;

  @override
  String toString() {
    return 'AirportEvent.changePageAirportView(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePageAirportView &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePageAirportViewCopyWith<_$_ChangePageAirportView> get copyWith =>
      __$$_ChangePageAirportViewCopyWithImpl<_$_ChangePageAirportView>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() fetchAirports,
    required TResult Function() changePageView,
    required TResult Function(String id) openAddEditAirportForm,
    required TResult Function(Airport airport) updateAirportsAfterAdd,
    required TResult Function(Airport airport) updateAirportsAfterEdit,
    required TResult Function(int id) deleteAirport,
    required TResult Function() loadingComplete,
    required TResult Function(int page) changePageAirportView,
    required TResult Function(String text) textChange,
  }) {
    return changePageAirportView(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? fetchAirports,
    TResult? Function()? changePageView,
    TResult? Function(String id)? openAddEditAirportForm,
    TResult? Function(Airport airport)? updateAirportsAfterAdd,
    TResult? Function(Airport airport)? updateAirportsAfterEdit,
    TResult? Function(int id)? deleteAirport,
    TResult? Function()? loadingComplete,
    TResult? Function(int page)? changePageAirportView,
    TResult? Function(String text)? textChange,
  }) {
    return changePageAirportView?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? fetchAirports,
    TResult Function()? changePageView,
    TResult Function(String id)? openAddEditAirportForm,
    TResult Function(Airport airport)? updateAirportsAfterAdd,
    TResult Function(Airport airport)? updateAirportsAfterEdit,
    TResult Function(int id)? deleteAirport,
    TResult Function()? loadingComplete,
    TResult Function(int page)? changePageAirportView,
    TResult Function(String text)? textChange,
    required TResult orElse(),
  }) {
    if (changePageAirportView != null) {
      return changePageAirportView(page);
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
    required TResult Function(_UpdateAirportsAfterAdd value)
        updateAirportsAfterAdd,
    required TResult Function(_UpdateAirportsAfterEdit value)
        updateAirportsAfterEdit,
    required TResult Function(_DeleteAirport value) deleteAirport,
    required TResult Function(_LoadingComplete value) loadingComplete,
    required TResult Function(_ChangePageAirportView value)
        changePageAirportView,
    required TResult Function(_TextChange value) textChange,
  }) {
    return changePageAirportView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_FetchAirports value)? fetchAirports,
    TResult? Function(_ChangePageView value)? changePageView,
    TResult? Function(_OpenAddEditAirportForm value)? openAddEditAirportForm,
    TResult? Function(_UpdateAirportsAfterAdd value)? updateAirportsAfterAdd,
    TResult? Function(_UpdateAirportsAfterEdit value)? updateAirportsAfterEdit,
    TResult? Function(_DeleteAirport value)? deleteAirport,
    TResult? Function(_LoadingComplete value)? loadingComplete,
    TResult? Function(_ChangePageAirportView value)? changePageAirportView,
    TResult? Function(_TextChange value)? textChange,
  }) {
    return changePageAirportView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_FetchAirports value)? fetchAirports,
    TResult Function(_ChangePageView value)? changePageView,
    TResult Function(_OpenAddEditAirportForm value)? openAddEditAirportForm,
    TResult Function(_UpdateAirportsAfterAdd value)? updateAirportsAfterAdd,
    TResult Function(_UpdateAirportsAfterEdit value)? updateAirportsAfterEdit,
    TResult Function(_DeleteAirport value)? deleteAirport,
    TResult Function(_LoadingComplete value)? loadingComplete,
    TResult Function(_ChangePageAirportView value)? changePageAirportView,
    TResult Function(_TextChange value)? textChange,
    required TResult orElse(),
  }) {
    if (changePageAirportView != null) {
      return changePageAirportView(this);
    }
    return orElse();
  }
}

abstract class _ChangePageAirportView implements AirportEvent {
  const factory _ChangePageAirportView(final int page) =
      _$_ChangePageAirportView;

  int get page;
  @JsonKey(ignore: true)
  _$$_ChangePageAirportViewCopyWith<_$_ChangePageAirportView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TextChangeCopyWith<$Res> {
  factory _$$_TextChangeCopyWith(
          _$_TextChange value, $Res Function(_$_TextChange) then) =
      __$$_TextChangeCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_TextChangeCopyWithImpl<$Res>
    extends _$AirportEventCopyWithImpl<$Res, _$_TextChange>
    implements _$$_TextChangeCopyWith<$Res> {
  __$$_TextChangeCopyWithImpl(
      _$_TextChange _value, $Res Function(_$_TextChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_TextChange(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TextChange implements _TextChange {
  const _$_TextChange(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'AirportEvent.textChange(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextChange &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextChangeCopyWith<_$_TextChange> get copyWith =>
      __$$_TextChangeCopyWithImpl<_$_TextChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() fetchAirports,
    required TResult Function() changePageView,
    required TResult Function(String id) openAddEditAirportForm,
    required TResult Function(Airport airport) updateAirportsAfterAdd,
    required TResult Function(Airport airport) updateAirportsAfterEdit,
    required TResult Function(int id) deleteAirport,
    required TResult Function() loadingComplete,
    required TResult Function(int page) changePageAirportView,
    required TResult Function(String text) textChange,
  }) {
    return textChange(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? fetchAirports,
    TResult? Function()? changePageView,
    TResult? Function(String id)? openAddEditAirportForm,
    TResult? Function(Airport airport)? updateAirportsAfterAdd,
    TResult? Function(Airport airport)? updateAirportsAfterEdit,
    TResult? Function(int id)? deleteAirport,
    TResult? Function()? loadingComplete,
    TResult? Function(int page)? changePageAirportView,
    TResult? Function(String text)? textChange,
  }) {
    return textChange?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? fetchAirports,
    TResult Function()? changePageView,
    TResult Function(String id)? openAddEditAirportForm,
    TResult Function(Airport airport)? updateAirportsAfterAdd,
    TResult Function(Airport airport)? updateAirportsAfterEdit,
    TResult Function(int id)? deleteAirport,
    TResult Function()? loadingComplete,
    TResult Function(int page)? changePageAirportView,
    TResult Function(String text)? textChange,
    required TResult orElse(),
  }) {
    if (textChange != null) {
      return textChange(text);
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
    required TResult Function(_UpdateAirportsAfterAdd value)
        updateAirportsAfterAdd,
    required TResult Function(_UpdateAirportsAfterEdit value)
        updateAirportsAfterEdit,
    required TResult Function(_DeleteAirport value) deleteAirport,
    required TResult Function(_LoadingComplete value) loadingComplete,
    required TResult Function(_ChangePageAirportView value)
        changePageAirportView,
    required TResult Function(_TextChange value) textChange,
  }) {
    return textChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_FetchAirports value)? fetchAirports,
    TResult? Function(_ChangePageView value)? changePageView,
    TResult? Function(_OpenAddEditAirportForm value)? openAddEditAirportForm,
    TResult? Function(_UpdateAirportsAfterAdd value)? updateAirportsAfterAdd,
    TResult? Function(_UpdateAirportsAfterEdit value)? updateAirportsAfterEdit,
    TResult? Function(_DeleteAirport value)? deleteAirport,
    TResult? Function(_LoadingComplete value)? loadingComplete,
    TResult? Function(_ChangePageAirportView value)? changePageAirportView,
    TResult? Function(_TextChange value)? textChange,
  }) {
    return textChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_FetchAirports value)? fetchAirports,
    TResult Function(_ChangePageView value)? changePageView,
    TResult Function(_OpenAddEditAirportForm value)? openAddEditAirportForm,
    TResult Function(_UpdateAirportsAfterAdd value)? updateAirportsAfterAdd,
    TResult Function(_UpdateAirportsAfterEdit value)? updateAirportsAfterEdit,
    TResult Function(_DeleteAirport value)? deleteAirport,
    TResult Function(_LoadingComplete value)? loadingComplete,
    TResult Function(_ChangePageAirportView value)? changePageAirportView,
    TResult Function(_TextChange value)? textChange,
    required TResult orElse(),
  }) {
    if (textChange != null) {
      return textChange(this);
    }
    return orElse();
  }
}

abstract class _TextChange implements AirportEvent {
  const factory _TextChange(final String text) = _$_TextChange;

  String get text;
  @JsonKey(ignore: true)
  _$$_TextChangeCopyWith<_$_TextChange> get copyWith =>
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
        openAddEditAirportSuccess,
    required TResult Function(AirportModelState data) deleteAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        deleteAirportFailed,
    required TResult Function(AirportModelState data) waitCircularLoading,
    required TResult Function(AirportModelState data) updateAirportSuccess,
    required TResult Function(AirportModelState data) changePageAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        changePageAirportFailed,
    required TResult Function(AirportModelState data) searchSuccess,
    required TResult Function(AirportModelState data, String message)
        searchFailed,
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
        openAddEditAirportSuccess,
    TResult? Function(AirportModelState data)? deleteAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult? Function(AirportModelState data)? waitCircularLoading,
    TResult? Function(AirportModelState data)? updateAirportSuccess,
    TResult? Function(AirportModelState data)? changePageAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult? Function(AirportModelState data)? searchSuccess,
    TResult? Function(AirportModelState data, String message)? searchFailed,
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
        openAddEditAirportSuccess,
    TResult Function(AirportModelState data)? deleteAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult Function(AirportModelState data)? waitCircularLoading,
    TResult Function(AirportModelState data)? updateAirportSuccess,
    TResult Function(AirportModelState data)? changePageAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult Function(AirportModelState data)? searchSuccess,
    TResult Function(AirportModelState data, String message)? searchFailed,
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
        openAddEditAirportSuccess,
    required TResult Function(_DeleteAirportSuccess value) deleteAirportSuccess,
    required TResult Function(_DeleteAirportFailed value) deleteAirportFailed,
    required TResult Function(_WaitCircularLoading value) waitCircularLoading,
    required TResult Function(_UpdateAirportSuccess value) updateAirportSuccess,
    required TResult Function(_ChangePageAirportSuccess value)
        changePageAirportSuccess,
    required TResult Function(_ChangePageAirportFailed value)
        changePageAirportFailed,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailed value) searchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult? Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSuccess,
    TResult? Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult? Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult? Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult? Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult? Function(_ChangePageAirportSuccess value)?
        changePageAirportSuccess,
    TResult? Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult? Function(_SearchSuccess value)? searchSuccess,
    TResult? Function(_SearchFailed value)? searchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult Function(_Loading value)? loading,
    TResult Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSuccess,
    TResult Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult Function(_ChangePageAirportSuccess value)? changePageAirportSuccess,
    TResult Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailed value)? searchFailed,
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
        openAddEditAirportSuccess,
    required TResult Function(AirportModelState data) deleteAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        deleteAirportFailed,
    required TResult Function(AirportModelState data) waitCircularLoading,
    required TResult Function(AirportModelState data) updateAirportSuccess,
    required TResult Function(AirportModelState data) changePageAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        changePageAirportFailed,
    required TResult Function(AirportModelState data) searchSuccess,
    required TResult Function(AirportModelState data, String message)
        searchFailed,
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
        openAddEditAirportSuccess,
    TResult? Function(AirportModelState data)? deleteAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult? Function(AirportModelState data)? waitCircularLoading,
    TResult? Function(AirportModelState data)? updateAirportSuccess,
    TResult? Function(AirportModelState data)? changePageAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult? Function(AirportModelState data)? searchSuccess,
    TResult? Function(AirportModelState data, String message)? searchFailed,
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
        openAddEditAirportSuccess,
    TResult Function(AirportModelState data)? deleteAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult Function(AirportModelState data)? waitCircularLoading,
    TResult Function(AirportModelState data)? updateAirportSuccess,
    TResult Function(AirportModelState data)? changePageAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult Function(AirportModelState data)? searchSuccess,
    TResult Function(AirportModelState data, String message)? searchFailed,
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
        openAddEditAirportSuccess,
    required TResult Function(_DeleteAirportSuccess value) deleteAirportSuccess,
    required TResult Function(_DeleteAirportFailed value) deleteAirportFailed,
    required TResult Function(_WaitCircularLoading value) waitCircularLoading,
    required TResult Function(_UpdateAirportSuccess value) updateAirportSuccess,
    required TResult Function(_ChangePageAirportSuccess value)
        changePageAirportSuccess,
    required TResult Function(_ChangePageAirportFailed value)
        changePageAirportFailed,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailed value) searchFailed,
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
        openAddEditAirportSuccess,
    TResult? Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult? Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult? Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult? Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult? Function(_ChangePageAirportSuccess value)?
        changePageAirportSuccess,
    TResult? Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult? Function(_SearchSuccess value)? searchSuccess,
    TResult? Function(_SearchFailed value)? searchFailed,
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
        openAddEditAirportSuccess,
    TResult Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult Function(_ChangePageAirportSuccess value)? changePageAirportSuccess,
    TResult Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailed value)? searchFailed,
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
        openAddEditAirportSuccess,
    required TResult Function(AirportModelState data) deleteAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        deleteAirportFailed,
    required TResult Function(AirportModelState data) waitCircularLoading,
    required TResult Function(AirportModelState data) updateAirportSuccess,
    required TResult Function(AirportModelState data) changePageAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        changePageAirportFailed,
    required TResult Function(AirportModelState data) searchSuccess,
    required TResult Function(AirportModelState data, String message)
        searchFailed,
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
        openAddEditAirportSuccess,
    TResult? Function(AirportModelState data)? deleteAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult? Function(AirportModelState data)? waitCircularLoading,
    TResult? Function(AirportModelState data)? updateAirportSuccess,
    TResult? Function(AirportModelState data)? changePageAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult? Function(AirportModelState data)? searchSuccess,
    TResult? Function(AirportModelState data, String message)? searchFailed,
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
        openAddEditAirportSuccess,
    TResult Function(AirportModelState data)? deleteAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult Function(AirportModelState data)? waitCircularLoading,
    TResult Function(AirportModelState data)? updateAirportSuccess,
    TResult Function(AirportModelState data)? changePageAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult Function(AirportModelState data)? searchSuccess,
    TResult Function(AirportModelState data, String message)? searchFailed,
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
        openAddEditAirportSuccess,
    required TResult Function(_DeleteAirportSuccess value) deleteAirportSuccess,
    required TResult Function(_DeleteAirportFailed value) deleteAirportFailed,
    required TResult Function(_WaitCircularLoading value) waitCircularLoading,
    required TResult Function(_UpdateAirportSuccess value) updateAirportSuccess,
    required TResult Function(_ChangePageAirportSuccess value)
        changePageAirportSuccess,
    required TResult Function(_ChangePageAirportFailed value)
        changePageAirportFailed,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailed value) searchFailed,
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
        openAddEditAirportSuccess,
    TResult? Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult? Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult? Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult? Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult? Function(_ChangePageAirportSuccess value)?
        changePageAirportSuccess,
    TResult? Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult? Function(_SearchSuccess value)? searchSuccess,
    TResult? Function(_SearchFailed value)? searchFailed,
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
        openAddEditAirportSuccess,
    TResult Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult Function(_ChangePageAirportSuccess value)? changePageAirportSuccess,
    TResult Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailed value)? searchFailed,
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
        openAddEditAirportSuccess,
    required TResult Function(AirportModelState data) deleteAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        deleteAirportFailed,
    required TResult Function(AirportModelState data) waitCircularLoading,
    required TResult Function(AirportModelState data) updateAirportSuccess,
    required TResult Function(AirportModelState data) changePageAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        changePageAirportFailed,
    required TResult Function(AirportModelState data) searchSuccess,
    required TResult Function(AirportModelState data, String message)
        searchFailed,
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
        openAddEditAirportSuccess,
    TResult? Function(AirportModelState data)? deleteAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult? Function(AirportModelState data)? waitCircularLoading,
    TResult? Function(AirportModelState data)? updateAirportSuccess,
    TResult? Function(AirportModelState data)? changePageAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult? Function(AirportModelState data)? searchSuccess,
    TResult? Function(AirportModelState data, String message)? searchFailed,
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
        openAddEditAirportSuccess,
    TResult Function(AirportModelState data)? deleteAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult Function(AirportModelState data)? waitCircularLoading,
    TResult Function(AirportModelState data)? updateAirportSuccess,
    TResult Function(AirportModelState data)? changePageAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult Function(AirportModelState data)? searchSuccess,
    TResult Function(AirportModelState data, String message)? searchFailed,
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
        openAddEditAirportSuccess,
    required TResult Function(_DeleteAirportSuccess value) deleteAirportSuccess,
    required TResult Function(_DeleteAirportFailed value) deleteAirportFailed,
    required TResult Function(_WaitCircularLoading value) waitCircularLoading,
    required TResult Function(_UpdateAirportSuccess value) updateAirportSuccess,
    required TResult Function(_ChangePageAirportSuccess value)
        changePageAirportSuccess,
    required TResult Function(_ChangePageAirportFailed value)
        changePageAirportFailed,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailed value) searchFailed,
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
        openAddEditAirportSuccess,
    TResult? Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult? Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult? Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult? Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult? Function(_ChangePageAirportSuccess value)?
        changePageAirportSuccess,
    TResult? Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult? Function(_SearchSuccess value)? searchSuccess,
    TResult? Function(_SearchFailed value)? searchFailed,
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
        openAddEditAirportSuccess,
    TResult Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult Function(_ChangePageAirportSuccess value)? changePageAirportSuccess,
    TResult Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailed value)? searchFailed,
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
        openAddEditAirportSuccess,
    required TResult Function(AirportModelState data) deleteAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        deleteAirportFailed,
    required TResult Function(AirportModelState data) waitCircularLoading,
    required TResult Function(AirportModelState data) updateAirportSuccess,
    required TResult Function(AirportModelState data) changePageAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        changePageAirportFailed,
    required TResult Function(AirportModelState data) searchSuccess,
    required TResult Function(AirportModelState data, String message)
        searchFailed,
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
        openAddEditAirportSuccess,
    TResult? Function(AirportModelState data)? deleteAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult? Function(AirportModelState data)? waitCircularLoading,
    TResult? Function(AirportModelState data)? updateAirportSuccess,
    TResult? Function(AirportModelState data)? changePageAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult? Function(AirportModelState data)? searchSuccess,
    TResult? Function(AirportModelState data, String message)? searchFailed,
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
        openAddEditAirportSuccess,
    TResult Function(AirportModelState data)? deleteAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult Function(AirportModelState data)? waitCircularLoading,
    TResult Function(AirportModelState data)? updateAirportSuccess,
    TResult Function(AirportModelState data)? changePageAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult Function(AirportModelState data)? searchSuccess,
    TResult Function(AirportModelState data, String message)? searchFailed,
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
        openAddEditAirportSuccess,
    required TResult Function(_DeleteAirportSuccess value) deleteAirportSuccess,
    required TResult Function(_DeleteAirportFailed value) deleteAirportFailed,
    required TResult Function(_WaitCircularLoading value) waitCircularLoading,
    required TResult Function(_UpdateAirportSuccess value) updateAirportSuccess,
    required TResult Function(_ChangePageAirportSuccess value)
        changePageAirportSuccess,
    required TResult Function(_ChangePageAirportFailed value)
        changePageAirportFailed,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailed value) searchFailed,
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
        openAddEditAirportSuccess,
    TResult? Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult? Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult? Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult? Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult? Function(_ChangePageAirportSuccess value)?
        changePageAirportSuccess,
    TResult? Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult? Function(_SearchSuccess value)? searchSuccess,
    TResult? Function(_SearchFailed value)? searchFailed,
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
        openAddEditAirportSuccess,
    TResult Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult Function(_ChangePageAirportSuccess value)? changePageAirportSuccess,
    TResult Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailed value)? searchFailed,
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
    return 'AirportState.openAddEditAirportSuccess(data: $data, id: $id)';
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
        openAddEditAirportSuccess,
    required TResult Function(AirportModelState data) deleteAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        deleteAirportFailed,
    required TResult Function(AirportModelState data) waitCircularLoading,
    required TResult Function(AirportModelState data) updateAirportSuccess,
    required TResult Function(AirportModelState data) changePageAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        changePageAirportFailed,
    required TResult Function(AirportModelState data) searchSuccess,
    required TResult Function(AirportModelState data, String message)
        searchFailed,
  }) {
    return openAddEditAirportSuccess(data, id);
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
        openAddEditAirportSuccess,
    TResult? Function(AirportModelState data)? deleteAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult? Function(AirportModelState data)? waitCircularLoading,
    TResult? Function(AirportModelState data)? updateAirportSuccess,
    TResult? Function(AirportModelState data)? changePageAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult? Function(AirportModelState data)? searchSuccess,
    TResult? Function(AirportModelState data, String message)? searchFailed,
  }) {
    return openAddEditAirportSuccess?.call(data, id);
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
        openAddEditAirportSuccess,
    TResult Function(AirportModelState data)? deleteAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult Function(AirportModelState data)? waitCircularLoading,
    TResult Function(AirportModelState data)? updateAirportSuccess,
    TResult Function(AirportModelState data)? changePageAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult Function(AirportModelState data)? searchSuccess,
    TResult Function(AirportModelState data, String message)? searchFailed,
    required TResult orElse(),
  }) {
    if (openAddEditAirportSuccess != null) {
      return openAddEditAirportSuccess(data, id);
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
        openAddEditAirportSuccess,
    required TResult Function(_DeleteAirportSuccess value) deleteAirportSuccess,
    required TResult Function(_DeleteAirportFailed value) deleteAirportFailed,
    required TResult Function(_WaitCircularLoading value) waitCircularLoading,
    required TResult Function(_UpdateAirportSuccess value) updateAirportSuccess,
    required TResult Function(_ChangePageAirportSuccess value)
        changePageAirportSuccess,
    required TResult Function(_ChangePageAirportFailed value)
        changePageAirportFailed,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailed value) searchFailed,
  }) {
    return openAddEditAirportSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult? Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSuccess,
    TResult? Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult? Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult? Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult? Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult? Function(_ChangePageAirportSuccess value)?
        changePageAirportSuccess,
    TResult? Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult? Function(_SearchSuccess value)? searchSuccess,
    TResult? Function(_SearchFailed value)? searchFailed,
  }) {
    return openAddEditAirportSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult Function(_Loading value)? loading,
    TResult Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSuccess,
    TResult Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult Function(_ChangePageAirportSuccess value)? changePageAirportSuccess,
    TResult Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailed value)? searchFailed,
    required TResult orElse(),
  }) {
    if (openAddEditAirportSuccess != null) {
      return openAddEditAirportSuccess(this);
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

/// @nodoc
abstract class _$$_DeleteAirportSuccessCopyWith<$Res>
    implements $AirportStateCopyWith<$Res> {
  factory _$$_DeleteAirportSuccessCopyWith(_$_DeleteAirportSuccess value,
          $Res Function(_$_DeleteAirportSuccess) then) =
      __$$_DeleteAirportSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AirportModelState data});

  @override
  $AirportModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_DeleteAirportSuccessCopyWithImpl<$Res>
    extends _$AirportStateCopyWithImpl<$Res, _$_DeleteAirportSuccess>
    implements _$$_DeleteAirportSuccessCopyWith<$Res> {
  __$$_DeleteAirportSuccessCopyWithImpl(_$_DeleteAirportSuccess _value,
      $Res Function(_$_DeleteAirportSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_DeleteAirportSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AirportModelState,
    ));
  }
}

/// @nodoc

class _$_DeleteAirportSuccess extends _DeleteAirportSuccess {
  const _$_DeleteAirportSuccess({required this.data}) : super._();

  @override
  final AirportModelState data;

  @override
  String toString() {
    return 'AirportState.deleteAirportSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteAirportSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteAirportSuccessCopyWith<_$_DeleteAirportSuccess> get copyWith =>
      __$$_DeleteAirportSuccessCopyWithImpl<_$_DeleteAirportSuccess>(
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
        openAddEditAirportSuccess,
    required TResult Function(AirportModelState data) deleteAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        deleteAirportFailed,
    required TResult Function(AirportModelState data) waitCircularLoading,
    required TResult Function(AirportModelState data) updateAirportSuccess,
    required TResult Function(AirportModelState data) changePageAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        changePageAirportFailed,
    required TResult Function(AirportModelState data) searchSuccess,
    required TResult Function(AirportModelState data, String message)
        searchFailed,
  }) {
    return deleteAirportSuccess(data);
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
        openAddEditAirportSuccess,
    TResult? Function(AirportModelState data)? deleteAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult? Function(AirportModelState data)? waitCircularLoading,
    TResult? Function(AirportModelState data)? updateAirportSuccess,
    TResult? Function(AirportModelState data)? changePageAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult? Function(AirportModelState data)? searchSuccess,
    TResult? Function(AirportModelState data, String message)? searchFailed,
  }) {
    return deleteAirportSuccess?.call(data);
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
        openAddEditAirportSuccess,
    TResult Function(AirportModelState data)? deleteAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult Function(AirportModelState data)? waitCircularLoading,
    TResult Function(AirportModelState data)? updateAirportSuccess,
    TResult Function(AirportModelState data)? changePageAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult Function(AirportModelState data)? searchSuccess,
    TResult Function(AirportModelState data, String message)? searchFailed,
    required TResult orElse(),
  }) {
    if (deleteAirportSuccess != null) {
      return deleteAirportSuccess(data);
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
        openAddEditAirportSuccess,
    required TResult Function(_DeleteAirportSuccess value) deleteAirportSuccess,
    required TResult Function(_DeleteAirportFailed value) deleteAirportFailed,
    required TResult Function(_WaitCircularLoading value) waitCircularLoading,
    required TResult Function(_UpdateAirportSuccess value) updateAirportSuccess,
    required TResult Function(_ChangePageAirportSuccess value)
        changePageAirportSuccess,
    required TResult Function(_ChangePageAirportFailed value)
        changePageAirportFailed,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailed value) searchFailed,
  }) {
    return deleteAirportSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult? Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSuccess,
    TResult? Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult? Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult? Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult? Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult? Function(_ChangePageAirportSuccess value)?
        changePageAirportSuccess,
    TResult? Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult? Function(_SearchSuccess value)? searchSuccess,
    TResult? Function(_SearchFailed value)? searchFailed,
  }) {
    return deleteAirportSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult Function(_Loading value)? loading,
    TResult Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSuccess,
    TResult Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult Function(_ChangePageAirportSuccess value)? changePageAirportSuccess,
    TResult Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailed value)? searchFailed,
    required TResult orElse(),
  }) {
    if (deleteAirportSuccess != null) {
      return deleteAirportSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteAirportSuccess extends AirportState {
  const factory _DeleteAirportSuccess({required final AirportModelState data}) =
      _$_DeleteAirportSuccess;
  const _DeleteAirportSuccess._() : super._();

  @override
  AirportModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteAirportSuccessCopyWith<_$_DeleteAirportSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteAirportFailedCopyWith<$Res>
    implements $AirportStateCopyWith<$Res> {
  factory _$$_DeleteAirportFailedCopyWith(_$_DeleteAirportFailed value,
          $Res Function(_$_DeleteAirportFailed) then) =
      __$$_DeleteAirportFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AirportModelState data, String message});

  @override
  $AirportModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_DeleteAirportFailedCopyWithImpl<$Res>
    extends _$AirportStateCopyWithImpl<$Res, _$_DeleteAirportFailed>
    implements _$$_DeleteAirportFailedCopyWith<$Res> {
  __$$_DeleteAirportFailedCopyWithImpl(_$_DeleteAirportFailed _value,
      $Res Function(_$_DeleteAirportFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_DeleteAirportFailed(
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

class _$_DeleteAirportFailed extends _DeleteAirportFailed {
  const _$_DeleteAirportFailed({required this.data, required this.message})
      : super._();

  @override
  final AirportModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'AirportState.deleteAirportFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteAirportFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteAirportFailedCopyWith<_$_DeleteAirportFailed> get copyWith =>
      __$$_DeleteAirportFailedCopyWithImpl<_$_DeleteAirportFailed>(
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
        openAddEditAirportSuccess,
    required TResult Function(AirportModelState data) deleteAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        deleteAirportFailed,
    required TResult Function(AirportModelState data) waitCircularLoading,
    required TResult Function(AirportModelState data) updateAirportSuccess,
    required TResult Function(AirportModelState data) changePageAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        changePageAirportFailed,
    required TResult Function(AirportModelState data) searchSuccess,
    required TResult Function(AirportModelState data, String message)
        searchFailed,
  }) {
    return deleteAirportFailed(data, message);
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
        openAddEditAirportSuccess,
    TResult? Function(AirportModelState data)? deleteAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult? Function(AirportModelState data)? waitCircularLoading,
    TResult? Function(AirportModelState data)? updateAirportSuccess,
    TResult? Function(AirportModelState data)? changePageAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult? Function(AirportModelState data)? searchSuccess,
    TResult? Function(AirportModelState data, String message)? searchFailed,
  }) {
    return deleteAirportFailed?.call(data, message);
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
        openAddEditAirportSuccess,
    TResult Function(AirportModelState data)? deleteAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult Function(AirportModelState data)? waitCircularLoading,
    TResult Function(AirportModelState data)? updateAirportSuccess,
    TResult Function(AirportModelState data)? changePageAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult Function(AirportModelState data)? searchSuccess,
    TResult Function(AirportModelState data, String message)? searchFailed,
    required TResult orElse(),
  }) {
    if (deleteAirportFailed != null) {
      return deleteAirportFailed(data, message);
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
        openAddEditAirportSuccess,
    required TResult Function(_DeleteAirportSuccess value) deleteAirportSuccess,
    required TResult Function(_DeleteAirportFailed value) deleteAirportFailed,
    required TResult Function(_WaitCircularLoading value) waitCircularLoading,
    required TResult Function(_UpdateAirportSuccess value) updateAirportSuccess,
    required TResult Function(_ChangePageAirportSuccess value)
        changePageAirportSuccess,
    required TResult Function(_ChangePageAirportFailed value)
        changePageAirportFailed,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailed value) searchFailed,
  }) {
    return deleteAirportFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult? Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSuccess,
    TResult? Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult? Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult? Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult? Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult? Function(_ChangePageAirportSuccess value)?
        changePageAirportSuccess,
    TResult? Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult? Function(_SearchSuccess value)? searchSuccess,
    TResult? Function(_SearchFailed value)? searchFailed,
  }) {
    return deleteAirportFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult Function(_Loading value)? loading,
    TResult Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSuccess,
    TResult Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult Function(_ChangePageAirportSuccess value)? changePageAirportSuccess,
    TResult Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailed value)? searchFailed,
    required TResult orElse(),
  }) {
    if (deleteAirportFailed != null) {
      return deleteAirportFailed(this);
    }
    return orElse();
  }
}

abstract class _DeleteAirportFailed extends AirportState {
  const factory _DeleteAirportFailed(
      {required final AirportModelState data,
      required final String message}) = _$_DeleteAirportFailed;
  const _DeleteAirportFailed._() : super._();

  @override
  AirportModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteAirportFailedCopyWith<_$_DeleteAirportFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WaitCircularLoadingCopyWith<$Res>
    implements $AirportStateCopyWith<$Res> {
  factory _$$_WaitCircularLoadingCopyWith(_$_WaitCircularLoading value,
          $Res Function(_$_WaitCircularLoading) then) =
      __$$_WaitCircularLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AirportModelState data});

  @override
  $AirportModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_WaitCircularLoadingCopyWithImpl<$Res>
    extends _$AirportStateCopyWithImpl<$Res, _$_WaitCircularLoading>
    implements _$$_WaitCircularLoadingCopyWith<$Res> {
  __$$_WaitCircularLoadingCopyWithImpl(_$_WaitCircularLoading _value,
      $Res Function(_$_WaitCircularLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_WaitCircularLoading(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AirportModelState,
    ));
  }
}

/// @nodoc

class _$_WaitCircularLoading extends _WaitCircularLoading {
  const _$_WaitCircularLoading({required this.data}) : super._();

  @override
  final AirportModelState data;

  @override
  String toString() {
    return 'AirportState.waitCircularLoading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WaitCircularLoading &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WaitCircularLoadingCopyWith<_$_WaitCircularLoading> get copyWith =>
      __$$_WaitCircularLoadingCopyWithImpl<_$_WaitCircularLoading>(
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
        openAddEditAirportSuccess,
    required TResult Function(AirportModelState data) deleteAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        deleteAirportFailed,
    required TResult Function(AirportModelState data) waitCircularLoading,
    required TResult Function(AirportModelState data) updateAirportSuccess,
    required TResult Function(AirportModelState data) changePageAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        changePageAirportFailed,
    required TResult Function(AirportModelState data) searchSuccess,
    required TResult Function(AirportModelState data, String message)
        searchFailed,
  }) {
    return waitCircularLoading(data);
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
        openAddEditAirportSuccess,
    TResult? Function(AirportModelState data)? deleteAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult? Function(AirportModelState data)? waitCircularLoading,
    TResult? Function(AirportModelState data)? updateAirportSuccess,
    TResult? Function(AirportModelState data)? changePageAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult? Function(AirportModelState data)? searchSuccess,
    TResult? Function(AirportModelState data, String message)? searchFailed,
  }) {
    return waitCircularLoading?.call(data);
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
        openAddEditAirportSuccess,
    TResult Function(AirportModelState data)? deleteAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult Function(AirportModelState data)? waitCircularLoading,
    TResult Function(AirportModelState data)? updateAirportSuccess,
    TResult Function(AirportModelState data)? changePageAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult Function(AirportModelState data)? searchSuccess,
    TResult Function(AirportModelState data, String message)? searchFailed,
    required TResult orElse(),
  }) {
    if (waitCircularLoading != null) {
      return waitCircularLoading(data);
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
        openAddEditAirportSuccess,
    required TResult Function(_DeleteAirportSuccess value) deleteAirportSuccess,
    required TResult Function(_DeleteAirportFailed value) deleteAirportFailed,
    required TResult Function(_WaitCircularLoading value) waitCircularLoading,
    required TResult Function(_UpdateAirportSuccess value) updateAirportSuccess,
    required TResult Function(_ChangePageAirportSuccess value)
        changePageAirportSuccess,
    required TResult Function(_ChangePageAirportFailed value)
        changePageAirportFailed,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailed value) searchFailed,
  }) {
    return waitCircularLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult? Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSuccess,
    TResult? Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult? Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult? Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult? Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult? Function(_ChangePageAirportSuccess value)?
        changePageAirportSuccess,
    TResult? Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult? Function(_SearchSuccess value)? searchSuccess,
    TResult? Function(_SearchFailed value)? searchFailed,
  }) {
    return waitCircularLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult Function(_Loading value)? loading,
    TResult Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSuccess,
    TResult Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult Function(_ChangePageAirportSuccess value)? changePageAirportSuccess,
    TResult Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailed value)? searchFailed,
    required TResult orElse(),
  }) {
    if (waitCircularLoading != null) {
      return waitCircularLoading(this);
    }
    return orElse();
  }
}

abstract class _WaitCircularLoading extends AirportState {
  const factory _WaitCircularLoading({required final AirportModelState data}) =
      _$_WaitCircularLoading;
  const _WaitCircularLoading._() : super._();

  @override
  AirportModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_WaitCircularLoadingCopyWith<_$_WaitCircularLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateAirportSuccessCopyWith<$Res>
    implements $AirportStateCopyWith<$Res> {
  factory _$$_UpdateAirportSuccessCopyWith(_$_UpdateAirportSuccess value,
          $Res Function(_$_UpdateAirportSuccess) then) =
      __$$_UpdateAirportSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AirportModelState data});

  @override
  $AirportModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_UpdateAirportSuccessCopyWithImpl<$Res>
    extends _$AirportStateCopyWithImpl<$Res, _$_UpdateAirportSuccess>
    implements _$$_UpdateAirportSuccessCopyWith<$Res> {
  __$$_UpdateAirportSuccessCopyWithImpl(_$_UpdateAirportSuccess _value,
      $Res Function(_$_UpdateAirportSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_UpdateAirportSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AirportModelState,
    ));
  }
}

/// @nodoc

class _$_UpdateAirportSuccess extends _UpdateAirportSuccess {
  const _$_UpdateAirportSuccess({required this.data}) : super._();

  @override
  final AirportModelState data;

  @override
  String toString() {
    return 'AirportState.updateAirportSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAirportSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateAirportSuccessCopyWith<_$_UpdateAirportSuccess> get copyWith =>
      __$$_UpdateAirportSuccessCopyWithImpl<_$_UpdateAirportSuccess>(
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
        openAddEditAirportSuccess,
    required TResult Function(AirportModelState data) deleteAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        deleteAirportFailed,
    required TResult Function(AirportModelState data) waitCircularLoading,
    required TResult Function(AirportModelState data) updateAirportSuccess,
    required TResult Function(AirportModelState data) changePageAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        changePageAirportFailed,
    required TResult Function(AirportModelState data) searchSuccess,
    required TResult Function(AirportModelState data, String message)
        searchFailed,
  }) {
    return updateAirportSuccess(data);
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
        openAddEditAirportSuccess,
    TResult? Function(AirportModelState data)? deleteAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult? Function(AirportModelState data)? waitCircularLoading,
    TResult? Function(AirportModelState data)? updateAirportSuccess,
    TResult? Function(AirportModelState data)? changePageAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult? Function(AirportModelState data)? searchSuccess,
    TResult? Function(AirportModelState data, String message)? searchFailed,
  }) {
    return updateAirportSuccess?.call(data);
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
        openAddEditAirportSuccess,
    TResult Function(AirportModelState data)? deleteAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult Function(AirportModelState data)? waitCircularLoading,
    TResult Function(AirportModelState data)? updateAirportSuccess,
    TResult Function(AirportModelState data)? changePageAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult Function(AirportModelState data)? searchSuccess,
    TResult Function(AirportModelState data, String message)? searchFailed,
    required TResult orElse(),
  }) {
    if (updateAirportSuccess != null) {
      return updateAirportSuccess(data);
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
        openAddEditAirportSuccess,
    required TResult Function(_DeleteAirportSuccess value) deleteAirportSuccess,
    required TResult Function(_DeleteAirportFailed value) deleteAirportFailed,
    required TResult Function(_WaitCircularLoading value) waitCircularLoading,
    required TResult Function(_UpdateAirportSuccess value) updateAirportSuccess,
    required TResult Function(_ChangePageAirportSuccess value)
        changePageAirportSuccess,
    required TResult Function(_ChangePageAirportFailed value)
        changePageAirportFailed,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailed value) searchFailed,
  }) {
    return updateAirportSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult? Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSuccess,
    TResult? Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult? Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult? Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult? Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult? Function(_ChangePageAirportSuccess value)?
        changePageAirportSuccess,
    TResult? Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult? Function(_SearchSuccess value)? searchSuccess,
    TResult? Function(_SearchFailed value)? searchFailed,
  }) {
    return updateAirportSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult Function(_Loading value)? loading,
    TResult Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSuccess,
    TResult Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult Function(_ChangePageAirportSuccess value)? changePageAirportSuccess,
    TResult Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailed value)? searchFailed,
    required TResult orElse(),
  }) {
    if (updateAirportSuccess != null) {
      return updateAirportSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateAirportSuccess extends AirportState {
  const factory _UpdateAirportSuccess({required final AirportModelState data}) =
      _$_UpdateAirportSuccess;
  const _UpdateAirportSuccess._() : super._();

  @override
  AirportModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateAirportSuccessCopyWith<_$_UpdateAirportSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangePageAirportSuccessCopyWith<$Res>
    implements $AirportStateCopyWith<$Res> {
  factory _$$_ChangePageAirportSuccessCopyWith(
          _$_ChangePageAirportSuccess value,
          $Res Function(_$_ChangePageAirportSuccess) then) =
      __$$_ChangePageAirportSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AirportModelState data});

  @override
  $AirportModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ChangePageAirportSuccessCopyWithImpl<$Res>
    extends _$AirportStateCopyWithImpl<$Res, _$_ChangePageAirportSuccess>
    implements _$$_ChangePageAirportSuccessCopyWith<$Res> {
  __$$_ChangePageAirportSuccessCopyWithImpl(_$_ChangePageAirportSuccess _value,
      $Res Function(_$_ChangePageAirportSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ChangePageAirportSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AirportModelState,
    ));
  }
}

/// @nodoc

class _$_ChangePageAirportSuccess extends _ChangePageAirportSuccess {
  const _$_ChangePageAirportSuccess({required this.data}) : super._();

  @override
  final AirportModelState data;

  @override
  String toString() {
    return 'AirportState.changePageAirportSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePageAirportSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePageAirportSuccessCopyWith<_$_ChangePageAirportSuccess>
      get copyWith => __$$_ChangePageAirportSuccessCopyWithImpl<
          _$_ChangePageAirportSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AirportModelState data) initial,
    required TResult Function(AirportModelState data) fetchAirportsSuccess,
    required TResult Function(AirportModelState data, String message)
        fetchAirportsFailed,
    required TResult Function(AirportModelState data) loading,
    required TResult Function(AirportModelState data, String id)
        openAddEditAirportSuccess,
    required TResult Function(AirportModelState data) deleteAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        deleteAirportFailed,
    required TResult Function(AirportModelState data) waitCircularLoading,
    required TResult Function(AirportModelState data) updateAirportSuccess,
    required TResult Function(AirportModelState data) changePageAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        changePageAirportFailed,
    required TResult Function(AirportModelState data) searchSuccess,
    required TResult Function(AirportModelState data, String message)
        searchFailed,
  }) {
    return changePageAirportSuccess(data);
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
        openAddEditAirportSuccess,
    TResult? Function(AirportModelState data)? deleteAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult? Function(AirportModelState data)? waitCircularLoading,
    TResult? Function(AirportModelState data)? updateAirportSuccess,
    TResult? Function(AirportModelState data)? changePageAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult? Function(AirportModelState data)? searchSuccess,
    TResult? Function(AirportModelState data, String message)? searchFailed,
  }) {
    return changePageAirportSuccess?.call(data);
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
        openAddEditAirportSuccess,
    TResult Function(AirportModelState data)? deleteAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult Function(AirportModelState data)? waitCircularLoading,
    TResult Function(AirportModelState data)? updateAirportSuccess,
    TResult Function(AirportModelState data)? changePageAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult Function(AirportModelState data)? searchSuccess,
    TResult Function(AirportModelState data, String message)? searchFailed,
    required TResult orElse(),
  }) {
    if (changePageAirportSuccess != null) {
      return changePageAirportSuccess(data);
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
        openAddEditAirportSuccess,
    required TResult Function(_DeleteAirportSuccess value) deleteAirportSuccess,
    required TResult Function(_DeleteAirportFailed value) deleteAirportFailed,
    required TResult Function(_WaitCircularLoading value) waitCircularLoading,
    required TResult Function(_UpdateAirportSuccess value) updateAirportSuccess,
    required TResult Function(_ChangePageAirportSuccess value)
        changePageAirportSuccess,
    required TResult Function(_ChangePageAirportFailed value)
        changePageAirportFailed,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailed value) searchFailed,
  }) {
    return changePageAirportSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult? Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSuccess,
    TResult? Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult? Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult? Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult? Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult? Function(_ChangePageAirportSuccess value)?
        changePageAirportSuccess,
    TResult? Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult? Function(_SearchSuccess value)? searchSuccess,
    TResult? Function(_SearchFailed value)? searchFailed,
  }) {
    return changePageAirportSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult Function(_Loading value)? loading,
    TResult Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSuccess,
    TResult Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult Function(_ChangePageAirportSuccess value)? changePageAirportSuccess,
    TResult Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailed value)? searchFailed,
    required TResult orElse(),
  }) {
    if (changePageAirportSuccess != null) {
      return changePageAirportSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChangePageAirportSuccess extends AirportState {
  const factory _ChangePageAirportSuccess(
      {required final AirportModelState data}) = _$_ChangePageAirportSuccess;
  const _ChangePageAirportSuccess._() : super._();

  @override
  AirportModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePageAirportSuccessCopyWith<_$_ChangePageAirportSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangePageAirportFailedCopyWith<$Res>
    implements $AirportStateCopyWith<$Res> {
  factory _$$_ChangePageAirportFailedCopyWith(_$_ChangePageAirportFailed value,
          $Res Function(_$_ChangePageAirportFailed) then) =
      __$$_ChangePageAirportFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AirportModelState data, String message});

  @override
  $AirportModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ChangePageAirportFailedCopyWithImpl<$Res>
    extends _$AirportStateCopyWithImpl<$Res, _$_ChangePageAirportFailed>
    implements _$$_ChangePageAirportFailedCopyWith<$Res> {
  __$$_ChangePageAirportFailedCopyWithImpl(_$_ChangePageAirportFailed _value,
      $Res Function(_$_ChangePageAirportFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_ChangePageAirportFailed(
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

class _$_ChangePageAirportFailed extends _ChangePageAirportFailed {
  const _$_ChangePageAirportFailed({required this.data, required this.message})
      : super._();

  @override
  final AirportModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'AirportState.changePageAirportFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePageAirportFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePageAirportFailedCopyWith<_$_ChangePageAirportFailed>
      get copyWith =>
          __$$_ChangePageAirportFailedCopyWithImpl<_$_ChangePageAirportFailed>(
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
        openAddEditAirportSuccess,
    required TResult Function(AirportModelState data) deleteAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        deleteAirportFailed,
    required TResult Function(AirportModelState data) waitCircularLoading,
    required TResult Function(AirportModelState data) updateAirportSuccess,
    required TResult Function(AirportModelState data) changePageAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        changePageAirportFailed,
    required TResult Function(AirportModelState data) searchSuccess,
    required TResult Function(AirportModelState data, String message)
        searchFailed,
  }) {
    return changePageAirportFailed(data, message);
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
        openAddEditAirportSuccess,
    TResult? Function(AirportModelState data)? deleteAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult? Function(AirportModelState data)? waitCircularLoading,
    TResult? Function(AirportModelState data)? updateAirportSuccess,
    TResult? Function(AirportModelState data)? changePageAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult? Function(AirportModelState data)? searchSuccess,
    TResult? Function(AirportModelState data, String message)? searchFailed,
  }) {
    return changePageAirportFailed?.call(data, message);
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
        openAddEditAirportSuccess,
    TResult Function(AirportModelState data)? deleteAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult Function(AirportModelState data)? waitCircularLoading,
    TResult Function(AirportModelState data)? updateAirportSuccess,
    TResult Function(AirportModelState data)? changePageAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult Function(AirportModelState data)? searchSuccess,
    TResult Function(AirportModelState data, String message)? searchFailed,
    required TResult orElse(),
  }) {
    if (changePageAirportFailed != null) {
      return changePageAirportFailed(data, message);
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
        openAddEditAirportSuccess,
    required TResult Function(_DeleteAirportSuccess value) deleteAirportSuccess,
    required TResult Function(_DeleteAirportFailed value) deleteAirportFailed,
    required TResult Function(_WaitCircularLoading value) waitCircularLoading,
    required TResult Function(_UpdateAirportSuccess value) updateAirportSuccess,
    required TResult Function(_ChangePageAirportSuccess value)
        changePageAirportSuccess,
    required TResult Function(_ChangePageAirportFailed value)
        changePageAirportFailed,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailed value) searchFailed,
  }) {
    return changePageAirportFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult? Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSuccess,
    TResult? Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult? Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult? Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult? Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult? Function(_ChangePageAirportSuccess value)?
        changePageAirportSuccess,
    TResult? Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult? Function(_SearchSuccess value)? searchSuccess,
    TResult? Function(_SearchFailed value)? searchFailed,
  }) {
    return changePageAirportFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult Function(_Loading value)? loading,
    TResult Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSuccess,
    TResult Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult Function(_ChangePageAirportSuccess value)? changePageAirportSuccess,
    TResult Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailed value)? searchFailed,
    required TResult orElse(),
  }) {
    if (changePageAirportFailed != null) {
      return changePageAirportFailed(this);
    }
    return orElse();
  }
}

abstract class _ChangePageAirportFailed extends AirportState {
  const factory _ChangePageAirportFailed(
      {required final AirportModelState data,
      required final String message}) = _$_ChangePageAirportFailed;
  const _ChangePageAirportFailed._() : super._();

  @override
  AirportModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePageAirportFailedCopyWith<_$_ChangePageAirportFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchSuccessCopyWith<$Res>
    implements $AirportStateCopyWith<$Res> {
  factory _$$_SearchSuccessCopyWith(
          _$_SearchSuccess value, $Res Function(_$_SearchSuccess) then) =
      __$$_SearchSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AirportModelState data});

  @override
  $AirportModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SearchSuccessCopyWithImpl<$Res>
    extends _$AirportStateCopyWithImpl<$Res, _$_SearchSuccess>
    implements _$$_SearchSuccessCopyWith<$Res> {
  __$$_SearchSuccessCopyWithImpl(
      _$_SearchSuccess _value, $Res Function(_$_SearchSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_SearchSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AirportModelState,
    ));
  }
}

/// @nodoc

class _$_SearchSuccess extends _SearchSuccess {
  const _$_SearchSuccess({required this.data}) : super._();

  @override
  final AirportModelState data;

  @override
  String toString() {
    return 'AirportState.searchSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchSuccessCopyWith<_$_SearchSuccess> get copyWith =>
      __$$_SearchSuccessCopyWithImpl<_$_SearchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AirportModelState data) initial,
    required TResult Function(AirportModelState data) fetchAirportsSuccess,
    required TResult Function(AirportModelState data, String message)
        fetchAirportsFailed,
    required TResult Function(AirportModelState data) loading,
    required TResult Function(AirportModelState data, String id)
        openAddEditAirportSuccess,
    required TResult Function(AirportModelState data) deleteAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        deleteAirportFailed,
    required TResult Function(AirportModelState data) waitCircularLoading,
    required TResult Function(AirportModelState data) updateAirportSuccess,
    required TResult Function(AirportModelState data) changePageAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        changePageAirportFailed,
    required TResult Function(AirportModelState data) searchSuccess,
    required TResult Function(AirportModelState data, String message)
        searchFailed,
  }) {
    return searchSuccess(data);
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
        openAddEditAirportSuccess,
    TResult? Function(AirportModelState data)? deleteAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult? Function(AirportModelState data)? waitCircularLoading,
    TResult? Function(AirportModelState data)? updateAirportSuccess,
    TResult? Function(AirportModelState data)? changePageAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult? Function(AirportModelState data)? searchSuccess,
    TResult? Function(AirportModelState data, String message)? searchFailed,
  }) {
    return searchSuccess?.call(data);
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
        openAddEditAirportSuccess,
    TResult Function(AirportModelState data)? deleteAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult Function(AirportModelState data)? waitCircularLoading,
    TResult Function(AirportModelState data)? updateAirportSuccess,
    TResult Function(AirportModelState data)? changePageAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult Function(AirportModelState data)? searchSuccess,
    TResult Function(AirportModelState data, String message)? searchFailed,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(data);
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
        openAddEditAirportSuccess,
    required TResult Function(_DeleteAirportSuccess value) deleteAirportSuccess,
    required TResult Function(_DeleteAirportFailed value) deleteAirportFailed,
    required TResult Function(_WaitCircularLoading value) waitCircularLoading,
    required TResult Function(_UpdateAirportSuccess value) updateAirportSuccess,
    required TResult Function(_ChangePageAirportSuccess value)
        changePageAirportSuccess,
    required TResult Function(_ChangePageAirportFailed value)
        changePageAirportFailed,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailed value) searchFailed,
  }) {
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult? Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSuccess,
    TResult? Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult? Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult? Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult? Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult? Function(_ChangePageAirportSuccess value)?
        changePageAirportSuccess,
    TResult? Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult? Function(_SearchSuccess value)? searchSuccess,
    TResult? Function(_SearchFailed value)? searchFailed,
  }) {
    return searchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult Function(_Loading value)? loading,
    TResult Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSuccess,
    TResult Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult Function(_ChangePageAirportSuccess value)? changePageAirportSuccess,
    TResult Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailed value)? searchFailed,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class _SearchSuccess extends AirportState {
  const factory _SearchSuccess({required final AirportModelState data}) =
      _$_SearchSuccess;
  const _SearchSuccess._() : super._();

  @override
  AirportModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_SearchSuccessCopyWith<_$_SearchSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchFailedCopyWith<$Res>
    implements $AirportStateCopyWith<$Res> {
  factory _$$_SearchFailedCopyWith(
          _$_SearchFailed value, $Res Function(_$_SearchFailed) then) =
      __$$_SearchFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AirportModelState data, String message});

  @override
  $AirportModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SearchFailedCopyWithImpl<$Res>
    extends _$AirportStateCopyWithImpl<$Res, _$_SearchFailed>
    implements _$$_SearchFailedCopyWith<$Res> {
  __$$_SearchFailedCopyWithImpl(
      _$_SearchFailed _value, $Res Function(_$_SearchFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_SearchFailed(
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

class _$_SearchFailed extends _SearchFailed {
  const _$_SearchFailed({required this.data, required this.message})
      : super._();

  @override
  final AirportModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'AirportState.searchFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchFailedCopyWith<_$_SearchFailed> get copyWith =>
      __$$_SearchFailedCopyWithImpl<_$_SearchFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AirportModelState data) initial,
    required TResult Function(AirportModelState data) fetchAirportsSuccess,
    required TResult Function(AirportModelState data, String message)
        fetchAirportsFailed,
    required TResult Function(AirportModelState data) loading,
    required TResult Function(AirportModelState data, String id)
        openAddEditAirportSuccess,
    required TResult Function(AirportModelState data) deleteAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        deleteAirportFailed,
    required TResult Function(AirportModelState data) waitCircularLoading,
    required TResult Function(AirportModelState data) updateAirportSuccess,
    required TResult Function(AirportModelState data) changePageAirportSuccess,
    required TResult Function(AirportModelState data, String message)
        changePageAirportFailed,
    required TResult Function(AirportModelState data) searchSuccess,
    required TResult Function(AirportModelState data, String message)
        searchFailed,
  }) {
    return searchFailed(data, message);
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
        openAddEditAirportSuccess,
    TResult? Function(AirportModelState data)? deleteAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult? Function(AirportModelState data)? waitCircularLoading,
    TResult? Function(AirportModelState data)? updateAirportSuccess,
    TResult? Function(AirportModelState data)? changePageAirportSuccess,
    TResult? Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult? Function(AirportModelState data)? searchSuccess,
    TResult? Function(AirportModelState data, String message)? searchFailed,
  }) {
    return searchFailed?.call(data, message);
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
        openAddEditAirportSuccess,
    TResult Function(AirportModelState data)? deleteAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        deleteAirportFailed,
    TResult Function(AirportModelState data)? waitCircularLoading,
    TResult Function(AirportModelState data)? updateAirportSuccess,
    TResult Function(AirportModelState data)? changePageAirportSuccess,
    TResult Function(AirportModelState data, String message)?
        changePageAirportFailed,
    TResult Function(AirportModelState data)? searchSuccess,
    TResult Function(AirportModelState data, String message)? searchFailed,
    required TResult orElse(),
  }) {
    if (searchFailed != null) {
      return searchFailed(data, message);
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
        openAddEditAirportSuccess,
    required TResult Function(_DeleteAirportSuccess value) deleteAirportSuccess,
    required TResult Function(_DeleteAirportFailed value) deleteAirportFailed,
    required TResult Function(_WaitCircularLoading value) waitCircularLoading,
    required TResult Function(_UpdateAirportSuccess value) updateAirportSuccess,
    required TResult Function(_ChangePageAirportSuccess value)
        changePageAirportSuccess,
    required TResult Function(_ChangePageAirportFailed value)
        changePageAirportFailed,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailed value) searchFailed,
  }) {
    return searchFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult? Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSuccess,
    TResult? Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult? Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult? Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult? Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult? Function(_ChangePageAirportSuccess value)?
        changePageAirportSuccess,
    TResult? Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult? Function(_SearchSuccess value)? searchSuccess,
    TResult? Function(_SearchFailed value)? searchFailed,
  }) {
    return searchFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAirportSuccess value)? fetchAirportsSuccess,
    TResult Function(_FetchAirportFailed value)? fetchAirportsFailed,
    TResult Function(_Loading value)? loading,
    TResult Function(_OpenAddEditAirportSuccess value)?
        openAddEditAirportSuccess,
    TResult Function(_DeleteAirportSuccess value)? deleteAirportSuccess,
    TResult Function(_DeleteAirportFailed value)? deleteAirportFailed,
    TResult Function(_WaitCircularLoading value)? waitCircularLoading,
    TResult Function(_UpdateAirportSuccess value)? updateAirportSuccess,
    TResult Function(_ChangePageAirportSuccess value)? changePageAirportSuccess,
    TResult Function(_ChangePageAirportFailed value)? changePageAirportFailed,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailed value)? searchFailed,
    required TResult orElse(),
  }) {
    if (searchFailed != null) {
      return searchFailed(this);
    }
    return orElse();
  }
}

abstract class _SearchFailed extends AirportState {
  const factory _SearchFailed(
      {required final AirportModelState data,
      required final String message}) = _$_SearchFailed;
  const _SearchFailed._() : super._();

  @override
  AirportModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_SearchFailedCopyWith<_$_SearchFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
