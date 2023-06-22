// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'airline.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Airline _$AirlineFromJson(Map<String, dynamic> json) {
  return _Airline.fromJson(json);
}

/// @nodoc
mixin _$Airline {
  int get id => throw _privateConstructorUsedError;
  String get airlineName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AirlineCopyWith<Airline> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirlineCopyWith<$Res> {
  factory $AirlineCopyWith(Airline value, $Res Function(Airline) then) =
      _$AirlineCopyWithImpl<$Res, Airline>;
  @useResult
  $Res call({int id, String airlineName});
}

/// @nodoc
class _$AirlineCopyWithImpl<$Res, $Val extends Airline>
    implements $AirlineCopyWith<$Res> {
  _$AirlineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? airlineName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      airlineName: null == airlineName
          ? _value.airlineName
          : airlineName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AirlineCopyWith<$Res> implements $AirlineCopyWith<$Res> {
  factory _$$_AirlineCopyWith(
          _$_Airline value, $Res Function(_$_Airline) then) =
      __$$_AirlineCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String airlineName});
}

/// @nodoc
class __$$_AirlineCopyWithImpl<$Res>
    extends _$AirlineCopyWithImpl<$Res, _$_Airline>
    implements _$$_AirlineCopyWith<$Res> {
  __$$_AirlineCopyWithImpl(_$_Airline _value, $Res Function(_$_Airline) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? airlineName = null,
  }) {
    return _then(_$_Airline(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      airlineName: null == airlineName
          ? _value.airlineName
          : airlineName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Airline implements _Airline {
  const _$_Airline({required this.id, required this.airlineName});

  factory _$_Airline.fromJson(Map<String, dynamic> json) =>
      _$$_AirlineFromJson(json);

  @override
  final int id;
  @override
  final String airlineName;

  @override
  String toString() {
    return 'Airline(id: $id, airlineName: $airlineName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Airline &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.airlineName, airlineName) ||
                other.airlineName == airlineName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, airlineName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AirlineCopyWith<_$_Airline> get copyWith =>
      __$$_AirlineCopyWithImpl<_$_Airline>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AirlineToJson(
      this,
    );
  }
}

abstract class _Airline implements Airline {
  const factory _Airline(
      {required final int id, required final String airlineName}) = _$_Airline;

  factory _Airline.fromJson(Map<String, dynamic> json) = _$_Airline.fromJson;

  @override
  int get id;
  @override
  String get airlineName;
  @override
  @JsonKey(ignore: true)
  _$$_AirlineCopyWith<_$_Airline> get copyWith =>
      throw _privateConstructorUsedError;
}
