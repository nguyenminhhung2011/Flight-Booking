// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() customerDetail,
    required TResult Function() searchCustomer,
    required TResult Function() getCustomers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? customerDetail,
    TResult? Function()? searchCustomer,
    TResult? Function()? getCustomers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? customerDetail,
    TResult Function()? searchCustomer,
    TResult Function()? getCustomers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CustomerDetail value) customerDetail,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_GetCustomers value) getCustomers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CustomerDetail value)? customerDetail,
    TResult? Function(_SearchCustomer value)? searchCustomer,
    TResult? Function(_GetCustomers value)? getCustomers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CustomerDetail value)? customerDetail,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_GetCustomers value)? getCustomers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerEventCopyWith<$Res> {
  factory $CustomerEventCopyWith(
          CustomerEvent value, $Res Function(CustomerEvent) then) =
      _$CustomerEventCopyWithImpl<$Res, CustomerEvent>;
}

/// @nodoc
class _$CustomerEventCopyWithImpl<$Res, $Val extends CustomerEvent>
    implements $CustomerEventCopyWith<$Res> {
  _$CustomerEventCopyWithImpl(this._value, this._then);

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
    extends _$CustomerEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CustomerEvent.started()';
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
    required TResult Function() customerDetail,
    required TResult Function() searchCustomer,
    required TResult Function() getCustomers,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? customerDetail,
    TResult? Function()? searchCustomer,
    TResult? Function()? getCustomers,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? customerDetail,
    TResult Function()? searchCustomer,
    TResult Function()? getCustomers,
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
    required TResult Function(_CustomerDetail value) customerDetail,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_GetCustomers value) getCustomers,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CustomerDetail value)? customerDetail,
    TResult? Function(_SearchCustomer value)? searchCustomer,
    TResult? Function(_GetCustomers value)? getCustomers,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CustomerDetail value)? customerDetail,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_GetCustomers value)? getCustomers,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CustomerEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_CustomerDetailCopyWith<$Res> {
  factory _$$_CustomerDetailCopyWith(
          _$_CustomerDetail value, $Res Function(_$_CustomerDetail) then) =
      __$$_CustomerDetailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CustomerDetailCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$_CustomerDetail>
    implements _$$_CustomerDetailCopyWith<$Res> {
  __$$_CustomerDetailCopyWithImpl(
      _$_CustomerDetail _value, $Res Function(_$_CustomerDetail) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CustomerDetail implements _CustomerDetail {
  const _$_CustomerDetail();

  @override
  String toString() {
    return 'CustomerEvent.customerDetail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CustomerDetail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() customerDetail,
    required TResult Function() searchCustomer,
    required TResult Function() getCustomers,
  }) {
    return customerDetail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? customerDetail,
    TResult? Function()? searchCustomer,
    TResult? Function()? getCustomers,
  }) {
    return customerDetail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? customerDetail,
    TResult Function()? searchCustomer,
    TResult Function()? getCustomers,
    required TResult orElse(),
  }) {
    if (customerDetail != null) {
      return customerDetail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CustomerDetail value) customerDetail,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_GetCustomers value) getCustomers,
  }) {
    return customerDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CustomerDetail value)? customerDetail,
    TResult? Function(_SearchCustomer value)? searchCustomer,
    TResult? Function(_GetCustomers value)? getCustomers,
  }) {
    return customerDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CustomerDetail value)? customerDetail,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_GetCustomers value)? getCustomers,
    required TResult orElse(),
  }) {
    if (customerDetail != null) {
      return customerDetail(this);
    }
    return orElse();
  }
}

abstract class _CustomerDetail implements CustomerEvent {
  const factory _CustomerDetail() = _$_CustomerDetail;
}

/// @nodoc
abstract class _$$_SearchCustomerCopyWith<$Res> {
  factory _$$_SearchCustomerCopyWith(
          _$_SearchCustomer value, $Res Function(_$_SearchCustomer) then) =
      __$$_SearchCustomerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchCustomerCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$_SearchCustomer>
    implements _$$_SearchCustomerCopyWith<$Res> {
  __$$_SearchCustomerCopyWithImpl(
      _$_SearchCustomer _value, $Res Function(_$_SearchCustomer) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchCustomer implements _SearchCustomer {
  const _$_SearchCustomer();

  @override
  String toString() {
    return 'CustomerEvent.searchCustomer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchCustomer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() customerDetail,
    required TResult Function() searchCustomer,
    required TResult Function() getCustomers,
  }) {
    return searchCustomer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? customerDetail,
    TResult? Function()? searchCustomer,
    TResult? Function()? getCustomers,
  }) {
    return searchCustomer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? customerDetail,
    TResult Function()? searchCustomer,
    TResult Function()? getCustomers,
    required TResult orElse(),
  }) {
    if (searchCustomer != null) {
      return searchCustomer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CustomerDetail value) customerDetail,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_GetCustomers value) getCustomers,
  }) {
    return searchCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CustomerDetail value)? customerDetail,
    TResult? Function(_SearchCustomer value)? searchCustomer,
    TResult? Function(_GetCustomers value)? getCustomers,
  }) {
    return searchCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CustomerDetail value)? customerDetail,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_GetCustomers value)? getCustomers,
    required TResult orElse(),
  }) {
    if (searchCustomer != null) {
      return searchCustomer(this);
    }
    return orElse();
  }
}

abstract class _SearchCustomer implements CustomerEvent {
  const factory _SearchCustomer() = _$_SearchCustomer;
}

/// @nodoc
abstract class _$$_GetCustomersCopyWith<$Res> {
  factory _$$_GetCustomersCopyWith(
          _$_GetCustomers value, $Res Function(_$_GetCustomers) then) =
      __$$_GetCustomersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCustomersCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$_GetCustomers>
    implements _$$_GetCustomersCopyWith<$Res> {
  __$$_GetCustomersCopyWithImpl(
      _$_GetCustomers _value, $Res Function(_$_GetCustomers) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetCustomers implements _GetCustomers {
  const _$_GetCustomers();

  @override
  String toString() {
    return 'CustomerEvent.getCustomers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetCustomers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() customerDetail,
    required TResult Function() searchCustomer,
    required TResult Function() getCustomers,
  }) {
    return getCustomers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? customerDetail,
    TResult? Function()? searchCustomer,
    TResult? Function()? getCustomers,
  }) {
    return getCustomers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? customerDetail,
    TResult Function()? searchCustomer,
    TResult Function()? getCustomers,
    required TResult orElse(),
  }) {
    if (getCustomers != null) {
      return getCustomers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CustomerDetail value) customerDetail,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_GetCustomers value) getCustomers,
  }) {
    return getCustomers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CustomerDetail value)? customerDetail,
    TResult? Function(_SearchCustomer value)? searchCustomer,
    TResult? Function(_GetCustomers value)? getCustomers,
  }) {
    return getCustomers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CustomerDetail value)? customerDetail,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_GetCustomers value)? getCustomers,
    required TResult orElse(),
  }) {
    if (getCustomers != null) {
      return getCustomers(this);
    }
    return orElse();
  }
}

abstract class _GetCustomers implements CustomerEvent {
  const factory _GetCustomers() = _$_GetCustomers;
}

/// @nodoc
mixin _$CustomerState {
  CustomerModelState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerModelState data) initial,
    required TResult Function(CustomerModelState data) loading,
    required TResult Function(CustomerModelState data) getCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        getCustomerFailed,
    required TResult Function(CustomerModelState data, String id)
        selectCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        selectCustomerFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerModelState data)? initial,
    TResult? Function(CustomerModelState data)? loading,
    TResult? Function(CustomerModelState data)? getCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        getCustomerFailed,
    TResult? Function(CustomerModelState data, String id)?
        selectCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        selectCustomerFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerModelState data)? initial,
    TResult Function(CustomerModelState data)? loading,
    TResult Function(CustomerModelState data)? getCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        getCustomerFailed,
    TResult Function(CustomerModelState data, String id)? selectCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetCustomerSuccess value) getCustomerSuccess,
    required TResult Function(_GetCustomerFailed value) getCustomerFailed,
    required TResult Function(_SelectCustomerSuccess value)
        selectCustomerSuccess,
    required TResult Function(_SelectCustomerFailed value) selectCustomerFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCustomerSuccess value)? getCustomerSuccess,
    TResult? Function(_GetCustomerFailed value)? getCustomerFailed,
    TResult? Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult? Function(_SelectCustomerFailed value)? selectCustomerFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCustomerSuccess value)? getCustomerSuccess,
    TResult Function(_GetCustomerFailed value)? getCustomerFailed,
    TResult Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult Function(_SelectCustomerFailed value)? selectCustomerFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerStateCopyWith<CustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerStateCopyWith<$Res> {
  factory $CustomerStateCopyWith(
          CustomerState value, $Res Function(CustomerState) then) =
      _$CustomerStateCopyWithImpl<$Res, CustomerState>;
  @useResult
  $Res call({CustomerModelState data});

  $CustomerModelStateCopyWith<$Res> get data;
}

/// @nodoc
class _$CustomerStateCopyWithImpl<$Res, $Val extends CustomerState>
    implements $CustomerStateCopyWith<$Res> {
  _$CustomerStateCopyWithImpl(this._value, this._then);

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
              as CustomerModelState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerModelStateCopyWith<$Res> get data {
    return $CustomerModelStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerModelState data});

  @override
  $CustomerModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_Initial>
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
              as CustomerModelState,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final CustomerModelState data;

  @override
  String toString() {
    return 'CustomerState.initial(data: $data)';
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
    required TResult Function(CustomerModelState data) initial,
    required TResult Function(CustomerModelState data) loading,
    required TResult Function(CustomerModelState data) getCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        getCustomerFailed,
    required TResult Function(CustomerModelState data, String id)
        selectCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        selectCustomerFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerModelState data)? initial,
    TResult? Function(CustomerModelState data)? loading,
    TResult? Function(CustomerModelState data)? getCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        getCustomerFailed,
    TResult? Function(CustomerModelState data, String id)?
        selectCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        selectCustomerFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerModelState data)? initial,
    TResult Function(CustomerModelState data)? loading,
    TResult Function(CustomerModelState data)? getCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        getCustomerFailed,
    TResult Function(CustomerModelState data, String id)? selectCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        selectCustomerFailed,
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
    required TResult Function(_GetCustomerSuccess value) getCustomerSuccess,
    required TResult Function(_GetCustomerFailed value) getCustomerFailed,
    required TResult Function(_SelectCustomerSuccess value)
        selectCustomerSuccess,
    required TResult Function(_SelectCustomerFailed value) selectCustomerFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCustomerSuccess value)? getCustomerSuccess,
    TResult? Function(_GetCustomerFailed value)? getCustomerFailed,
    TResult? Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult? Function(_SelectCustomerFailed value)? selectCustomerFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCustomerSuccess value)? getCustomerSuccess,
    TResult Function(_GetCustomerFailed value)? getCustomerFailed,
    TResult Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult Function(_SelectCustomerFailed value)? selectCustomerFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends CustomerState {
  const factory _Initial({required final CustomerModelState data}) = _$_Initial;
  const _Initial._() : super._();

  @override
  CustomerModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerModelState data});

  @override
  $CustomerModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_Loading>
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
              as CustomerModelState,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final CustomerModelState data;

  @override
  String toString() {
    return 'CustomerState.loading(data: $data)';
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
    required TResult Function(CustomerModelState data) initial,
    required TResult Function(CustomerModelState data) loading,
    required TResult Function(CustomerModelState data) getCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        getCustomerFailed,
    required TResult Function(CustomerModelState data, String id)
        selectCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        selectCustomerFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerModelState data)? initial,
    TResult? Function(CustomerModelState data)? loading,
    TResult? Function(CustomerModelState data)? getCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        getCustomerFailed,
    TResult? Function(CustomerModelState data, String id)?
        selectCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        selectCustomerFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerModelState data)? initial,
    TResult Function(CustomerModelState data)? loading,
    TResult Function(CustomerModelState data)? getCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        getCustomerFailed,
    TResult Function(CustomerModelState data, String id)? selectCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        selectCustomerFailed,
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
    required TResult Function(_GetCustomerSuccess value) getCustomerSuccess,
    required TResult Function(_GetCustomerFailed value) getCustomerFailed,
    required TResult Function(_SelectCustomerSuccess value)
        selectCustomerSuccess,
    required TResult Function(_SelectCustomerFailed value) selectCustomerFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCustomerSuccess value)? getCustomerSuccess,
    TResult? Function(_GetCustomerFailed value)? getCustomerFailed,
    TResult? Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult? Function(_SelectCustomerFailed value)? selectCustomerFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCustomerSuccess value)? getCustomerSuccess,
    TResult Function(_GetCustomerFailed value)? getCustomerFailed,
    TResult Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult Function(_SelectCustomerFailed value)? selectCustomerFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends CustomerState {
  const factory _Loading({required final CustomerModelState data}) = _$_Loading;
  const _Loading._() : super._();

  @override
  CustomerModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCustomerSuccessCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$_GetCustomerSuccessCopyWith(_$_GetCustomerSuccess value,
          $Res Function(_$_GetCustomerSuccess) then) =
      __$$_GetCustomerSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerModelState data});

  @override
  $CustomerModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetCustomerSuccessCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_GetCustomerSuccess>
    implements _$$_GetCustomerSuccessCopyWith<$Res> {
  __$$_GetCustomerSuccessCopyWithImpl(
      _$_GetCustomerSuccess _value, $Res Function(_$_GetCustomerSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetCustomerSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerModelState,
    ));
  }
}

/// @nodoc

class _$_GetCustomerSuccess extends _GetCustomerSuccess {
  const _$_GetCustomerSuccess({required this.data}) : super._();

  @override
  final CustomerModelState data;

  @override
  String toString() {
    return 'CustomerState.getCustomerSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCustomerSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCustomerSuccessCopyWith<_$_GetCustomerSuccess> get copyWith =>
      __$$_GetCustomerSuccessCopyWithImpl<_$_GetCustomerSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerModelState data) initial,
    required TResult Function(CustomerModelState data) loading,
    required TResult Function(CustomerModelState data) getCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        getCustomerFailed,
    required TResult Function(CustomerModelState data, String id)
        selectCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        selectCustomerFailed,
  }) {
    return getCustomerSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerModelState data)? initial,
    TResult? Function(CustomerModelState data)? loading,
    TResult? Function(CustomerModelState data)? getCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        getCustomerFailed,
    TResult? Function(CustomerModelState data, String id)?
        selectCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        selectCustomerFailed,
  }) {
    return getCustomerSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerModelState data)? initial,
    TResult Function(CustomerModelState data)? loading,
    TResult Function(CustomerModelState data)? getCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        getCustomerFailed,
    TResult Function(CustomerModelState data, String id)? selectCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    required TResult orElse(),
  }) {
    if (getCustomerSuccess != null) {
      return getCustomerSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetCustomerSuccess value) getCustomerSuccess,
    required TResult Function(_GetCustomerFailed value) getCustomerFailed,
    required TResult Function(_SelectCustomerSuccess value)
        selectCustomerSuccess,
    required TResult Function(_SelectCustomerFailed value) selectCustomerFailed,
  }) {
    return getCustomerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCustomerSuccess value)? getCustomerSuccess,
    TResult? Function(_GetCustomerFailed value)? getCustomerFailed,
    TResult? Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult? Function(_SelectCustomerFailed value)? selectCustomerFailed,
  }) {
    return getCustomerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCustomerSuccess value)? getCustomerSuccess,
    TResult Function(_GetCustomerFailed value)? getCustomerFailed,
    TResult Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult Function(_SelectCustomerFailed value)? selectCustomerFailed,
    required TResult orElse(),
  }) {
    if (getCustomerSuccess != null) {
      return getCustomerSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetCustomerSuccess extends CustomerState {
  const factory _GetCustomerSuccess({required final CustomerModelState data}) =
      _$_GetCustomerSuccess;
  const _GetCustomerSuccess._() : super._();

  @override
  CustomerModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetCustomerSuccessCopyWith<_$_GetCustomerSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCustomerFailedCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$_GetCustomerFailedCopyWith(_$_GetCustomerFailed value,
          $Res Function(_$_GetCustomerFailed) then) =
      __$$_GetCustomerFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerModelState data, String message});

  @override
  $CustomerModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetCustomerFailedCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_GetCustomerFailed>
    implements _$$_GetCustomerFailedCopyWith<$Res> {
  __$$_GetCustomerFailedCopyWithImpl(
      _$_GetCustomerFailed _value, $Res Function(_$_GetCustomerFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetCustomerFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetCustomerFailed extends _GetCustomerFailed {
  const _$_GetCustomerFailed({required this.data, required this.message})
      : super._();

  @override
  final CustomerModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'CustomerState.getCustomerFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCustomerFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCustomerFailedCopyWith<_$_GetCustomerFailed> get copyWith =>
      __$$_GetCustomerFailedCopyWithImpl<_$_GetCustomerFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerModelState data) initial,
    required TResult Function(CustomerModelState data) loading,
    required TResult Function(CustomerModelState data) getCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        getCustomerFailed,
    required TResult Function(CustomerModelState data, String id)
        selectCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        selectCustomerFailed,
  }) {
    return getCustomerFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerModelState data)? initial,
    TResult? Function(CustomerModelState data)? loading,
    TResult? Function(CustomerModelState data)? getCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        getCustomerFailed,
    TResult? Function(CustomerModelState data, String id)?
        selectCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        selectCustomerFailed,
  }) {
    return getCustomerFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerModelState data)? initial,
    TResult Function(CustomerModelState data)? loading,
    TResult Function(CustomerModelState data)? getCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        getCustomerFailed,
    TResult Function(CustomerModelState data, String id)? selectCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    required TResult orElse(),
  }) {
    if (getCustomerFailed != null) {
      return getCustomerFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetCustomerSuccess value) getCustomerSuccess,
    required TResult Function(_GetCustomerFailed value) getCustomerFailed,
    required TResult Function(_SelectCustomerSuccess value)
        selectCustomerSuccess,
    required TResult Function(_SelectCustomerFailed value) selectCustomerFailed,
  }) {
    return getCustomerFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCustomerSuccess value)? getCustomerSuccess,
    TResult? Function(_GetCustomerFailed value)? getCustomerFailed,
    TResult? Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult? Function(_SelectCustomerFailed value)? selectCustomerFailed,
  }) {
    return getCustomerFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCustomerSuccess value)? getCustomerSuccess,
    TResult Function(_GetCustomerFailed value)? getCustomerFailed,
    TResult Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult Function(_SelectCustomerFailed value)? selectCustomerFailed,
    required TResult orElse(),
  }) {
    if (getCustomerFailed != null) {
      return getCustomerFailed(this);
    }
    return orElse();
  }
}

abstract class _GetCustomerFailed extends CustomerState {
  const factory _GetCustomerFailed(
      {required final CustomerModelState data,
      required final String message}) = _$_GetCustomerFailed;
  const _GetCustomerFailed._() : super._();

  @override
  CustomerModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetCustomerFailedCopyWith<_$_GetCustomerFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectCustomerSuccessCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$_SelectCustomerSuccessCopyWith(_$_SelectCustomerSuccess value,
          $Res Function(_$_SelectCustomerSuccess) then) =
      __$$_SelectCustomerSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerModelState data, String id});

  @override
  $CustomerModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SelectCustomerSuccessCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_SelectCustomerSuccess>
    implements _$$_SelectCustomerSuccessCopyWith<$Res> {
  __$$_SelectCustomerSuccessCopyWithImpl(_$_SelectCustomerSuccess _value,
      $Res Function(_$_SelectCustomerSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? id = null,
  }) {
    return _then(_$_SelectCustomerSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerModelState,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectCustomerSuccess extends _SelectCustomerSuccess {
  const _$_SelectCustomerSuccess({required this.data, required this.id})
      : super._();

  @override
  final CustomerModelState data;
  @override
  final String id;

  @override
  String toString() {
    return 'CustomerState.selectCustomerSuccess(data: $data, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectCustomerSuccess &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectCustomerSuccessCopyWith<_$_SelectCustomerSuccess> get copyWith =>
      __$$_SelectCustomerSuccessCopyWithImpl<_$_SelectCustomerSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerModelState data) initial,
    required TResult Function(CustomerModelState data) loading,
    required TResult Function(CustomerModelState data) getCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        getCustomerFailed,
    required TResult Function(CustomerModelState data, String id)
        selectCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        selectCustomerFailed,
  }) {
    return selectCustomerSuccess(data, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerModelState data)? initial,
    TResult? Function(CustomerModelState data)? loading,
    TResult? Function(CustomerModelState data)? getCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        getCustomerFailed,
    TResult? Function(CustomerModelState data, String id)?
        selectCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        selectCustomerFailed,
  }) {
    return selectCustomerSuccess?.call(data, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerModelState data)? initial,
    TResult Function(CustomerModelState data)? loading,
    TResult Function(CustomerModelState data)? getCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        getCustomerFailed,
    TResult Function(CustomerModelState data, String id)? selectCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    required TResult orElse(),
  }) {
    if (selectCustomerSuccess != null) {
      return selectCustomerSuccess(data, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetCustomerSuccess value) getCustomerSuccess,
    required TResult Function(_GetCustomerFailed value) getCustomerFailed,
    required TResult Function(_SelectCustomerSuccess value)
        selectCustomerSuccess,
    required TResult Function(_SelectCustomerFailed value) selectCustomerFailed,
  }) {
    return selectCustomerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCustomerSuccess value)? getCustomerSuccess,
    TResult? Function(_GetCustomerFailed value)? getCustomerFailed,
    TResult? Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult? Function(_SelectCustomerFailed value)? selectCustomerFailed,
  }) {
    return selectCustomerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCustomerSuccess value)? getCustomerSuccess,
    TResult Function(_GetCustomerFailed value)? getCustomerFailed,
    TResult Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult Function(_SelectCustomerFailed value)? selectCustomerFailed,
    required TResult orElse(),
  }) {
    if (selectCustomerSuccess != null) {
      return selectCustomerSuccess(this);
    }
    return orElse();
  }
}

abstract class _SelectCustomerSuccess extends CustomerState {
  const factory _SelectCustomerSuccess(
      {required final CustomerModelState data,
      required final String id}) = _$_SelectCustomerSuccess;
  const _SelectCustomerSuccess._() : super._();

  @override
  CustomerModelState get data;
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_SelectCustomerSuccessCopyWith<_$_SelectCustomerSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectCustomerFailedCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$_SelectCustomerFailedCopyWith(_$_SelectCustomerFailed value,
          $Res Function(_$_SelectCustomerFailed) then) =
      __$$_SelectCustomerFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerModelState data, String message});

  @override
  $CustomerModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SelectCustomerFailedCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_SelectCustomerFailed>
    implements _$$_SelectCustomerFailedCopyWith<$Res> {
  __$$_SelectCustomerFailedCopyWithImpl(_$_SelectCustomerFailed _value,
      $Res Function(_$_SelectCustomerFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_SelectCustomerFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectCustomerFailed extends _SelectCustomerFailed {
  const _$_SelectCustomerFailed({required this.data, required this.message})
      : super._();

  @override
  final CustomerModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'CustomerState.selectCustomerFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectCustomerFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectCustomerFailedCopyWith<_$_SelectCustomerFailed> get copyWith =>
      __$$_SelectCustomerFailedCopyWithImpl<_$_SelectCustomerFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerModelState data) initial,
    required TResult Function(CustomerModelState data) loading,
    required TResult Function(CustomerModelState data) getCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        getCustomerFailed,
    required TResult Function(CustomerModelState data, String id)
        selectCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        selectCustomerFailed,
  }) {
    return selectCustomerFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerModelState data)? initial,
    TResult? Function(CustomerModelState data)? loading,
    TResult? Function(CustomerModelState data)? getCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        getCustomerFailed,
    TResult? Function(CustomerModelState data, String id)?
        selectCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        selectCustomerFailed,
  }) {
    return selectCustomerFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerModelState data)? initial,
    TResult Function(CustomerModelState data)? loading,
    TResult Function(CustomerModelState data)? getCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        getCustomerFailed,
    TResult Function(CustomerModelState data, String id)? selectCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    required TResult orElse(),
  }) {
    if (selectCustomerFailed != null) {
      return selectCustomerFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetCustomerSuccess value) getCustomerSuccess,
    required TResult Function(_GetCustomerFailed value) getCustomerFailed,
    required TResult Function(_SelectCustomerSuccess value)
        selectCustomerSuccess,
    required TResult Function(_SelectCustomerFailed value) selectCustomerFailed,
  }) {
    return selectCustomerFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCustomerSuccess value)? getCustomerSuccess,
    TResult? Function(_GetCustomerFailed value)? getCustomerFailed,
    TResult? Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult? Function(_SelectCustomerFailed value)? selectCustomerFailed,
  }) {
    return selectCustomerFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCustomerSuccess value)? getCustomerSuccess,
    TResult Function(_GetCustomerFailed value)? getCustomerFailed,
    TResult Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult Function(_SelectCustomerFailed value)? selectCustomerFailed,
    required TResult orElse(),
  }) {
    if (selectCustomerFailed != null) {
      return selectCustomerFailed(this);
    }
    return orElse();
  }
}

abstract class _SelectCustomerFailed extends CustomerState {
  const factory _SelectCustomerFailed(
      {required final CustomerModelState data,
      required final String message}) = _$_SelectCustomerFailed;
  const _SelectCustomerFailed._() : super._();

  @override
  CustomerModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_SelectCustomerFailedCopyWith<_$_SelectCustomerFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
