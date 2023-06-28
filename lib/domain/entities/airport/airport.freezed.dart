// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'airport.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Airport {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  TimeOfDay get openTime => throw _privateConstructorUsedError;
  TimeOfDay get closeTime => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AirportCopyWith<Airport> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirportCopyWith<$Res> {
  factory $AirportCopyWith(Airport value, $Res Function(Airport) then) =
      _$AirportCopyWithImpl<$Res, Airport>;
  @useResult
  $Res call(
      {int id,
      String name,
      String image,
      String location,
      String description,
      TimeOfDay openTime,
      TimeOfDay closeTime,
      String code});
}

/// @nodoc
class _$AirportCopyWithImpl<$Res, $Val extends Airport>
    implements $AirportCopyWith<$Res> {
  _$AirportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? location = null,
    Object? description = null,
    Object? openTime = null,
    Object? closeTime = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      openTime: null == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      closeTime: null == closeTime
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AirportCopyWith<$Res> implements $AirportCopyWith<$Res> {
  factory _$$_AirportCopyWith(
          _$_Airport value, $Res Function(_$_Airport) then) =
      __$$_AirportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String image,
      String location,
      String description,
      TimeOfDay openTime,
      TimeOfDay closeTime,
      String code});
}

/// @nodoc
class __$$_AirportCopyWithImpl<$Res>
    extends _$AirportCopyWithImpl<$Res, _$_Airport>
    implements _$$_AirportCopyWith<$Res> {
  __$$_AirportCopyWithImpl(_$_Airport _value, $Res Function(_$_Airport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? location = null,
    Object? description = null,
    Object? openTime = null,
    Object? closeTime = null,
    Object? code = null,
  }) {
    return _then(_$_Airport(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      openTime: null == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      closeTime: null == closeTime
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Airport implements _Airport {
  const _$_Airport(
      {required this.id,
      required this.name,
      required this.image,
      required this.location,
      required this.description,
      required this.openTime,
      required this.closeTime,
      required this.code});

  @override
  final int id;
  @override
  final String name;
  @override
  final String image;
  @override
  final String location;
  @override
  final String description;
  @override
  final TimeOfDay openTime;
  @override
  final TimeOfDay closeTime;
  @override
  final String code;

  @override
  String toString() {
    return 'Airport(id: $id, name: $name, image: $image, location: $location, description: $description, openTime: $openTime, closeTime: $closeTime, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Airport &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.openTime, openTime) ||
                other.openTime == openTime) &&
            (identical(other.closeTime, closeTime) ||
                other.closeTime == closeTime) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, location,
      description, openTime, closeTime, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AirportCopyWith<_$_Airport> get copyWith =>
      __$$_AirportCopyWithImpl<_$_Airport>(this, _$identity);
}

abstract class _Airport implements Airport {
  const factory _Airport(
      {required final int id,
      required final String name,
      required final String image,
      required final String location,
      required final String description,
      required final TimeOfDay openTime,
      required final TimeOfDay closeTime,
      required final String code}) = _$_Airport;

  @override
  int get id;
  @override
  String get name;
  @override
  String get image;
  @override
  String get location;
  @override
  String get description;
  @override
  TimeOfDay get openTime;
  @override
  TimeOfDay get closeTime;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$_AirportCopyWith<_$_Airport> get copyWith =>
      throw _privateConstructorUsedError;
}
