// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_edit_airport_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddEditAirportModelState {
  TextEditingController get name => throw _privateConstructorUsedError;
  TextEditingController get location => throw _privateConstructorUsedError;
  String get headerText => throw _privateConstructorUsedError;
  List<Uint8List> get images => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddEditAirportModelStateCopyWith<AddEditAirportModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEditAirportModelStateCopyWith<$Res> {
  factory $AddEditAirportModelStateCopyWith(AddEditAirportModelState value,
          $Res Function(AddEditAirportModelState) then) =
      _$AddEditAirportModelStateCopyWithImpl<$Res, AddEditAirportModelState>;
  @useResult
  $Res call(
      {TextEditingController name,
      TextEditingController location,
      String headerText,
      List<Uint8List> images});
}

/// @nodoc
class _$AddEditAirportModelStateCopyWithImpl<$Res,
        $Val extends AddEditAirportModelState>
    implements $AddEditAirportModelStateCopyWith<$Res> {
  _$AddEditAirportModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? location = null,
    Object? headerText = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      headerText: null == headerText
          ? _value.headerText
          : headerText // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddEditAirportModelStateCopyWith<$Res>
    implements $AddEditAirportModelStateCopyWith<$Res> {
  factory _$$_AddEditAirportModelStateCopyWith(
          _$_AddEditAirportModelState value,
          $Res Function(_$_AddEditAirportModelState) then) =
      __$$_AddEditAirportModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextEditingController name,
      TextEditingController location,
      String headerText,
      List<Uint8List> images});
}

/// @nodoc
class __$$_AddEditAirportModelStateCopyWithImpl<$Res>
    extends _$AddEditAirportModelStateCopyWithImpl<$Res,
        _$_AddEditAirportModelState>
    implements _$$_AddEditAirportModelStateCopyWith<$Res> {
  __$$_AddEditAirportModelStateCopyWithImpl(_$_AddEditAirportModelState _value,
      $Res Function(_$_AddEditAirportModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? location = null,
    Object? headerText = null,
    Object? images = null,
  }) {
    return _then(_$_AddEditAirportModelState(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      headerText: null == headerText
          ? _value.headerText
          : headerText // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>,
    ));
  }
}

/// @nodoc

class _$_AddEditAirportModelState implements _AddEditAirportModelState {
  const _$_AddEditAirportModelState(
      {required this.name,
      required this.location,
      required this.headerText,
      required final List<Uint8List> images})
      : _images = images;

  @override
  final TextEditingController name;
  @override
  final TextEditingController location;
  @override
  final String headerText;
  final List<Uint8List> _images;
  @override
  List<Uint8List> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'AddEditAirportModelState(name: $name, location: $location, headerText: $headerText, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddEditAirportModelState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.headerText, headerText) ||
                other.headerText == headerText) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, location, headerText,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddEditAirportModelStateCopyWith<_$_AddEditAirportModelState>
      get copyWith => __$$_AddEditAirportModelStateCopyWithImpl<
          _$_AddEditAirportModelState>(this, _$identity);
}

abstract class _AddEditAirportModelState implements AddEditAirportModelState {
  const factory _AddEditAirportModelState(
      {required final TextEditingController name,
      required final TextEditingController location,
      required final String headerText,
      required final List<Uint8List> images}) = _$_AddEditAirportModelState;

  @override
  TextEditingController get name;
  @override
  TextEditingController get location;
  @override
  String get headerText;
  @override
  List<Uint8List> get images;
  @override
  @JsonKey(ignore: true)
  _$$_AddEditAirportModelStateCopyWith<_$_AddEditAirportModelState>
      get copyWith => throw _privateConstructorUsedError;
}
