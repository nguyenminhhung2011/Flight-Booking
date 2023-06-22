// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_customer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddCustomerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, String email, String phoneNumber,
            String gender, String identifyNum, DateTime dob)
        addCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String email, String phoneNumber,
            String gender, String identifyNum, DateTime dob)?
        addCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String email, String phoneNumber,
            String gender, String identifyNum, DateTime dob)?
        addCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCustomer value) addCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddCustomer value)? addCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCustomer value)? addCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCustomerEventCopyWith<$Res> {
  factory $AddCustomerEventCopyWith(
          AddCustomerEvent value, $Res Function(AddCustomerEvent) then) =
      _$AddCustomerEventCopyWithImpl<$Res, AddCustomerEvent>;
}

/// @nodoc
class _$AddCustomerEventCopyWithImpl<$Res, $Val extends AddCustomerEvent>
    implements $AddCustomerEventCopyWith<$Res> {
  _$AddCustomerEventCopyWithImpl(this._value, this._then);

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
    extends _$AddCustomerEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AddCustomerEvent.started()';
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
    required TResult Function(String name, String email, String phoneNumber,
            String gender, String identifyNum, DateTime dob)
        addCustomer,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String email, String phoneNumber,
            String gender, String identifyNum, DateTime dob)?
        addCustomer,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String email, String phoneNumber,
            String gender, String identifyNum, DateTime dob)?
        addCustomer,
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
    required TResult Function(_AddCustomer value) addCustomer,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddCustomer value)? addCustomer,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCustomer value)? addCustomer,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AddCustomerEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_AddCustomerCopyWith<$Res> {
  factory _$$_AddCustomerCopyWith(
          _$_AddCustomer value, $Res Function(_$_AddCustomer) then) =
      __$$_AddCustomerCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String email,
      String phoneNumber,
      String gender,
      String identifyNum,
      DateTime dob});
}

/// @nodoc
class __$$_AddCustomerCopyWithImpl<$Res>
    extends _$AddCustomerEventCopyWithImpl<$Res, _$_AddCustomer>
    implements _$$_AddCustomerCopyWith<$Res> {
  __$$_AddCustomerCopyWithImpl(
      _$_AddCustomer _value, $Res Function(_$_AddCustomer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? gender = null,
    Object? identifyNum = null,
    Object? dob = null,
  }) {
    return _then(_$_AddCustomer(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      identifyNum: null == identifyNum
          ? _value.identifyNum
          : identifyNum // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_AddCustomer implements _AddCustomer {
  const _$_AddCustomer(
      {required this.name,
      required this.email,
      required this.phoneNumber,
      required this.gender,
      required this.identifyNum,
      required this.dob});

  @override
  final String name;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final String gender;
  @override
  final String identifyNum;
  @override
  final DateTime dob;

  @override
  String toString() {
    return 'AddCustomerEvent.addCustomer(name: $name, email: $email, phoneNumber: $phoneNumber, gender: $gender, identifyNum: $identifyNum, dob: $dob)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCustomer &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.identifyNum, identifyNum) ||
                other.identifyNum == identifyNum) &&
            (identical(other.dob, dob) || other.dob == dob));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, email, phoneNumber, gender, identifyNum, dob);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCustomerCopyWith<_$_AddCustomer> get copyWith =>
      __$$_AddCustomerCopyWithImpl<_$_AddCustomer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, String email, String phoneNumber,
            String gender, String identifyNum, DateTime dob)
        addCustomer,
  }) {
    return addCustomer(name, email, phoneNumber, gender, identifyNum, dob);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String email, String phoneNumber,
            String gender, String identifyNum, DateTime dob)?
        addCustomer,
  }) {
    return addCustomer?.call(
        name, email, phoneNumber, gender, identifyNum, dob);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String email, String phoneNumber,
            String gender, String identifyNum, DateTime dob)?
        addCustomer,
    required TResult orElse(),
  }) {
    if (addCustomer != null) {
      return addCustomer(name, email, phoneNumber, gender, identifyNum, dob);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCustomer value) addCustomer,
  }) {
    return addCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddCustomer value)? addCustomer,
  }) {
    return addCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCustomer value)? addCustomer,
    required TResult orElse(),
  }) {
    if (addCustomer != null) {
      return addCustomer(this);
    }
    return orElse();
  }
}

abstract class _AddCustomer implements AddCustomerEvent {
  const factory _AddCustomer(
      {required final String name,
      required final String email,
      required final String phoneNumber,
      required final String gender,
      required final String identifyNum,
      required final DateTime dob}) = _$_AddCustomer;

  String get name;
  String get email;
  String get phoneNumber;
  String get gender;
  String get identifyNum;
  DateTime get dob;
  @JsonKey(ignore: true)
  _$$_AddCustomerCopyWith<_$_AddCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddCustomerState {
  AddCustomerModelState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddCustomerModelState data) loading,
    required TResult Function(AddCustomerModelState data) initial,
    required TResult Function(AddCustomerModelState data, Customer customer)
        addCustomerSuccess,
    required TResult Function(AddCustomerModelState data, String message)
        addCustomerFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCustomerModelState data)? loading,
    TResult? Function(AddCustomerModelState data)? initial,
    TResult? Function(AddCustomerModelState data, Customer customer)?
        addCustomerSuccess,
    TResult? Function(AddCustomerModelState data, String message)?
        addCustomerFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCustomerModelState data)? loading,
    TResult Function(AddCustomerModelState data)? initial,
    TResult Function(AddCustomerModelState data, Customer customer)?
        addCustomerSuccess,
    TResult Function(AddCustomerModelState data, String message)?
        addCustomerFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddCustomerSuccess value) addCustomerSuccess,
    required TResult Function(_AddCustomerFailed value) addCustomerFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddCustomerSuccess value)? addCustomerSuccess,
    TResult? Function(_AddCustomerFailed value)? addCustomerFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_AddCustomerSuccess value)? addCustomerSuccess,
    TResult Function(_AddCustomerFailed value)? addCustomerFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddCustomerStateCopyWith<AddCustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCustomerStateCopyWith<$Res> {
  factory $AddCustomerStateCopyWith(
          AddCustomerState value, $Res Function(AddCustomerState) then) =
      _$AddCustomerStateCopyWithImpl<$Res, AddCustomerState>;
  @useResult
  $Res call({AddCustomerModelState data});

  $AddCustomerModelStateCopyWith<$Res> get data;
}

/// @nodoc
class _$AddCustomerStateCopyWithImpl<$Res, $Val extends AddCustomerState>
    implements $AddCustomerStateCopyWith<$Res> {
  _$AddCustomerStateCopyWithImpl(this._value, this._then);

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
              as AddCustomerModelState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddCustomerModelStateCopyWith<$Res> get data {
    return $AddCustomerModelStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $AddCustomerStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddCustomerModelState data});

  @override
  $AddCustomerModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AddCustomerStateCopyWithImpl<$Res, _$_Loading>
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
              as AddCustomerModelState,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({required this.data});

  @override
  final AddCustomerModelState data;

  @override
  String toString() {
    return 'AddCustomerState.loading(data: $data)';
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
    required TResult Function(AddCustomerModelState data) loading,
    required TResult Function(AddCustomerModelState data) initial,
    required TResult Function(AddCustomerModelState data, Customer customer)
        addCustomerSuccess,
    required TResult Function(AddCustomerModelState data, String message)
        addCustomerFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCustomerModelState data)? loading,
    TResult? Function(AddCustomerModelState data)? initial,
    TResult? Function(AddCustomerModelState data, Customer customer)?
        addCustomerSuccess,
    TResult? Function(AddCustomerModelState data, String message)?
        addCustomerFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCustomerModelState data)? loading,
    TResult Function(AddCustomerModelState data)? initial,
    TResult Function(AddCustomerModelState data, Customer customer)?
        addCustomerSuccess,
    TResult Function(AddCustomerModelState data, String message)?
        addCustomerFailed,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddCustomerSuccess value) addCustomerSuccess,
    required TResult Function(_AddCustomerFailed value) addCustomerFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddCustomerSuccess value)? addCustomerSuccess,
    TResult? Function(_AddCustomerFailed value)? addCustomerFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_AddCustomerSuccess value)? addCustomerSuccess,
    TResult Function(_AddCustomerFailed value)? addCustomerFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AddCustomerState {
  const factory _Loading({required final AddCustomerModelState data}) =
      _$_Loading;

  @override
  AddCustomerModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $AddCustomerStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddCustomerModelState data});

  @override
  $AddCustomerModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AddCustomerStateCopyWithImpl<$Res, _$_Initial>
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
              as AddCustomerModelState,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.data});

  @override
  final AddCustomerModelState data;

  @override
  String toString() {
    return 'AddCustomerState.initial(data: $data)';
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
    required TResult Function(AddCustomerModelState data) loading,
    required TResult Function(AddCustomerModelState data) initial,
    required TResult Function(AddCustomerModelState data, Customer customer)
        addCustomerSuccess,
    required TResult Function(AddCustomerModelState data, String message)
        addCustomerFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCustomerModelState data)? loading,
    TResult? Function(AddCustomerModelState data)? initial,
    TResult? Function(AddCustomerModelState data, Customer customer)?
        addCustomerSuccess,
    TResult? Function(AddCustomerModelState data, String message)?
        addCustomerFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCustomerModelState data)? loading,
    TResult Function(AddCustomerModelState data)? initial,
    TResult Function(AddCustomerModelState data, Customer customer)?
        addCustomerSuccess,
    TResult Function(AddCustomerModelState data, String message)?
        addCustomerFailed,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddCustomerSuccess value) addCustomerSuccess,
    required TResult Function(_AddCustomerFailed value) addCustomerFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddCustomerSuccess value)? addCustomerSuccess,
    TResult? Function(_AddCustomerFailed value)? addCustomerFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_AddCustomerSuccess value)? addCustomerSuccess,
    TResult Function(_AddCustomerFailed value)? addCustomerFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddCustomerState {
  const factory _Initial({required final AddCustomerModelState data}) =
      _$_Initial;

  @override
  AddCustomerModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddCustomerSuccessCopyWith<$Res>
    implements $AddCustomerStateCopyWith<$Res> {
  factory _$$_AddCustomerSuccessCopyWith(_$_AddCustomerSuccess value,
          $Res Function(_$_AddCustomerSuccess) then) =
      __$$_AddCustomerSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddCustomerModelState data, Customer customer});

  @override
  $AddCustomerModelStateCopyWith<$Res> get data;
  $CustomerCopyWith<$Res> get customer;
}

/// @nodoc
class __$$_AddCustomerSuccessCopyWithImpl<$Res>
    extends _$AddCustomerStateCopyWithImpl<$Res, _$_AddCustomerSuccess>
    implements _$$_AddCustomerSuccessCopyWith<$Res> {
  __$$_AddCustomerSuccessCopyWithImpl(
      _$_AddCustomerSuccess _value, $Res Function(_$_AddCustomerSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? customer = null,
  }) {
    return _then(_$_AddCustomerSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddCustomerModelState,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res> get customer {
    return $CustomerCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value));
    });
  }
}

/// @nodoc

class _$_AddCustomerSuccess implements _AddCustomerSuccess {
  const _$_AddCustomerSuccess({required this.data, required this.customer});

  @override
  final AddCustomerModelState data;
  @override
  final Customer customer;

  @override
  String toString() {
    return 'AddCustomerState.addCustomerSuccess(data: $data, customer: $customer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCustomerSuccess &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, customer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCustomerSuccessCopyWith<_$_AddCustomerSuccess> get copyWith =>
      __$$_AddCustomerSuccessCopyWithImpl<_$_AddCustomerSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddCustomerModelState data) loading,
    required TResult Function(AddCustomerModelState data) initial,
    required TResult Function(AddCustomerModelState data, Customer customer)
        addCustomerSuccess,
    required TResult Function(AddCustomerModelState data, String message)
        addCustomerFailed,
  }) {
    return addCustomerSuccess(data, customer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCustomerModelState data)? loading,
    TResult? Function(AddCustomerModelState data)? initial,
    TResult? Function(AddCustomerModelState data, Customer customer)?
        addCustomerSuccess,
    TResult? Function(AddCustomerModelState data, String message)?
        addCustomerFailed,
  }) {
    return addCustomerSuccess?.call(data, customer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCustomerModelState data)? loading,
    TResult Function(AddCustomerModelState data)? initial,
    TResult Function(AddCustomerModelState data, Customer customer)?
        addCustomerSuccess,
    TResult Function(AddCustomerModelState data, String message)?
        addCustomerFailed,
    required TResult orElse(),
  }) {
    if (addCustomerSuccess != null) {
      return addCustomerSuccess(data, customer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddCustomerSuccess value) addCustomerSuccess,
    required TResult Function(_AddCustomerFailed value) addCustomerFailed,
  }) {
    return addCustomerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddCustomerSuccess value)? addCustomerSuccess,
    TResult? Function(_AddCustomerFailed value)? addCustomerFailed,
  }) {
    return addCustomerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_AddCustomerSuccess value)? addCustomerSuccess,
    TResult Function(_AddCustomerFailed value)? addCustomerFailed,
    required TResult orElse(),
  }) {
    if (addCustomerSuccess != null) {
      return addCustomerSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddCustomerSuccess implements AddCustomerState {
  const factory _AddCustomerSuccess(
      {required final AddCustomerModelState data,
      required final Customer customer}) = _$_AddCustomerSuccess;

  @override
  AddCustomerModelState get data;
  Customer get customer;
  @override
  @JsonKey(ignore: true)
  _$$_AddCustomerSuccessCopyWith<_$_AddCustomerSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddCustomerFailedCopyWith<$Res>
    implements $AddCustomerStateCopyWith<$Res> {
  factory _$$_AddCustomerFailedCopyWith(_$_AddCustomerFailed value,
          $Res Function(_$_AddCustomerFailed) then) =
      __$$_AddCustomerFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddCustomerModelState data, String message});

  @override
  $AddCustomerModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_AddCustomerFailedCopyWithImpl<$Res>
    extends _$AddCustomerStateCopyWithImpl<$Res, _$_AddCustomerFailed>
    implements _$$_AddCustomerFailedCopyWith<$Res> {
  __$$_AddCustomerFailedCopyWithImpl(
      _$_AddCustomerFailed _value, $Res Function(_$_AddCustomerFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_AddCustomerFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddCustomerModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddCustomerFailed implements _AddCustomerFailed {
  const _$_AddCustomerFailed({required this.data, required this.message});

  @override
  final AddCustomerModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'AddCustomerState.addCustomerFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCustomerFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCustomerFailedCopyWith<_$_AddCustomerFailed> get copyWith =>
      __$$_AddCustomerFailedCopyWithImpl<_$_AddCustomerFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddCustomerModelState data) loading,
    required TResult Function(AddCustomerModelState data) initial,
    required TResult Function(AddCustomerModelState data, Customer customer)
        addCustomerSuccess,
    required TResult Function(AddCustomerModelState data, String message)
        addCustomerFailed,
  }) {
    return addCustomerFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCustomerModelState data)? loading,
    TResult? Function(AddCustomerModelState data)? initial,
    TResult? Function(AddCustomerModelState data, Customer customer)?
        addCustomerSuccess,
    TResult? Function(AddCustomerModelState data, String message)?
        addCustomerFailed,
  }) {
    return addCustomerFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCustomerModelState data)? loading,
    TResult Function(AddCustomerModelState data)? initial,
    TResult Function(AddCustomerModelState data, Customer customer)?
        addCustomerSuccess,
    TResult Function(AddCustomerModelState data, String message)?
        addCustomerFailed,
    required TResult orElse(),
  }) {
    if (addCustomerFailed != null) {
      return addCustomerFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddCustomerSuccess value) addCustomerSuccess,
    required TResult Function(_AddCustomerFailed value) addCustomerFailed,
  }) {
    return addCustomerFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddCustomerSuccess value)? addCustomerSuccess,
    TResult? Function(_AddCustomerFailed value)? addCustomerFailed,
  }) {
    return addCustomerFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_AddCustomerSuccess value)? addCustomerSuccess,
    TResult Function(_AddCustomerFailed value)? addCustomerFailed,
    required TResult orElse(),
  }) {
    if (addCustomerFailed != null) {
      return addCustomerFailed(this);
    }
    return orElse();
  }
}

abstract class _AddCustomerFailed implements AddCustomerState {
  const factory _AddCustomerFailed(
      {required final AddCustomerModelState data,
      required final String message}) = _$_AddCustomerFailed;

  @override
  AddCustomerModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_AddCustomerFailedCopyWith<_$_AddCustomerFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
