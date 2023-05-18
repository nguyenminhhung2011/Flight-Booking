// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_mobile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchMobileState {
  SearchMobileModelState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchMobileModelState data) initial,
    required TResult Function(SearchMobileModelState data) loading,
    required TResult Function(SearchMobileModelState data) searchSuccess,
    required TResult Function(SearchMobileModelState data, String message)
        searchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchMobileModelState data)? initial,
    TResult? Function(SearchMobileModelState data)? loading,
    TResult? Function(SearchMobileModelState data)? searchSuccess,
    TResult? Function(SearchMobileModelState data, String message)?
        searchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchMobileModelState data)? initial,
    TResult Function(SearchMobileModelState data)? loading,
    TResult Function(SearchMobileModelState data)? searchSuccess,
    TResult Function(SearchMobileModelState data, String message)? searchFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailed value) searchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SearchSuccess value)? searchSuccess,
    TResult? Function(_SearchFailed value)? searchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailed value)? searchFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchMobileStateCopyWith<SearchMobileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchMobileStateCopyWith<$Res> {
  factory $SearchMobileStateCopyWith(
          SearchMobileState value, $Res Function(SearchMobileState) then) =
      _$SearchMobileStateCopyWithImpl<$Res, SearchMobileState>;
  @useResult
  $Res call({SearchMobileModelState data});

  $SearchMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class _$SearchMobileStateCopyWithImpl<$Res, $Val extends SearchMobileState>
    implements $SearchMobileStateCopyWith<$Res> {
  _$SearchMobileStateCopyWithImpl(this._value, this._then);

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
              as SearchMobileModelState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchMobileModelStateCopyWith<$Res> get data {
    return $SearchMobileModelStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $SearchMobileStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SearchMobileModelState data});

  @override
  $SearchMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SearchMobileStateCopyWithImpl<$Res, _$_Initial>
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
              as SearchMobileModelState,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final SearchMobileModelState data;

  @override
  String toString() {
    return 'SearchMobileState.initial(data: $data)';
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
    required TResult Function(SearchMobileModelState data) initial,
    required TResult Function(SearchMobileModelState data) loading,
    required TResult Function(SearchMobileModelState data) searchSuccess,
    required TResult Function(SearchMobileModelState data, String message)
        searchFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchMobileModelState data)? initial,
    TResult? Function(SearchMobileModelState data)? loading,
    TResult? Function(SearchMobileModelState data)? searchSuccess,
    TResult? Function(SearchMobileModelState data, String message)?
        searchFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchMobileModelState data)? initial,
    TResult Function(SearchMobileModelState data)? loading,
    TResult Function(SearchMobileModelState data)? searchSuccess,
    TResult Function(SearchMobileModelState data, String message)? searchFailed,
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
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailed value) searchFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SearchSuccess value)? searchSuccess,
    TResult? Function(_SearchFailed value)? searchFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
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

abstract class _Initial extends SearchMobileState {
  const factory _Initial({required final SearchMobileModelState data}) =
      _$_Initial;
  const _Initial._() : super._();

  @override
  SearchMobileModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $SearchMobileStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SearchMobileModelState data});

  @override
  $SearchMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$SearchMobileStateCopyWithImpl<$Res, _$_Loading>
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
              as SearchMobileModelState,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final SearchMobileModelState data;

  @override
  String toString() {
    return 'SearchMobileState.loading(data: $data)';
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
    required TResult Function(SearchMobileModelState data) initial,
    required TResult Function(SearchMobileModelState data) loading,
    required TResult Function(SearchMobileModelState data) searchSuccess,
    required TResult Function(SearchMobileModelState data, String message)
        searchFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchMobileModelState data)? initial,
    TResult? Function(SearchMobileModelState data)? loading,
    TResult? Function(SearchMobileModelState data)? searchSuccess,
    TResult? Function(SearchMobileModelState data, String message)?
        searchFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchMobileModelState data)? initial,
    TResult Function(SearchMobileModelState data)? loading,
    TResult Function(SearchMobileModelState data)? searchSuccess,
    TResult Function(SearchMobileModelState data, String message)? searchFailed,
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
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailed value) searchFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SearchSuccess value)? searchSuccess,
    TResult? Function(_SearchFailed value)? searchFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
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

abstract class _Loading extends SearchMobileState {
  const factory _Loading({required final SearchMobileModelState data}) =
      _$_Loading;
  const _Loading._() : super._();

  @override
  SearchMobileModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchSuccessCopyWith<$Res>
    implements $SearchMobileStateCopyWith<$Res> {
  factory _$$_SearchSuccessCopyWith(
          _$_SearchSuccess value, $Res Function(_$_SearchSuccess) then) =
      __$$_SearchSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SearchMobileModelState data});

  @override
  $SearchMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SearchSuccessCopyWithImpl<$Res>
    extends _$SearchMobileStateCopyWithImpl<$Res, _$_SearchSuccess>
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
              as SearchMobileModelState,
    ));
  }
}

/// @nodoc

class _$_SearchSuccess extends _SearchSuccess {
  const _$_SearchSuccess({required this.data}) : super._();

  @override
  final SearchMobileModelState data;

  @override
  String toString() {
    return 'SearchMobileState.searchSuccess(data: $data)';
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
    required TResult Function(SearchMobileModelState data) initial,
    required TResult Function(SearchMobileModelState data) loading,
    required TResult Function(SearchMobileModelState data) searchSuccess,
    required TResult Function(SearchMobileModelState data, String message)
        searchFailed,
  }) {
    return searchSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchMobileModelState data)? initial,
    TResult? Function(SearchMobileModelState data)? loading,
    TResult? Function(SearchMobileModelState data)? searchSuccess,
    TResult? Function(SearchMobileModelState data, String message)?
        searchFailed,
  }) {
    return searchSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchMobileModelState data)? initial,
    TResult Function(SearchMobileModelState data)? loading,
    TResult Function(SearchMobileModelState data)? searchSuccess,
    TResult Function(SearchMobileModelState data, String message)? searchFailed,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailed value) searchFailed,
  }) {
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SearchSuccess value)? searchSuccess,
    TResult? Function(_SearchFailed value)? searchFailed,
  }) {
    return searchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
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

abstract class _SearchSuccess extends SearchMobileState {
  const factory _SearchSuccess({required final SearchMobileModelState data}) =
      _$_SearchSuccess;
  const _SearchSuccess._() : super._();

  @override
  SearchMobileModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_SearchSuccessCopyWith<_$_SearchSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchFailedCopyWith<$Res>
    implements $SearchMobileStateCopyWith<$Res> {
  factory _$$_SearchFailedCopyWith(
          _$_SearchFailed value, $Res Function(_$_SearchFailed) then) =
      __$$_SearchFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SearchMobileModelState data, String message});

  @override
  $SearchMobileModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SearchFailedCopyWithImpl<$Res>
    extends _$SearchMobileStateCopyWithImpl<$Res, _$_SearchFailed>
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
              as SearchMobileModelState,
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
  final SearchMobileModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'SearchMobileState.searchFailed(data: $data, message: $message)';
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
    required TResult Function(SearchMobileModelState data) initial,
    required TResult Function(SearchMobileModelState data) loading,
    required TResult Function(SearchMobileModelState data) searchSuccess,
    required TResult Function(SearchMobileModelState data, String message)
        searchFailed,
  }) {
    return searchFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchMobileModelState data)? initial,
    TResult? Function(SearchMobileModelState data)? loading,
    TResult? Function(SearchMobileModelState data)? searchSuccess,
    TResult? Function(SearchMobileModelState data, String message)?
        searchFailed,
  }) {
    return searchFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchMobileModelState data)? initial,
    TResult Function(SearchMobileModelState data)? loading,
    TResult Function(SearchMobileModelState data)? searchSuccess,
    TResult Function(SearchMobileModelState data, String message)? searchFailed,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailed value) searchFailed,
  }) {
    return searchFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SearchSuccess value)? searchSuccess,
    TResult? Function(_SearchFailed value)? searchFailed,
  }) {
    return searchFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
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

abstract class _SearchFailed extends SearchMobileState {
  const factory _SearchFailed(
      {required final SearchMobileModelState data,
      required final String message}) = _$_SearchFailed;
  const _SearchFailed._() : super._();

  @override
  SearchMobileModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_SearchFailedCopyWith<_$_SearchFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchMobileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(String text) textChange,
    required TResult Function() loadingComplete,
    required TResult Function() getDatabyText,
    required TResult Function() changeTypeView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(String text)? textChange,
    TResult? Function()? loadingComplete,
    TResult? Function()? getDatabyText,
    TResult? Function()? changeTypeView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String text)? textChange,
    TResult Function()? loadingComplete,
    TResult Function()? getDatabyText,
    TResult Function()? changeTypeView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) onStarted,
    required TResult Function(_TextChange value) textChange,
    required TResult Function(_LoadingComplete value) loadingComplete,
    required TResult Function(_GetDataByText value) getDatabyText,
    required TResult Function(_ChangeTypeView value) changeTypeView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_TextChange value)? textChange,
    TResult? Function(_LoadingComplete value)? loadingComplete,
    TResult? Function(_GetDataByText value)? getDatabyText,
    TResult? Function(_ChangeTypeView value)? changeTypeView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_TextChange value)? textChange,
    TResult Function(_LoadingComplete value)? loadingComplete,
    TResult Function(_GetDataByText value)? getDatabyText,
    TResult Function(_ChangeTypeView value)? changeTypeView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchMobileEventCopyWith<$Res> {
  factory $SearchMobileEventCopyWith(
          SearchMobileEvent value, $Res Function(SearchMobileEvent) then) =
      _$SearchMobileEventCopyWithImpl<$Res, SearchMobileEvent>;
}

/// @nodoc
class _$SearchMobileEventCopyWithImpl<$Res, $Val extends SearchMobileEvent>
    implements $SearchMobileEventCopyWith<$Res> {
  _$SearchMobileEventCopyWithImpl(this._value, this._then);

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
    extends _$SearchMobileEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'SearchMobileEvent.onStarted()';
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
    required TResult Function(String text) textChange,
    required TResult Function() loadingComplete,
    required TResult Function() getDatabyText,
    required TResult Function() changeTypeView,
  }) {
    return onStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(String text)? textChange,
    TResult? Function()? loadingComplete,
    TResult? Function()? getDatabyText,
    TResult? Function()? changeTypeView,
  }) {
    return onStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String text)? textChange,
    TResult Function()? loadingComplete,
    TResult Function()? getDatabyText,
    TResult Function()? changeTypeView,
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
    required TResult Function(_TextChange value) textChange,
    required TResult Function(_LoadingComplete value) loadingComplete,
    required TResult Function(_GetDataByText value) getDatabyText,
    required TResult Function(_ChangeTypeView value) changeTypeView,
  }) {
    return onStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_TextChange value)? textChange,
    TResult? Function(_LoadingComplete value)? loadingComplete,
    TResult? Function(_GetDataByText value)? getDatabyText,
    TResult? Function(_ChangeTypeView value)? changeTypeView,
  }) {
    return onStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_TextChange value)? textChange,
    TResult Function(_LoadingComplete value)? loadingComplete,
    TResult Function(_GetDataByText value)? getDatabyText,
    TResult Function(_ChangeTypeView value)? changeTypeView,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(this);
    }
    return orElse();
  }
}

abstract class _Started implements SearchMobileEvent {
  const factory _Started() = _$_Started;
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
    extends _$SearchMobileEventCopyWithImpl<$Res, _$_TextChange>
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
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TextChange implements _TextChange {
  const _$_TextChange({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'SearchMobileEvent.textChange(text: $text)';
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
    required TResult Function(String text) textChange,
    required TResult Function() loadingComplete,
    required TResult Function() getDatabyText,
    required TResult Function() changeTypeView,
  }) {
    return textChange(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(String text)? textChange,
    TResult? Function()? loadingComplete,
    TResult? Function()? getDatabyText,
    TResult? Function()? changeTypeView,
  }) {
    return textChange?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String text)? textChange,
    TResult Function()? loadingComplete,
    TResult Function()? getDatabyText,
    TResult Function()? changeTypeView,
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
    required TResult Function(_TextChange value) textChange,
    required TResult Function(_LoadingComplete value) loadingComplete,
    required TResult Function(_GetDataByText value) getDatabyText,
    required TResult Function(_ChangeTypeView value) changeTypeView,
  }) {
    return textChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_TextChange value)? textChange,
    TResult? Function(_LoadingComplete value)? loadingComplete,
    TResult? Function(_GetDataByText value)? getDatabyText,
    TResult? Function(_ChangeTypeView value)? changeTypeView,
  }) {
    return textChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_TextChange value)? textChange,
    TResult Function(_LoadingComplete value)? loadingComplete,
    TResult Function(_GetDataByText value)? getDatabyText,
    TResult Function(_ChangeTypeView value)? changeTypeView,
    required TResult orElse(),
  }) {
    if (textChange != null) {
      return textChange(this);
    }
    return orElse();
  }
}

abstract class _TextChange implements SearchMobileEvent {
  const factory _TextChange({required final String text}) = _$_TextChange;

  String get text;
  @JsonKey(ignore: true)
  _$$_TextChangeCopyWith<_$_TextChange> get copyWith =>
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
    extends _$SearchMobileEventCopyWithImpl<$Res, _$_LoadingComplete>
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
    return 'SearchMobileEvent.loadingComplete()';
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
    required TResult Function(String text) textChange,
    required TResult Function() loadingComplete,
    required TResult Function() getDatabyText,
    required TResult Function() changeTypeView,
  }) {
    return loadingComplete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(String text)? textChange,
    TResult? Function()? loadingComplete,
    TResult? Function()? getDatabyText,
    TResult? Function()? changeTypeView,
  }) {
    return loadingComplete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String text)? textChange,
    TResult Function()? loadingComplete,
    TResult Function()? getDatabyText,
    TResult Function()? changeTypeView,
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
    required TResult Function(_TextChange value) textChange,
    required TResult Function(_LoadingComplete value) loadingComplete,
    required TResult Function(_GetDataByText value) getDatabyText,
    required TResult Function(_ChangeTypeView value) changeTypeView,
  }) {
    return loadingComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_TextChange value)? textChange,
    TResult? Function(_LoadingComplete value)? loadingComplete,
    TResult? Function(_GetDataByText value)? getDatabyText,
    TResult? Function(_ChangeTypeView value)? changeTypeView,
  }) {
    return loadingComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_TextChange value)? textChange,
    TResult Function(_LoadingComplete value)? loadingComplete,
    TResult Function(_GetDataByText value)? getDatabyText,
    TResult Function(_ChangeTypeView value)? changeTypeView,
    required TResult orElse(),
  }) {
    if (loadingComplete != null) {
      return loadingComplete(this);
    }
    return orElse();
  }
}

abstract class _LoadingComplete implements SearchMobileEvent {
  const factory _LoadingComplete() = _$_LoadingComplete;
}

/// @nodoc
abstract class _$$_GetDataByTextCopyWith<$Res> {
  factory _$$_GetDataByTextCopyWith(
          _$_GetDataByText value, $Res Function(_$_GetDataByText) then) =
      __$$_GetDataByTextCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetDataByTextCopyWithImpl<$Res>
    extends _$SearchMobileEventCopyWithImpl<$Res, _$_GetDataByText>
    implements _$$_GetDataByTextCopyWith<$Res> {
  __$$_GetDataByTextCopyWithImpl(
      _$_GetDataByText _value, $Res Function(_$_GetDataByText) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetDataByText implements _GetDataByText {
  const _$_GetDataByText();

  @override
  String toString() {
    return 'SearchMobileEvent.getDatabyText()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetDataByText);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(String text) textChange,
    required TResult Function() loadingComplete,
    required TResult Function() getDatabyText,
    required TResult Function() changeTypeView,
  }) {
    return getDatabyText();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(String text)? textChange,
    TResult? Function()? loadingComplete,
    TResult? Function()? getDatabyText,
    TResult? Function()? changeTypeView,
  }) {
    return getDatabyText?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String text)? textChange,
    TResult Function()? loadingComplete,
    TResult Function()? getDatabyText,
    TResult Function()? changeTypeView,
    required TResult orElse(),
  }) {
    if (getDatabyText != null) {
      return getDatabyText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) onStarted,
    required TResult Function(_TextChange value) textChange,
    required TResult Function(_LoadingComplete value) loadingComplete,
    required TResult Function(_GetDataByText value) getDatabyText,
    required TResult Function(_ChangeTypeView value) changeTypeView,
  }) {
    return getDatabyText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_TextChange value)? textChange,
    TResult? Function(_LoadingComplete value)? loadingComplete,
    TResult? Function(_GetDataByText value)? getDatabyText,
    TResult? Function(_ChangeTypeView value)? changeTypeView,
  }) {
    return getDatabyText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_TextChange value)? textChange,
    TResult Function(_LoadingComplete value)? loadingComplete,
    TResult Function(_GetDataByText value)? getDatabyText,
    TResult Function(_ChangeTypeView value)? changeTypeView,
    required TResult orElse(),
  }) {
    if (getDatabyText != null) {
      return getDatabyText(this);
    }
    return orElse();
  }
}

abstract class _GetDataByText implements SearchMobileEvent {
  const factory _GetDataByText() = _$_GetDataByText;
}

/// @nodoc
abstract class _$$_ChangeTypeViewCopyWith<$Res> {
  factory _$$_ChangeTypeViewCopyWith(
          _$_ChangeTypeView value, $Res Function(_$_ChangeTypeView) then) =
      __$$_ChangeTypeViewCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChangeTypeViewCopyWithImpl<$Res>
    extends _$SearchMobileEventCopyWithImpl<$Res, _$_ChangeTypeView>
    implements _$$_ChangeTypeViewCopyWith<$Res> {
  __$$_ChangeTypeViewCopyWithImpl(
      _$_ChangeTypeView _value, $Res Function(_$_ChangeTypeView) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ChangeTypeView implements _ChangeTypeView {
  const _$_ChangeTypeView();

  @override
  String toString() {
    return 'SearchMobileEvent.changeTypeView()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ChangeTypeView);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(String text) textChange,
    required TResult Function() loadingComplete,
    required TResult Function() getDatabyText,
    required TResult Function() changeTypeView,
  }) {
    return changeTypeView();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(String text)? textChange,
    TResult? Function()? loadingComplete,
    TResult? Function()? getDatabyText,
    TResult? Function()? changeTypeView,
  }) {
    return changeTypeView?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String text)? textChange,
    TResult Function()? loadingComplete,
    TResult Function()? getDatabyText,
    TResult Function()? changeTypeView,
    required TResult orElse(),
  }) {
    if (changeTypeView != null) {
      return changeTypeView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) onStarted,
    required TResult Function(_TextChange value) textChange,
    required TResult Function(_LoadingComplete value) loadingComplete,
    required TResult Function(_GetDataByText value) getDatabyText,
    required TResult Function(_ChangeTypeView value) changeTypeView,
  }) {
    return changeTypeView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? onStarted,
    TResult? Function(_TextChange value)? textChange,
    TResult? Function(_LoadingComplete value)? loadingComplete,
    TResult? Function(_GetDataByText value)? getDatabyText,
    TResult? Function(_ChangeTypeView value)? changeTypeView,
  }) {
    return changeTypeView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? onStarted,
    TResult Function(_TextChange value)? textChange,
    TResult Function(_LoadingComplete value)? loadingComplete,
    TResult Function(_GetDataByText value)? getDatabyText,
    TResult Function(_ChangeTypeView value)? changeTypeView,
    required TResult orElse(),
  }) {
    if (changeTypeView != null) {
      return changeTypeView(this);
    }
    return orElse();
  }
}

abstract class _ChangeTypeView implements SearchMobileEvent {
  const factory _ChangeTypeView() = _$_ChangeTypeView;
}
