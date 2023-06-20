// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flight_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FlightDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ItemViewEnum view) changeTypeView,
    required TResult Function() showMoreInformation,
    required TResult Function() getFlightById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ItemViewEnum view)? changeTypeView,
    TResult? Function()? showMoreInformation,
    TResult? Function()? getFlightById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ItemViewEnum view)? changeTypeView,
    TResult Function()? showMoreInformation,
    TResult Function()? getFlightById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeTypeView value) changeTypeView,
    required TResult Function(_showMoreInformation value) showMoreInformation,
    required TResult Function(_GetFlightById value) getFlightById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeTypeView value)? changeTypeView,
    TResult? Function(_showMoreInformation value)? showMoreInformation,
    TResult? Function(_GetFlightById value)? getFlightById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeTypeView value)? changeTypeView,
    TResult Function(_showMoreInformation value)? showMoreInformation,
    TResult Function(_GetFlightById value)? getFlightById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlightDetailEventCopyWith<$Res> {
  factory $FlightDetailEventCopyWith(
          FlightDetailEvent value, $Res Function(FlightDetailEvent) then) =
      _$FlightDetailEventCopyWithImpl<$Res, FlightDetailEvent>;
}

/// @nodoc
class _$FlightDetailEventCopyWithImpl<$Res, $Val extends FlightDetailEvent>
    implements $FlightDetailEventCopyWith<$Res> {
  _$FlightDetailEventCopyWithImpl(this._value, this._then);

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
    extends _$FlightDetailEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'FlightDetailEvent.started()';
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
    required TResult Function(ItemViewEnum view) changeTypeView,
    required TResult Function() showMoreInformation,
    required TResult Function() getFlightById,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ItemViewEnum view)? changeTypeView,
    TResult? Function()? showMoreInformation,
    TResult? Function()? getFlightById,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ItemViewEnum view)? changeTypeView,
    TResult Function()? showMoreInformation,
    TResult Function()? getFlightById,
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
    required TResult Function(_ChangeTypeView value) changeTypeView,
    required TResult Function(_showMoreInformation value) showMoreInformation,
    required TResult Function(_GetFlightById value) getFlightById,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeTypeView value)? changeTypeView,
    TResult? Function(_showMoreInformation value)? showMoreInformation,
    TResult? Function(_GetFlightById value)? getFlightById,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeTypeView value)? changeTypeView,
    TResult Function(_showMoreInformation value)? showMoreInformation,
    TResult Function(_GetFlightById value)? getFlightById,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FlightDetailEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ChangeTypeViewCopyWith<$Res> {
  factory _$$_ChangeTypeViewCopyWith(
          _$_ChangeTypeView value, $Res Function(_$_ChangeTypeView) then) =
      __$$_ChangeTypeViewCopyWithImpl<$Res>;
  @useResult
  $Res call({ItemViewEnum view});
}

/// @nodoc
class __$$_ChangeTypeViewCopyWithImpl<$Res>
    extends _$FlightDetailEventCopyWithImpl<$Res, _$_ChangeTypeView>
    implements _$$_ChangeTypeViewCopyWith<$Res> {
  __$$_ChangeTypeViewCopyWithImpl(
      _$_ChangeTypeView _value, $Res Function(_$_ChangeTypeView) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? view = null,
  }) {
    return _then(_$_ChangeTypeView(
      null == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as ItemViewEnum,
    ));
  }
}

/// @nodoc

class _$_ChangeTypeView implements _ChangeTypeView {
  const _$_ChangeTypeView(this.view);

  @override
  final ItemViewEnum view;

  @override
  String toString() {
    return 'FlightDetailEvent.changeTypeView(view: $view)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeTypeView &&
            (identical(other.view, view) || other.view == view));
  }

  @override
  int get hashCode => Object.hash(runtimeType, view);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeTypeViewCopyWith<_$_ChangeTypeView> get copyWith =>
      __$$_ChangeTypeViewCopyWithImpl<_$_ChangeTypeView>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ItemViewEnum view) changeTypeView,
    required TResult Function() showMoreInformation,
    required TResult Function() getFlightById,
  }) {
    return changeTypeView(view);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ItemViewEnum view)? changeTypeView,
    TResult? Function()? showMoreInformation,
    TResult? Function()? getFlightById,
  }) {
    return changeTypeView?.call(view);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ItemViewEnum view)? changeTypeView,
    TResult Function()? showMoreInformation,
    TResult Function()? getFlightById,
    required TResult orElse(),
  }) {
    if (changeTypeView != null) {
      return changeTypeView(view);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeTypeView value) changeTypeView,
    required TResult Function(_showMoreInformation value) showMoreInformation,
    required TResult Function(_GetFlightById value) getFlightById,
  }) {
    return changeTypeView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeTypeView value)? changeTypeView,
    TResult? Function(_showMoreInformation value)? showMoreInformation,
    TResult? Function(_GetFlightById value)? getFlightById,
  }) {
    return changeTypeView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeTypeView value)? changeTypeView,
    TResult Function(_showMoreInformation value)? showMoreInformation,
    TResult Function(_GetFlightById value)? getFlightById,
    required TResult orElse(),
  }) {
    if (changeTypeView != null) {
      return changeTypeView(this);
    }
    return orElse();
  }
}

abstract class _ChangeTypeView implements FlightDetailEvent {
  const factory _ChangeTypeView(final ItemViewEnum view) = _$_ChangeTypeView;

  ItemViewEnum get view;
  @JsonKey(ignore: true)
  _$$_ChangeTypeViewCopyWith<_$_ChangeTypeView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_showMoreInformationCopyWith<$Res> {
  factory _$$_showMoreInformationCopyWith(_$_showMoreInformation value,
          $Res Function(_$_showMoreInformation) then) =
      __$$_showMoreInformationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_showMoreInformationCopyWithImpl<$Res>
    extends _$FlightDetailEventCopyWithImpl<$Res, _$_showMoreInformation>
    implements _$$_showMoreInformationCopyWith<$Res> {
  __$$_showMoreInformationCopyWithImpl(_$_showMoreInformation _value,
      $Res Function(_$_showMoreInformation) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_showMoreInformation implements _showMoreInformation {
  const _$_showMoreInformation();

  @override
  String toString() {
    return 'FlightDetailEvent.showMoreInformation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_showMoreInformation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ItemViewEnum view) changeTypeView,
    required TResult Function() showMoreInformation,
    required TResult Function() getFlightById,
  }) {
    return showMoreInformation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ItemViewEnum view)? changeTypeView,
    TResult? Function()? showMoreInformation,
    TResult? Function()? getFlightById,
  }) {
    return showMoreInformation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ItemViewEnum view)? changeTypeView,
    TResult Function()? showMoreInformation,
    TResult Function()? getFlightById,
    required TResult orElse(),
  }) {
    if (showMoreInformation != null) {
      return showMoreInformation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeTypeView value) changeTypeView,
    required TResult Function(_showMoreInformation value) showMoreInformation,
    required TResult Function(_GetFlightById value) getFlightById,
  }) {
    return showMoreInformation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeTypeView value)? changeTypeView,
    TResult? Function(_showMoreInformation value)? showMoreInformation,
    TResult? Function(_GetFlightById value)? getFlightById,
  }) {
    return showMoreInformation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeTypeView value)? changeTypeView,
    TResult Function(_showMoreInformation value)? showMoreInformation,
    TResult Function(_GetFlightById value)? getFlightById,
    required TResult orElse(),
  }) {
    if (showMoreInformation != null) {
      return showMoreInformation(this);
    }
    return orElse();
  }
}

abstract class _showMoreInformation implements FlightDetailEvent {
  const factory _showMoreInformation() = _$_showMoreInformation;
}

/// @nodoc
abstract class _$$_GetFlightByIdCopyWith<$Res> {
  factory _$$_GetFlightByIdCopyWith(
          _$_GetFlightById value, $Res Function(_$_GetFlightById) then) =
      __$$_GetFlightByIdCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetFlightByIdCopyWithImpl<$Res>
    extends _$FlightDetailEventCopyWithImpl<$Res, _$_GetFlightById>
    implements _$$_GetFlightByIdCopyWith<$Res> {
  __$$_GetFlightByIdCopyWithImpl(
      _$_GetFlightById _value, $Res Function(_$_GetFlightById) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetFlightById implements _GetFlightById {
  const _$_GetFlightById();

  @override
  String toString() {
    return 'FlightDetailEvent.getFlightById()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetFlightById);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ItemViewEnum view) changeTypeView,
    required TResult Function() showMoreInformation,
    required TResult Function() getFlightById,
  }) {
    return getFlightById();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ItemViewEnum view)? changeTypeView,
    TResult? Function()? showMoreInformation,
    TResult? Function()? getFlightById,
  }) {
    return getFlightById?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ItemViewEnum view)? changeTypeView,
    TResult Function()? showMoreInformation,
    TResult Function()? getFlightById,
    required TResult orElse(),
  }) {
    if (getFlightById != null) {
      return getFlightById();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeTypeView value) changeTypeView,
    required TResult Function(_showMoreInformation value) showMoreInformation,
    required TResult Function(_GetFlightById value) getFlightById,
  }) {
    return getFlightById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeTypeView value)? changeTypeView,
    TResult? Function(_showMoreInformation value)? showMoreInformation,
    TResult? Function(_GetFlightById value)? getFlightById,
  }) {
    return getFlightById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeTypeView value)? changeTypeView,
    TResult Function(_showMoreInformation value)? showMoreInformation,
    TResult Function(_GetFlightById value)? getFlightById,
    required TResult orElse(),
  }) {
    if (getFlightById != null) {
      return getFlightById(this);
    }
    return orElse();
  }
}

abstract class _GetFlightById implements FlightDetailEvent {
  const factory _GetFlightById() = _$_GetFlightById;
}

/// @nodoc
mixin _$FlightDetailState {
  FlightDetailModelState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlightDetailModelState data) initial,
    required TResult Function(FlightDetailModelState data, int loadingField)
        loading,
    required TResult Function(FlightDetailModelState data) getFlightByIdSuccess,
    required TResult Function(FlightDetailModelState data, String message)
        getFlightByIdFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlightDetailModelState data)? initial,
    TResult? Function(FlightDetailModelState data, int loadingField)? loading,
    TResult? Function(FlightDetailModelState data)? getFlightByIdSuccess,
    TResult? Function(FlightDetailModelState data, String message)?
        getFlightByIdFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlightDetailModelState data)? initial,
    TResult Function(FlightDetailModelState data, int loadingField)? loading,
    TResult Function(FlightDetailModelState data)? getFlightByIdSuccess,
    TResult Function(FlightDetailModelState data, String message)?
        getFlightByIdFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetFlightByIdSuccess value) getFlightByIdSuccess,
    required TResult Function(_GetFlightByIdFailed value) getFlightByIdFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetFlightByIdSuccess value)? getFlightByIdSuccess,
    TResult? Function(_GetFlightByIdFailed value)? getFlightByIdFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetFlightByIdSuccess value)? getFlightByIdSuccess,
    TResult Function(_GetFlightByIdFailed value)? getFlightByIdFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlightDetailStateCopyWith<FlightDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlightDetailStateCopyWith<$Res> {
  factory $FlightDetailStateCopyWith(
          FlightDetailState value, $Res Function(FlightDetailState) then) =
      _$FlightDetailStateCopyWithImpl<$Res, FlightDetailState>;
  @useResult
  $Res call({FlightDetailModelState data});

  $FlightDetailModelStateCopyWith<$Res> get data;
}

/// @nodoc
class _$FlightDetailStateCopyWithImpl<$Res, $Val extends FlightDetailState>
    implements $FlightDetailStateCopyWith<$Res> {
  _$FlightDetailStateCopyWithImpl(this._value, this._then);

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
              as FlightDetailModelState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FlightDetailModelStateCopyWith<$Res> get data {
    return $FlightDetailModelStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $FlightDetailStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FlightDetailModelState data});

  @override
  $FlightDetailModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$FlightDetailStateCopyWithImpl<$Res, _$_Initial>
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
              as FlightDetailModelState,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final FlightDetailModelState data;

  @override
  String toString() {
    return 'FlightDetailState.initial(data: $data)';
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
    required TResult Function(FlightDetailModelState data) initial,
    required TResult Function(FlightDetailModelState data, int loadingField)
        loading,
    required TResult Function(FlightDetailModelState data) getFlightByIdSuccess,
    required TResult Function(FlightDetailModelState data, String message)
        getFlightByIdFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlightDetailModelState data)? initial,
    TResult? Function(FlightDetailModelState data, int loadingField)? loading,
    TResult? Function(FlightDetailModelState data)? getFlightByIdSuccess,
    TResult? Function(FlightDetailModelState data, String message)?
        getFlightByIdFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlightDetailModelState data)? initial,
    TResult Function(FlightDetailModelState data, int loadingField)? loading,
    TResult Function(FlightDetailModelState data)? getFlightByIdSuccess,
    TResult Function(FlightDetailModelState data, String message)?
        getFlightByIdFailed,
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
    required TResult Function(_GetFlightByIdSuccess value) getFlightByIdSuccess,
    required TResult Function(_GetFlightByIdFailed value) getFlightByIdFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetFlightByIdSuccess value)? getFlightByIdSuccess,
    TResult? Function(_GetFlightByIdFailed value)? getFlightByIdFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetFlightByIdSuccess value)? getFlightByIdSuccess,
    TResult Function(_GetFlightByIdFailed value)? getFlightByIdFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends FlightDetailState {
  const factory _Initial({required final FlightDetailModelState data}) =
      _$_Initial;
  const _Initial._() : super._();

  @override
  FlightDetailModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $FlightDetailStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FlightDetailModelState data, int loadingField});

  @override
  $FlightDetailModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$FlightDetailStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? loadingField = null,
  }) {
    return _then(_$_Loading(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FlightDetailModelState,
      loadingField: null == loadingField
          ? _value.loadingField
          : loadingField // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data, required this.loadingField})
      : super._();

  @override
  final FlightDetailModelState data;
  @override
  final int loadingField;

  @override
  String toString() {
    return 'FlightDetailState.loading(data: $data, loadingField: $loadingField)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.loadingField, loadingField) ||
                other.loadingField == loadingField));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, loadingField);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlightDetailModelState data) initial,
    required TResult Function(FlightDetailModelState data, int loadingField)
        loading,
    required TResult Function(FlightDetailModelState data) getFlightByIdSuccess,
    required TResult Function(FlightDetailModelState data, String message)
        getFlightByIdFailed,
  }) {
    return loading(data, loadingField);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlightDetailModelState data)? initial,
    TResult? Function(FlightDetailModelState data, int loadingField)? loading,
    TResult? Function(FlightDetailModelState data)? getFlightByIdSuccess,
    TResult? Function(FlightDetailModelState data, String message)?
        getFlightByIdFailed,
  }) {
    return loading?.call(data, loadingField);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlightDetailModelState data)? initial,
    TResult Function(FlightDetailModelState data, int loadingField)? loading,
    TResult Function(FlightDetailModelState data)? getFlightByIdSuccess,
    TResult Function(FlightDetailModelState data, String message)?
        getFlightByIdFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data, loadingField);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetFlightByIdSuccess value) getFlightByIdSuccess,
    required TResult Function(_GetFlightByIdFailed value) getFlightByIdFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetFlightByIdSuccess value)? getFlightByIdSuccess,
    TResult? Function(_GetFlightByIdFailed value)? getFlightByIdFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetFlightByIdSuccess value)? getFlightByIdSuccess,
    TResult Function(_GetFlightByIdFailed value)? getFlightByIdFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends FlightDetailState {
  const factory _Loading(
      {required final FlightDetailModelState data,
      required final int loadingField}) = _$_Loading;
  const _Loading._() : super._();

  @override
  FlightDetailModelState get data;
  int get loadingField;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetFlightByIdSuccessCopyWith<$Res>
    implements $FlightDetailStateCopyWith<$Res> {
  factory _$$_GetFlightByIdSuccessCopyWith(_$_GetFlightByIdSuccess value,
          $Res Function(_$_GetFlightByIdSuccess) then) =
      __$$_GetFlightByIdSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FlightDetailModelState data});

  @override
  $FlightDetailModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetFlightByIdSuccessCopyWithImpl<$Res>
    extends _$FlightDetailStateCopyWithImpl<$Res, _$_GetFlightByIdSuccess>
    implements _$$_GetFlightByIdSuccessCopyWith<$Res> {
  __$$_GetFlightByIdSuccessCopyWithImpl(_$_GetFlightByIdSuccess _value,
      $Res Function(_$_GetFlightByIdSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetFlightByIdSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FlightDetailModelState,
    ));
  }
}

/// @nodoc

class _$_GetFlightByIdSuccess extends _GetFlightByIdSuccess {
  const _$_GetFlightByIdSuccess({required this.data}) : super._();

  @override
  final FlightDetailModelState data;

  @override
  String toString() {
    return 'FlightDetailState.getFlightByIdSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetFlightByIdSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetFlightByIdSuccessCopyWith<_$_GetFlightByIdSuccess> get copyWith =>
      __$$_GetFlightByIdSuccessCopyWithImpl<_$_GetFlightByIdSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlightDetailModelState data) initial,
    required TResult Function(FlightDetailModelState data, int loadingField)
        loading,
    required TResult Function(FlightDetailModelState data) getFlightByIdSuccess,
    required TResult Function(FlightDetailModelState data, String message)
        getFlightByIdFailed,
  }) {
    return getFlightByIdSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlightDetailModelState data)? initial,
    TResult? Function(FlightDetailModelState data, int loadingField)? loading,
    TResult? Function(FlightDetailModelState data)? getFlightByIdSuccess,
    TResult? Function(FlightDetailModelState data, String message)?
        getFlightByIdFailed,
  }) {
    return getFlightByIdSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlightDetailModelState data)? initial,
    TResult Function(FlightDetailModelState data, int loadingField)? loading,
    TResult Function(FlightDetailModelState data)? getFlightByIdSuccess,
    TResult Function(FlightDetailModelState data, String message)?
        getFlightByIdFailed,
    required TResult orElse(),
  }) {
    if (getFlightByIdSuccess != null) {
      return getFlightByIdSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetFlightByIdSuccess value) getFlightByIdSuccess,
    required TResult Function(_GetFlightByIdFailed value) getFlightByIdFailed,
  }) {
    return getFlightByIdSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetFlightByIdSuccess value)? getFlightByIdSuccess,
    TResult? Function(_GetFlightByIdFailed value)? getFlightByIdFailed,
  }) {
    return getFlightByIdSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetFlightByIdSuccess value)? getFlightByIdSuccess,
    TResult Function(_GetFlightByIdFailed value)? getFlightByIdFailed,
    required TResult orElse(),
  }) {
    if (getFlightByIdSuccess != null) {
      return getFlightByIdSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetFlightByIdSuccess extends FlightDetailState {
  const factory _GetFlightByIdSuccess(
      {required final FlightDetailModelState data}) = _$_GetFlightByIdSuccess;
  const _GetFlightByIdSuccess._() : super._();

  @override
  FlightDetailModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetFlightByIdSuccessCopyWith<_$_GetFlightByIdSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetFlightByIdFailedCopyWith<$Res>
    implements $FlightDetailStateCopyWith<$Res> {
  factory _$$_GetFlightByIdFailedCopyWith(_$_GetFlightByIdFailed value,
          $Res Function(_$_GetFlightByIdFailed) then) =
      __$$_GetFlightByIdFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FlightDetailModelState data, String message});

  @override
  $FlightDetailModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetFlightByIdFailedCopyWithImpl<$Res>
    extends _$FlightDetailStateCopyWithImpl<$Res, _$_GetFlightByIdFailed>
    implements _$$_GetFlightByIdFailedCopyWith<$Res> {
  __$$_GetFlightByIdFailedCopyWithImpl(_$_GetFlightByIdFailed _value,
      $Res Function(_$_GetFlightByIdFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetFlightByIdFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FlightDetailModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetFlightByIdFailed extends _GetFlightByIdFailed {
  const _$_GetFlightByIdFailed({required this.data, required this.message})
      : super._();

  @override
  final FlightDetailModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'FlightDetailState.getFlightByIdFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetFlightByIdFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetFlightByIdFailedCopyWith<_$_GetFlightByIdFailed> get copyWith =>
      __$$_GetFlightByIdFailedCopyWithImpl<_$_GetFlightByIdFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlightDetailModelState data) initial,
    required TResult Function(FlightDetailModelState data, int loadingField)
        loading,
    required TResult Function(FlightDetailModelState data) getFlightByIdSuccess,
    required TResult Function(FlightDetailModelState data, String message)
        getFlightByIdFailed,
  }) {
    return getFlightByIdFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlightDetailModelState data)? initial,
    TResult? Function(FlightDetailModelState data, int loadingField)? loading,
    TResult? Function(FlightDetailModelState data)? getFlightByIdSuccess,
    TResult? Function(FlightDetailModelState data, String message)?
        getFlightByIdFailed,
  }) {
    return getFlightByIdFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlightDetailModelState data)? initial,
    TResult Function(FlightDetailModelState data, int loadingField)? loading,
    TResult Function(FlightDetailModelState data)? getFlightByIdSuccess,
    TResult Function(FlightDetailModelState data, String message)?
        getFlightByIdFailed,
    required TResult orElse(),
  }) {
    if (getFlightByIdFailed != null) {
      return getFlightByIdFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetFlightByIdSuccess value) getFlightByIdSuccess,
    required TResult Function(_GetFlightByIdFailed value) getFlightByIdFailed,
  }) {
    return getFlightByIdFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetFlightByIdSuccess value)? getFlightByIdSuccess,
    TResult? Function(_GetFlightByIdFailed value)? getFlightByIdFailed,
  }) {
    return getFlightByIdFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetFlightByIdSuccess value)? getFlightByIdSuccess,
    TResult Function(_GetFlightByIdFailed value)? getFlightByIdFailed,
    required TResult orElse(),
  }) {
    if (getFlightByIdFailed != null) {
      return getFlightByIdFailed(this);
    }
    return orElse();
  }
}

abstract class _GetFlightByIdFailed extends FlightDetailState {
  const factory _GetFlightByIdFailed(
      {required final FlightDetailModelState data,
      required final String message}) = _$_GetFlightByIdFailed;
  const _GetFlightByIdFailed._() : super._();

  @override
  FlightDetailModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetFlightByIdFailedCopyWith<_$_GetFlightByIdFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
