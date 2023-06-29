// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DashboardModelState _$DashboardModelStateFromJson(Map<String, dynamic> json) {
  return _DashboardModelState.fromJson(json);
}

/// @nodoc
mixin _$DashboardModelState {
  int get viewEnum => throw _privateConstructorUsedError;
  bool get isDarkTheme => throw _privateConstructorUsedError;
  bool get secondBodyDis => throw _privateConstructorUsedError;
  OverviewModelStateData get overviewData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardModelStateCopyWith<DashboardModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardModelStateCopyWith<$Res> {
  factory $DashboardModelStateCopyWith(
          DashboardModelState value, $Res Function(DashboardModelState) then) =
      _$DashboardModelStateCopyWithImpl<$Res, DashboardModelState>;
  @useResult
  $Res call(
      {int viewEnum,
      bool isDarkTheme,
      bool secondBodyDis,
      OverviewModelStateData overviewData});

  $OverviewModelStateDataCopyWith<$Res> get overviewData;
}

/// @nodoc
class _$DashboardModelStateCopyWithImpl<$Res, $Val extends DashboardModelState>
    implements $DashboardModelStateCopyWith<$Res> {
  _$DashboardModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewEnum = null,
    Object? isDarkTheme = null,
    Object? secondBodyDis = null,
    Object? overviewData = null,
  }) {
    return _then(_value.copyWith(
      viewEnum: null == viewEnum
          ? _value.viewEnum
          : viewEnum // ignore: cast_nullable_to_non_nullable
              as int,
      isDarkTheme: null == isDarkTheme
          ? _value.isDarkTheme
          : isDarkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
      secondBodyDis: null == secondBodyDis
          ? _value.secondBodyDis
          : secondBodyDis // ignore: cast_nullable_to_non_nullable
              as bool,
      overviewData: null == overviewData
          ? _value.overviewData
          : overviewData // ignore: cast_nullable_to_non_nullable
              as OverviewModelStateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OverviewModelStateDataCopyWith<$Res> get overviewData {
    return $OverviewModelStateDataCopyWith<$Res>(_value.overviewData, (value) {
      return _then(_value.copyWith(overviewData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DashboardModelStateCopyWith<$Res>
    implements $DashboardModelStateCopyWith<$Res> {
  factory _$$_DashboardModelStateCopyWith(_$_DashboardModelState value,
          $Res Function(_$_DashboardModelState) then) =
      __$$_DashboardModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int viewEnum,
      bool isDarkTheme,
      bool secondBodyDis,
      OverviewModelStateData overviewData});

  @override
  $OverviewModelStateDataCopyWith<$Res> get overviewData;
}

/// @nodoc
class __$$_DashboardModelStateCopyWithImpl<$Res>
    extends _$DashboardModelStateCopyWithImpl<$Res, _$_DashboardModelState>
    implements _$$_DashboardModelStateCopyWith<$Res> {
  __$$_DashboardModelStateCopyWithImpl(_$_DashboardModelState _value,
      $Res Function(_$_DashboardModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewEnum = null,
    Object? isDarkTheme = null,
    Object? secondBodyDis = null,
    Object? overviewData = null,
  }) {
    return _then(_$_DashboardModelState(
      viewEnum: null == viewEnum
          ? _value.viewEnum
          : viewEnum // ignore: cast_nullable_to_non_nullable
              as int,
      isDarkTheme: null == isDarkTheme
          ? _value.isDarkTheme
          : isDarkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
      secondBodyDis: null == secondBodyDis
          ? _value.secondBodyDis
          : secondBodyDis // ignore: cast_nullable_to_non_nullable
              as bool,
      overviewData: null == overviewData
          ? _value.overviewData
          : overviewData // ignore: cast_nullable_to_non_nullable
              as OverviewModelStateData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DashboardModelState implements _DashboardModelState {
  const _$_DashboardModelState(
      {required this.viewEnum,
      required this.isDarkTheme,
      required this.secondBodyDis,
      required this.overviewData});

  factory _$_DashboardModelState.fromJson(Map<String, dynamic> json) =>
      _$$_DashboardModelStateFromJson(json);

  @override
  final int viewEnum;
  @override
  final bool isDarkTheme;
  @override
  final bool secondBodyDis;
  @override
  final OverviewModelStateData overviewData;

  @override
  String toString() {
    return 'DashboardModelState(viewEnum: $viewEnum, isDarkTheme: $isDarkTheme, secondBodyDis: $secondBodyDis, overviewData: $overviewData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardModelState &&
            (identical(other.viewEnum, viewEnum) ||
                other.viewEnum == viewEnum) &&
            (identical(other.isDarkTheme, isDarkTheme) ||
                other.isDarkTheme == isDarkTheme) &&
            (identical(other.secondBodyDis, secondBodyDis) ||
                other.secondBodyDis == secondBodyDis) &&
            (identical(other.overviewData, overviewData) ||
                other.overviewData == overviewData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, viewEnum, isDarkTheme, secondBodyDis, overviewData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DashboardModelStateCopyWith<_$_DashboardModelState> get copyWith =>
      __$$_DashboardModelStateCopyWithImpl<_$_DashboardModelState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DashboardModelStateToJson(
      this,
    );
  }
}

abstract class _DashboardModelState implements DashboardModelState {
  const factory _DashboardModelState(
          {required final int viewEnum,
          required final bool isDarkTheme,
          required final bool secondBodyDis,
          required final OverviewModelStateData overviewData}) =
      _$_DashboardModelState;

  factory _DashboardModelState.fromJson(Map<String, dynamic> json) =
      _$_DashboardModelState.fromJson;

  @override
  int get viewEnum;
  @override
  bool get isDarkTheme;
  @override
  bool get secondBodyDis;
  @override
  OverviewModelStateData get overviewData;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardModelStateCopyWith<_$_DashboardModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
