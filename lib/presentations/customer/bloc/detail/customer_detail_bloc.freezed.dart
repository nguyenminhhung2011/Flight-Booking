// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCustomerById,
    required TResult Function() getPaymentItemsByCustomerId,
    required TResult Function(int paymentId) selectedPayment,
    required TResult Function(int id) getTicInformationByFlightId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCustomerById,
    TResult? Function()? getPaymentItemsByCustomerId,
    TResult? Function(int paymentId)? selectedPayment,
    TResult? Function(int id)? getTicInformationByFlightId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCustomerById,
    TResult Function()? getPaymentItemsByCustomerId,
    TResult Function(int paymentId)? selectedPayment,
    TResult Function(int id)? getTicInformationByFlightId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCustomerById value) getCustomerById,
    required TResult Function(_GetPaymentItemsByCustomerId value)
        getPaymentItemsByCustomerId,
    required TResult Function(_SelectedPayment value) selectedPayment,
    required TResult Function(_GetTicInformationByFlightId value)
        getTicInformationByFlightId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCustomerById value)? getCustomerById,
    TResult? Function(_GetPaymentItemsByCustomerId value)?
        getPaymentItemsByCustomerId,
    TResult? Function(_SelectedPayment value)? selectedPayment,
    TResult? Function(_GetTicInformationByFlightId value)?
        getTicInformationByFlightId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCustomerById value)? getCustomerById,
    TResult Function(_GetPaymentItemsByCustomerId value)?
        getPaymentItemsByCustomerId,
    TResult Function(_SelectedPayment value)? selectedPayment,
    TResult Function(_GetTicInformationByFlightId value)?
        getTicInformationByFlightId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDetailEventCopyWith<$Res> {
  factory $CustomerDetailEventCopyWith(
          CustomerDetailEvent value, $Res Function(CustomerDetailEvent) then) =
      _$CustomerDetailEventCopyWithImpl<$Res, CustomerDetailEvent>;
}

/// @nodoc
class _$CustomerDetailEventCopyWithImpl<$Res, $Val extends CustomerDetailEvent>
    implements $CustomerDetailEventCopyWith<$Res> {
  _$CustomerDetailEventCopyWithImpl(this._value, this._then);

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
    extends _$CustomerDetailEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CustomerDetailEvent.started()';
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
    required TResult Function() getCustomerById,
    required TResult Function() getPaymentItemsByCustomerId,
    required TResult Function(int paymentId) selectedPayment,
    required TResult Function(int id) getTicInformationByFlightId,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCustomerById,
    TResult? Function()? getPaymentItemsByCustomerId,
    TResult? Function(int paymentId)? selectedPayment,
    TResult? Function(int id)? getTicInformationByFlightId,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCustomerById,
    TResult Function()? getPaymentItemsByCustomerId,
    TResult Function(int paymentId)? selectedPayment,
    TResult Function(int id)? getTicInformationByFlightId,
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
    required TResult Function(_GetCustomerById value) getCustomerById,
    required TResult Function(_GetPaymentItemsByCustomerId value)
        getPaymentItemsByCustomerId,
    required TResult Function(_SelectedPayment value) selectedPayment,
    required TResult Function(_GetTicInformationByFlightId value)
        getTicInformationByFlightId,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCustomerById value)? getCustomerById,
    TResult? Function(_GetPaymentItemsByCustomerId value)?
        getPaymentItemsByCustomerId,
    TResult? Function(_SelectedPayment value)? selectedPayment,
    TResult? Function(_GetTicInformationByFlightId value)?
        getTicInformationByFlightId,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCustomerById value)? getCustomerById,
    TResult Function(_GetPaymentItemsByCustomerId value)?
        getPaymentItemsByCustomerId,
    TResult Function(_SelectedPayment value)? selectedPayment,
    TResult Function(_GetTicInformationByFlightId value)?
        getTicInformationByFlightId,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CustomerDetailEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_GetCustomerByIdCopyWith<$Res> {
  factory _$$_GetCustomerByIdCopyWith(
          _$_GetCustomerById value, $Res Function(_$_GetCustomerById) then) =
      __$$_GetCustomerByIdCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCustomerByIdCopyWithImpl<$Res>
    extends _$CustomerDetailEventCopyWithImpl<$Res, _$_GetCustomerById>
    implements _$$_GetCustomerByIdCopyWith<$Res> {
  __$$_GetCustomerByIdCopyWithImpl(
      _$_GetCustomerById _value, $Res Function(_$_GetCustomerById) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetCustomerById implements _GetCustomerById {
  const _$_GetCustomerById();

  @override
  String toString() {
    return 'CustomerDetailEvent.getCustomerById()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetCustomerById);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCustomerById,
    required TResult Function() getPaymentItemsByCustomerId,
    required TResult Function(int paymentId) selectedPayment,
    required TResult Function(int id) getTicInformationByFlightId,
  }) {
    return getCustomerById();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCustomerById,
    TResult? Function()? getPaymentItemsByCustomerId,
    TResult? Function(int paymentId)? selectedPayment,
    TResult? Function(int id)? getTicInformationByFlightId,
  }) {
    return getCustomerById?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCustomerById,
    TResult Function()? getPaymentItemsByCustomerId,
    TResult Function(int paymentId)? selectedPayment,
    TResult Function(int id)? getTicInformationByFlightId,
    required TResult orElse(),
  }) {
    if (getCustomerById != null) {
      return getCustomerById();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCustomerById value) getCustomerById,
    required TResult Function(_GetPaymentItemsByCustomerId value)
        getPaymentItemsByCustomerId,
    required TResult Function(_SelectedPayment value) selectedPayment,
    required TResult Function(_GetTicInformationByFlightId value)
        getTicInformationByFlightId,
  }) {
    return getCustomerById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCustomerById value)? getCustomerById,
    TResult? Function(_GetPaymentItemsByCustomerId value)?
        getPaymentItemsByCustomerId,
    TResult? Function(_SelectedPayment value)? selectedPayment,
    TResult? Function(_GetTicInformationByFlightId value)?
        getTicInformationByFlightId,
  }) {
    return getCustomerById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCustomerById value)? getCustomerById,
    TResult Function(_GetPaymentItemsByCustomerId value)?
        getPaymentItemsByCustomerId,
    TResult Function(_SelectedPayment value)? selectedPayment,
    TResult Function(_GetTicInformationByFlightId value)?
        getTicInformationByFlightId,
    required TResult orElse(),
  }) {
    if (getCustomerById != null) {
      return getCustomerById(this);
    }
    return orElse();
  }
}

abstract class _GetCustomerById implements CustomerDetailEvent {
  const factory _GetCustomerById() = _$_GetCustomerById;
}

/// @nodoc
abstract class _$$_GetPaymentItemsByCustomerIdCopyWith<$Res> {
  factory _$$_GetPaymentItemsByCustomerIdCopyWith(
          _$_GetPaymentItemsByCustomerId value,
          $Res Function(_$_GetPaymentItemsByCustomerId) then) =
      __$$_GetPaymentItemsByCustomerIdCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetPaymentItemsByCustomerIdCopyWithImpl<$Res>
    extends _$CustomerDetailEventCopyWithImpl<$Res,
        _$_GetPaymentItemsByCustomerId>
    implements _$$_GetPaymentItemsByCustomerIdCopyWith<$Res> {
  __$$_GetPaymentItemsByCustomerIdCopyWithImpl(
      _$_GetPaymentItemsByCustomerId _value,
      $Res Function(_$_GetPaymentItemsByCustomerId) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetPaymentItemsByCustomerId implements _GetPaymentItemsByCustomerId {
  const _$_GetPaymentItemsByCustomerId();

  @override
  String toString() {
    return 'CustomerDetailEvent.getPaymentItemsByCustomerId()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPaymentItemsByCustomerId);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCustomerById,
    required TResult Function() getPaymentItemsByCustomerId,
    required TResult Function(int paymentId) selectedPayment,
    required TResult Function(int id) getTicInformationByFlightId,
  }) {
    return getPaymentItemsByCustomerId();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCustomerById,
    TResult? Function()? getPaymentItemsByCustomerId,
    TResult? Function(int paymentId)? selectedPayment,
    TResult? Function(int id)? getTicInformationByFlightId,
  }) {
    return getPaymentItemsByCustomerId?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCustomerById,
    TResult Function()? getPaymentItemsByCustomerId,
    TResult Function(int paymentId)? selectedPayment,
    TResult Function(int id)? getTicInformationByFlightId,
    required TResult orElse(),
  }) {
    if (getPaymentItemsByCustomerId != null) {
      return getPaymentItemsByCustomerId();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCustomerById value) getCustomerById,
    required TResult Function(_GetPaymentItemsByCustomerId value)
        getPaymentItemsByCustomerId,
    required TResult Function(_SelectedPayment value) selectedPayment,
    required TResult Function(_GetTicInformationByFlightId value)
        getTicInformationByFlightId,
  }) {
    return getPaymentItemsByCustomerId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCustomerById value)? getCustomerById,
    TResult? Function(_GetPaymentItemsByCustomerId value)?
        getPaymentItemsByCustomerId,
    TResult? Function(_SelectedPayment value)? selectedPayment,
    TResult? Function(_GetTicInformationByFlightId value)?
        getTicInformationByFlightId,
  }) {
    return getPaymentItemsByCustomerId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCustomerById value)? getCustomerById,
    TResult Function(_GetPaymentItemsByCustomerId value)?
        getPaymentItemsByCustomerId,
    TResult Function(_SelectedPayment value)? selectedPayment,
    TResult Function(_GetTicInformationByFlightId value)?
        getTicInformationByFlightId,
    required TResult orElse(),
  }) {
    if (getPaymentItemsByCustomerId != null) {
      return getPaymentItemsByCustomerId(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentItemsByCustomerId implements CustomerDetailEvent {
  const factory _GetPaymentItemsByCustomerId() = _$_GetPaymentItemsByCustomerId;
}

/// @nodoc
abstract class _$$_SelectedPaymentCopyWith<$Res> {
  factory _$$_SelectedPaymentCopyWith(
          _$_SelectedPayment value, $Res Function(_$_SelectedPayment) then) =
      __$$_SelectedPaymentCopyWithImpl<$Res>;
  @useResult
  $Res call({int paymentId});
}

/// @nodoc
class __$$_SelectedPaymentCopyWithImpl<$Res>
    extends _$CustomerDetailEventCopyWithImpl<$Res, _$_SelectedPayment>
    implements _$$_SelectedPaymentCopyWith<$Res> {
  __$$_SelectedPaymentCopyWithImpl(
      _$_SelectedPayment _value, $Res Function(_$_SelectedPayment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = null,
  }) {
    return _then(_$_SelectedPayment(
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectedPayment implements _SelectedPayment {
  const _$_SelectedPayment({required this.paymentId});

  @override
  final int paymentId;

  @override
  String toString() {
    return 'CustomerDetailEvent.selectedPayment(paymentId: $paymentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedPayment &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedPaymentCopyWith<_$_SelectedPayment> get copyWith =>
      __$$_SelectedPaymentCopyWithImpl<_$_SelectedPayment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCustomerById,
    required TResult Function() getPaymentItemsByCustomerId,
    required TResult Function(int paymentId) selectedPayment,
    required TResult Function(int id) getTicInformationByFlightId,
  }) {
    return selectedPayment(paymentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCustomerById,
    TResult? Function()? getPaymentItemsByCustomerId,
    TResult? Function(int paymentId)? selectedPayment,
    TResult? Function(int id)? getTicInformationByFlightId,
  }) {
    return selectedPayment?.call(paymentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCustomerById,
    TResult Function()? getPaymentItemsByCustomerId,
    TResult Function(int paymentId)? selectedPayment,
    TResult Function(int id)? getTicInformationByFlightId,
    required TResult orElse(),
  }) {
    if (selectedPayment != null) {
      return selectedPayment(paymentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCustomerById value) getCustomerById,
    required TResult Function(_GetPaymentItemsByCustomerId value)
        getPaymentItemsByCustomerId,
    required TResult Function(_SelectedPayment value) selectedPayment,
    required TResult Function(_GetTicInformationByFlightId value)
        getTicInformationByFlightId,
  }) {
    return selectedPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCustomerById value)? getCustomerById,
    TResult? Function(_GetPaymentItemsByCustomerId value)?
        getPaymentItemsByCustomerId,
    TResult? Function(_SelectedPayment value)? selectedPayment,
    TResult? Function(_GetTicInformationByFlightId value)?
        getTicInformationByFlightId,
  }) {
    return selectedPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCustomerById value)? getCustomerById,
    TResult Function(_GetPaymentItemsByCustomerId value)?
        getPaymentItemsByCustomerId,
    TResult Function(_SelectedPayment value)? selectedPayment,
    TResult Function(_GetTicInformationByFlightId value)?
        getTicInformationByFlightId,
    required TResult orElse(),
  }) {
    if (selectedPayment != null) {
      return selectedPayment(this);
    }
    return orElse();
  }
}

abstract class _SelectedPayment implements CustomerDetailEvent {
  const factory _SelectedPayment({required final int paymentId}) =
      _$_SelectedPayment;

  int get paymentId;
  @JsonKey(ignore: true)
  _$$_SelectedPaymentCopyWith<_$_SelectedPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetTicInformationByFlightIdCopyWith<$Res> {
  factory _$$_GetTicInformationByFlightIdCopyWith(
          _$_GetTicInformationByFlightId value,
          $Res Function(_$_GetTicInformationByFlightId) then) =
      __$$_GetTicInformationByFlightIdCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_GetTicInformationByFlightIdCopyWithImpl<$Res>
    extends _$CustomerDetailEventCopyWithImpl<$Res,
        _$_GetTicInformationByFlightId>
    implements _$$_GetTicInformationByFlightIdCopyWith<$Res> {
  __$$_GetTicInformationByFlightIdCopyWithImpl(
      _$_GetTicInformationByFlightId _value,
      $Res Function(_$_GetTicInformationByFlightId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_GetTicInformationByFlightId(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetTicInformationByFlightId implements _GetTicInformationByFlightId {
  const _$_GetTicInformationByFlightId({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CustomerDetailEvent.getTicInformationByFlightId(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTicInformationByFlightId &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetTicInformationByFlightIdCopyWith<_$_GetTicInformationByFlightId>
      get copyWith => __$$_GetTicInformationByFlightIdCopyWithImpl<
          _$_GetTicInformationByFlightId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCustomerById,
    required TResult Function() getPaymentItemsByCustomerId,
    required TResult Function(int paymentId) selectedPayment,
    required TResult Function(int id) getTicInformationByFlightId,
  }) {
    return getTicInformationByFlightId(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCustomerById,
    TResult? Function()? getPaymentItemsByCustomerId,
    TResult? Function(int paymentId)? selectedPayment,
    TResult? Function(int id)? getTicInformationByFlightId,
  }) {
    return getTicInformationByFlightId?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCustomerById,
    TResult Function()? getPaymentItemsByCustomerId,
    TResult Function(int paymentId)? selectedPayment,
    TResult Function(int id)? getTicInformationByFlightId,
    required TResult orElse(),
  }) {
    if (getTicInformationByFlightId != null) {
      return getTicInformationByFlightId(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCustomerById value) getCustomerById,
    required TResult Function(_GetPaymentItemsByCustomerId value)
        getPaymentItemsByCustomerId,
    required TResult Function(_SelectedPayment value) selectedPayment,
    required TResult Function(_GetTicInformationByFlightId value)
        getTicInformationByFlightId,
  }) {
    return getTicInformationByFlightId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCustomerById value)? getCustomerById,
    TResult? Function(_GetPaymentItemsByCustomerId value)?
        getPaymentItemsByCustomerId,
    TResult? Function(_SelectedPayment value)? selectedPayment,
    TResult? Function(_GetTicInformationByFlightId value)?
        getTicInformationByFlightId,
  }) {
    return getTicInformationByFlightId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCustomerById value)? getCustomerById,
    TResult Function(_GetPaymentItemsByCustomerId value)?
        getPaymentItemsByCustomerId,
    TResult Function(_SelectedPayment value)? selectedPayment,
    TResult Function(_GetTicInformationByFlightId value)?
        getTicInformationByFlightId,
    required TResult orElse(),
  }) {
    if (getTicInformationByFlightId != null) {
      return getTicInformationByFlightId(this);
    }
    return orElse();
  }
}

abstract class _GetTicInformationByFlightId implements CustomerDetailEvent {
  const factory _GetTicInformationByFlightId({required final int id}) =
      _$_GetTicInformationByFlightId;

  int get id;
  @JsonKey(ignore: true)
  _$$_GetTicInformationByFlightIdCopyWith<_$_GetTicInformationByFlightId>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomerDetailState {
  CustomerDetailModelState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerDetailModelState data) initial,
    required TResult Function(CustomerDetailModelState data, int loadingGroup)
        loading,
    required TResult Function(CustomerDetailModelState data)
        getCustomerByIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getCustomerByIdFailed,
    required TResult Function(CustomerDetailModelState data)
        selectedPaymentSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        selectedPaymentFailed,
    required TResult Function(CustomerDetailModelState data)
        getPaymentItemsByCustomerIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getPaymentItemsByCustomerIdFailed,
    required TResult Function(CustomerDetailModelState data)
        getTicInformationByFlightIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getTicInformationByFlightIdFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerDetailModelState data)? initial,
    TResult? Function(CustomerDetailModelState data, int loadingGroup)? loading,
    TResult? Function(CustomerDetailModelState data)? getCustomerByIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getCustomerByIdFailed,
    TResult? Function(CustomerDetailModelState data)? selectedPaymentSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        selectedPaymentFailed,
    TResult? Function(CustomerDetailModelState data)?
        getPaymentItemsByCustomerIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getPaymentItemsByCustomerIdFailed,
    TResult? Function(CustomerDetailModelState data)?
        getTicInformationByFlightIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getTicInformationByFlightIdFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerDetailModelState data)? initial,
    TResult Function(CustomerDetailModelState data, int loadingGroup)? loading,
    TResult Function(CustomerDetailModelState data)? getCustomerByIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getCustomerByIdFailed,
    TResult Function(CustomerDetailModelState data)? selectedPaymentSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        selectedPaymentFailed,
    TResult Function(CustomerDetailModelState data)?
        getPaymentItemsByCustomerIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getPaymentItemsByCustomerIdFailed,
    TResult Function(CustomerDetailModelState data)?
        getTicInformationByFlightIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getTicInformationByFlightIdFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetCustomerByIdSuccess value)
        getCustomerByIdSuccess,
    required TResult Function(_getCustomerByIdFailed value)
        getCustomerByIdFailed,
    required TResult Function(_SelectedPaymentSuccess value)
        selectedPaymentSuccess,
    required TResult Function(_SelectedPaymentFailed value)
        selectedPaymentFailed,
    required TResult Function(_GetPaymentItemsByCustomerIdSuccess value)
        getPaymentItemsByCustomerIdSuccess,
    required TResult Function(_GetPaymentItemsByCustomerIdFailed value)
        getPaymentItemsByCustomerIdFailed,
    required TResult Function(_GetTicInformationByFlightIdSuccess value)
        getTicInformationByFlightIdSuccess,
    required TResult Function(_GetTicInformationByFlightIdFailed value)
        getTicInformationByFlightIdFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCustomerByIdSuccess value)? getCustomerByIdSuccess,
    TResult? Function(_getCustomerByIdFailed value)? getCustomerByIdFailed,
    TResult? Function(_SelectedPaymentSuccess value)? selectedPaymentSuccess,
    TResult? Function(_SelectedPaymentFailed value)? selectedPaymentFailed,
    TResult? Function(_GetPaymentItemsByCustomerIdSuccess value)?
        getPaymentItemsByCustomerIdSuccess,
    TResult? Function(_GetPaymentItemsByCustomerIdFailed value)?
        getPaymentItemsByCustomerIdFailed,
    TResult? Function(_GetTicInformationByFlightIdSuccess value)?
        getTicInformationByFlightIdSuccess,
    TResult? Function(_GetTicInformationByFlightIdFailed value)?
        getTicInformationByFlightIdFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCustomerByIdSuccess value)? getCustomerByIdSuccess,
    TResult Function(_getCustomerByIdFailed value)? getCustomerByIdFailed,
    TResult Function(_SelectedPaymentSuccess value)? selectedPaymentSuccess,
    TResult Function(_SelectedPaymentFailed value)? selectedPaymentFailed,
    TResult Function(_GetPaymentItemsByCustomerIdSuccess value)?
        getPaymentItemsByCustomerIdSuccess,
    TResult Function(_GetPaymentItemsByCustomerIdFailed value)?
        getPaymentItemsByCustomerIdFailed,
    TResult Function(_GetTicInformationByFlightIdSuccess value)?
        getTicInformationByFlightIdSuccess,
    TResult Function(_GetTicInformationByFlightIdFailed value)?
        getTicInformationByFlightIdFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerDetailStateCopyWith<CustomerDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDetailStateCopyWith<$Res> {
  factory $CustomerDetailStateCopyWith(
          CustomerDetailState value, $Res Function(CustomerDetailState) then) =
      _$CustomerDetailStateCopyWithImpl<$Res, CustomerDetailState>;
  @useResult
  $Res call({CustomerDetailModelState data});

  $CustomerDetailModelStateCopyWith<$Res> get data;
}

/// @nodoc
class _$CustomerDetailStateCopyWithImpl<$Res, $Val extends CustomerDetailState>
    implements $CustomerDetailStateCopyWith<$Res> {
  _$CustomerDetailStateCopyWithImpl(this._value, this._then);

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
              as CustomerDetailModelState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerDetailModelStateCopyWith<$Res> get data {
    return $CustomerDetailModelStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $CustomerDetailStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerDetailModelState data});

  @override
  $CustomerDetailModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CustomerDetailStateCopyWithImpl<$Res, _$_Initial>
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
              as CustomerDetailModelState,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final CustomerDetailModelState data;

  @override
  String toString() {
    return 'CustomerDetailState.initial(data: $data)';
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
    required TResult Function(CustomerDetailModelState data) initial,
    required TResult Function(CustomerDetailModelState data, int loadingGroup)
        loading,
    required TResult Function(CustomerDetailModelState data)
        getCustomerByIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getCustomerByIdFailed,
    required TResult Function(CustomerDetailModelState data)
        selectedPaymentSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        selectedPaymentFailed,
    required TResult Function(CustomerDetailModelState data)
        getPaymentItemsByCustomerIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getPaymentItemsByCustomerIdFailed,
    required TResult Function(CustomerDetailModelState data)
        getTicInformationByFlightIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getTicInformationByFlightIdFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerDetailModelState data)? initial,
    TResult? Function(CustomerDetailModelState data, int loadingGroup)? loading,
    TResult? Function(CustomerDetailModelState data)? getCustomerByIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getCustomerByIdFailed,
    TResult? Function(CustomerDetailModelState data)? selectedPaymentSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        selectedPaymentFailed,
    TResult? Function(CustomerDetailModelState data)?
        getPaymentItemsByCustomerIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getPaymentItemsByCustomerIdFailed,
    TResult? Function(CustomerDetailModelState data)?
        getTicInformationByFlightIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getTicInformationByFlightIdFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerDetailModelState data)? initial,
    TResult Function(CustomerDetailModelState data, int loadingGroup)? loading,
    TResult Function(CustomerDetailModelState data)? getCustomerByIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getCustomerByIdFailed,
    TResult Function(CustomerDetailModelState data)? selectedPaymentSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        selectedPaymentFailed,
    TResult Function(CustomerDetailModelState data)?
        getPaymentItemsByCustomerIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getPaymentItemsByCustomerIdFailed,
    TResult Function(CustomerDetailModelState data)?
        getTicInformationByFlightIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getTicInformationByFlightIdFailed,
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
    required TResult Function(_GetCustomerByIdSuccess value)
        getCustomerByIdSuccess,
    required TResult Function(_getCustomerByIdFailed value)
        getCustomerByIdFailed,
    required TResult Function(_SelectedPaymentSuccess value)
        selectedPaymentSuccess,
    required TResult Function(_SelectedPaymentFailed value)
        selectedPaymentFailed,
    required TResult Function(_GetPaymentItemsByCustomerIdSuccess value)
        getPaymentItemsByCustomerIdSuccess,
    required TResult Function(_GetPaymentItemsByCustomerIdFailed value)
        getPaymentItemsByCustomerIdFailed,
    required TResult Function(_GetTicInformationByFlightIdSuccess value)
        getTicInformationByFlightIdSuccess,
    required TResult Function(_GetTicInformationByFlightIdFailed value)
        getTicInformationByFlightIdFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCustomerByIdSuccess value)? getCustomerByIdSuccess,
    TResult? Function(_getCustomerByIdFailed value)? getCustomerByIdFailed,
    TResult? Function(_SelectedPaymentSuccess value)? selectedPaymentSuccess,
    TResult? Function(_SelectedPaymentFailed value)? selectedPaymentFailed,
    TResult? Function(_GetPaymentItemsByCustomerIdSuccess value)?
        getPaymentItemsByCustomerIdSuccess,
    TResult? Function(_GetPaymentItemsByCustomerIdFailed value)?
        getPaymentItemsByCustomerIdFailed,
    TResult? Function(_GetTicInformationByFlightIdSuccess value)?
        getTicInformationByFlightIdSuccess,
    TResult? Function(_GetTicInformationByFlightIdFailed value)?
        getTicInformationByFlightIdFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCustomerByIdSuccess value)? getCustomerByIdSuccess,
    TResult Function(_getCustomerByIdFailed value)? getCustomerByIdFailed,
    TResult Function(_SelectedPaymentSuccess value)? selectedPaymentSuccess,
    TResult Function(_SelectedPaymentFailed value)? selectedPaymentFailed,
    TResult Function(_GetPaymentItemsByCustomerIdSuccess value)?
        getPaymentItemsByCustomerIdSuccess,
    TResult Function(_GetPaymentItemsByCustomerIdFailed value)?
        getPaymentItemsByCustomerIdFailed,
    TResult Function(_GetTicInformationByFlightIdSuccess value)?
        getTicInformationByFlightIdSuccess,
    TResult Function(_GetTicInformationByFlightIdFailed value)?
        getTicInformationByFlightIdFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends CustomerDetailState {
  const factory _Initial({required final CustomerDetailModelState data}) =
      _$_Initial;
  const _Initial._() : super._();

  @override
  CustomerDetailModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $CustomerDetailStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerDetailModelState data, int loadingGroup});

  @override
  $CustomerDetailModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$CustomerDetailStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? loadingGroup = null,
  }) {
    return _then(_$_Loading(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerDetailModelState,
      loadingGroup: null == loadingGroup
          ? _value.loadingGroup
          : loadingGroup // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data, required this.loadingGroup})
      : super._();

  @override
  final CustomerDetailModelState data;
  @override
  final int loadingGroup;

  @override
  String toString() {
    return 'CustomerDetailState.loading(data: $data, loadingGroup: $loadingGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.loadingGroup, loadingGroup) ||
                other.loadingGroup == loadingGroup));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, loadingGroup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerDetailModelState data) initial,
    required TResult Function(CustomerDetailModelState data, int loadingGroup)
        loading,
    required TResult Function(CustomerDetailModelState data)
        getCustomerByIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getCustomerByIdFailed,
    required TResult Function(CustomerDetailModelState data)
        selectedPaymentSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        selectedPaymentFailed,
    required TResult Function(CustomerDetailModelState data)
        getPaymentItemsByCustomerIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getPaymentItemsByCustomerIdFailed,
    required TResult Function(CustomerDetailModelState data)
        getTicInformationByFlightIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getTicInformationByFlightIdFailed,
  }) {
    return loading(data, loadingGroup);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerDetailModelState data)? initial,
    TResult? Function(CustomerDetailModelState data, int loadingGroup)? loading,
    TResult? Function(CustomerDetailModelState data)? getCustomerByIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getCustomerByIdFailed,
    TResult? Function(CustomerDetailModelState data)? selectedPaymentSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        selectedPaymentFailed,
    TResult? Function(CustomerDetailModelState data)?
        getPaymentItemsByCustomerIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getPaymentItemsByCustomerIdFailed,
    TResult? Function(CustomerDetailModelState data)?
        getTicInformationByFlightIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getTicInformationByFlightIdFailed,
  }) {
    return loading?.call(data, loadingGroup);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerDetailModelState data)? initial,
    TResult Function(CustomerDetailModelState data, int loadingGroup)? loading,
    TResult Function(CustomerDetailModelState data)? getCustomerByIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getCustomerByIdFailed,
    TResult Function(CustomerDetailModelState data)? selectedPaymentSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        selectedPaymentFailed,
    TResult Function(CustomerDetailModelState data)?
        getPaymentItemsByCustomerIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getPaymentItemsByCustomerIdFailed,
    TResult Function(CustomerDetailModelState data)?
        getTicInformationByFlightIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getTicInformationByFlightIdFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data, loadingGroup);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetCustomerByIdSuccess value)
        getCustomerByIdSuccess,
    required TResult Function(_getCustomerByIdFailed value)
        getCustomerByIdFailed,
    required TResult Function(_SelectedPaymentSuccess value)
        selectedPaymentSuccess,
    required TResult Function(_SelectedPaymentFailed value)
        selectedPaymentFailed,
    required TResult Function(_GetPaymentItemsByCustomerIdSuccess value)
        getPaymentItemsByCustomerIdSuccess,
    required TResult Function(_GetPaymentItemsByCustomerIdFailed value)
        getPaymentItemsByCustomerIdFailed,
    required TResult Function(_GetTicInformationByFlightIdSuccess value)
        getTicInformationByFlightIdSuccess,
    required TResult Function(_GetTicInformationByFlightIdFailed value)
        getTicInformationByFlightIdFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCustomerByIdSuccess value)? getCustomerByIdSuccess,
    TResult? Function(_getCustomerByIdFailed value)? getCustomerByIdFailed,
    TResult? Function(_SelectedPaymentSuccess value)? selectedPaymentSuccess,
    TResult? Function(_SelectedPaymentFailed value)? selectedPaymentFailed,
    TResult? Function(_GetPaymentItemsByCustomerIdSuccess value)?
        getPaymentItemsByCustomerIdSuccess,
    TResult? Function(_GetPaymentItemsByCustomerIdFailed value)?
        getPaymentItemsByCustomerIdFailed,
    TResult? Function(_GetTicInformationByFlightIdSuccess value)?
        getTicInformationByFlightIdSuccess,
    TResult? Function(_GetTicInformationByFlightIdFailed value)?
        getTicInformationByFlightIdFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCustomerByIdSuccess value)? getCustomerByIdSuccess,
    TResult Function(_getCustomerByIdFailed value)? getCustomerByIdFailed,
    TResult Function(_SelectedPaymentSuccess value)? selectedPaymentSuccess,
    TResult Function(_SelectedPaymentFailed value)? selectedPaymentFailed,
    TResult Function(_GetPaymentItemsByCustomerIdSuccess value)?
        getPaymentItemsByCustomerIdSuccess,
    TResult Function(_GetPaymentItemsByCustomerIdFailed value)?
        getPaymentItemsByCustomerIdFailed,
    TResult Function(_GetTicInformationByFlightIdSuccess value)?
        getTicInformationByFlightIdSuccess,
    TResult Function(_GetTicInformationByFlightIdFailed value)?
        getTicInformationByFlightIdFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends CustomerDetailState {
  const factory _Loading(
      {required final CustomerDetailModelState data,
      required final int loadingGroup}) = _$_Loading;
  const _Loading._() : super._();

  @override
  CustomerDetailModelState get data;
  int get loadingGroup;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCustomerByIdSuccessCopyWith<$Res>
    implements $CustomerDetailStateCopyWith<$Res> {
  factory _$$_GetCustomerByIdSuccessCopyWith(_$_GetCustomerByIdSuccess value,
          $Res Function(_$_GetCustomerByIdSuccess) then) =
      __$$_GetCustomerByIdSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerDetailModelState data});

  @override
  $CustomerDetailModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetCustomerByIdSuccessCopyWithImpl<$Res>
    extends _$CustomerDetailStateCopyWithImpl<$Res, _$_GetCustomerByIdSuccess>
    implements _$$_GetCustomerByIdSuccessCopyWith<$Res> {
  __$$_GetCustomerByIdSuccessCopyWithImpl(_$_GetCustomerByIdSuccess _value,
      $Res Function(_$_GetCustomerByIdSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetCustomerByIdSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerDetailModelState,
    ));
  }
}

/// @nodoc

class _$_GetCustomerByIdSuccess extends _GetCustomerByIdSuccess {
  const _$_GetCustomerByIdSuccess({required this.data}) : super._();

  @override
  final CustomerDetailModelState data;

  @override
  String toString() {
    return 'CustomerDetailState.getCustomerByIdSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCustomerByIdSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCustomerByIdSuccessCopyWith<_$_GetCustomerByIdSuccess> get copyWith =>
      __$$_GetCustomerByIdSuccessCopyWithImpl<_$_GetCustomerByIdSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerDetailModelState data) initial,
    required TResult Function(CustomerDetailModelState data, int loadingGroup)
        loading,
    required TResult Function(CustomerDetailModelState data)
        getCustomerByIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getCustomerByIdFailed,
    required TResult Function(CustomerDetailModelState data)
        selectedPaymentSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        selectedPaymentFailed,
    required TResult Function(CustomerDetailModelState data)
        getPaymentItemsByCustomerIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getPaymentItemsByCustomerIdFailed,
    required TResult Function(CustomerDetailModelState data)
        getTicInformationByFlightIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getTicInformationByFlightIdFailed,
  }) {
    return getCustomerByIdSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerDetailModelState data)? initial,
    TResult? Function(CustomerDetailModelState data, int loadingGroup)? loading,
    TResult? Function(CustomerDetailModelState data)? getCustomerByIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getCustomerByIdFailed,
    TResult? Function(CustomerDetailModelState data)? selectedPaymentSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        selectedPaymentFailed,
    TResult? Function(CustomerDetailModelState data)?
        getPaymentItemsByCustomerIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getPaymentItemsByCustomerIdFailed,
    TResult? Function(CustomerDetailModelState data)?
        getTicInformationByFlightIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getTicInformationByFlightIdFailed,
  }) {
    return getCustomerByIdSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerDetailModelState data)? initial,
    TResult Function(CustomerDetailModelState data, int loadingGroup)? loading,
    TResult Function(CustomerDetailModelState data)? getCustomerByIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getCustomerByIdFailed,
    TResult Function(CustomerDetailModelState data)? selectedPaymentSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        selectedPaymentFailed,
    TResult Function(CustomerDetailModelState data)?
        getPaymentItemsByCustomerIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getPaymentItemsByCustomerIdFailed,
    TResult Function(CustomerDetailModelState data)?
        getTicInformationByFlightIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getTicInformationByFlightIdFailed,
    required TResult orElse(),
  }) {
    if (getCustomerByIdSuccess != null) {
      return getCustomerByIdSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetCustomerByIdSuccess value)
        getCustomerByIdSuccess,
    required TResult Function(_getCustomerByIdFailed value)
        getCustomerByIdFailed,
    required TResult Function(_SelectedPaymentSuccess value)
        selectedPaymentSuccess,
    required TResult Function(_SelectedPaymentFailed value)
        selectedPaymentFailed,
    required TResult Function(_GetPaymentItemsByCustomerIdSuccess value)
        getPaymentItemsByCustomerIdSuccess,
    required TResult Function(_GetPaymentItemsByCustomerIdFailed value)
        getPaymentItemsByCustomerIdFailed,
    required TResult Function(_GetTicInformationByFlightIdSuccess value)
        getTicInformationByFlightIdSuccess,
    required TResult Function(_GetTicInformationByFlightIdFailed value)
        getTicInformationByFlightIdFailed,
  }) {
    return getCustomerByIdSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCustomerByIdSuccess value)? getCustomerByIdSuccess,
    TResult? Function(_getCustomerByIdFailed value)? getCustomerByIdFailed,
    TResult? Function(_SelectedPaymentSuccess value)? selectedPaymentSuccess,
    TResult? Function(_SelectedPaymentFailed value)? selectedPaymentFailed,
    TResult? Function(_GetPaymentItemsByCustomerIdSuccess value)?
        getPaymentItemsByCustomerIdSuccess,
    TResult? Function(_GetPaymentItemsByCustomerIdFailed value)?
        getPaymentItemsByCustomerIdFailed,
    TResult? Function(_GetTicInformationByFlightIdSuccess value)?
        getTicInformationByFlightIdSuccess,
    TResult? Function(_GetTicInformationByFlightIdFailed value)?
        getTicInformationByFlightIdFailed,
  }) {
    return getCustomerByIdSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCustomerByIdSuccess value)? getCustomerByIdSuccess,
    TResult Function(_getCustomerByIdFailed value)? getCustomerByIdFailed,
    TResult Function(_SelectedPaymentSuccess value)? selectedPaymentSuccess,
    TResult Function(_SelectedPaymentFailed value)? selectedPaymentFailed,
    TResult Function(_GetPaymentItemsByCustomerIdSuccess value)?
        getPaymentItemsByCustomerIdSuccess,
    TResult Function(_GetPaymentItemsByCustomerIdFailed value)?
        getPaymentItemsByCustomerIdFailed,
    TResult Function(_GetTicInformationByFlightIdSuccess value)?
        getTicInformationByFlightIdSuccess,
    TResult Function(_GetTicInformationByFlightIdFailed value)?
        getTicInformationByFlightIdFailed,
    required TResult orElse(),
  }) {
    if (getCustomerByIdSuccess != null) {
      return getCustomerByIdSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetCustomerByIdSuccess extends CustomerDetailState {
  const factory _GetCustomerByIdSuccess(
          {required final CustomerDetailModelState data}) =
      _$_GetCustomerByIdSuccess;
  const _GetCustomerByIdSuccess._() : super._();

  @override
  CustomerDetailModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetCustomerByIdSuccessCopyWith<_$_GetCustomerByIdSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_getCustomerByIdFailedCopyWith<$Res>
    implements $CustomerDetailStateCopyWith<$Res> {
  factory _$$_getCustomerByIdFailedCopyWith(_$_getCustomerByIdFailed value,
          $Res Function(_$_getCustomerByIdFailed) then) =
      __$$_getCustomerByIdFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerDetailModelState data, String message});

  @override
  $CustomerDetailModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_getCustomerByIdFailedCopyWithImpl<$Res>
    extends _$CustomerDetailStateCopyWithImpl<$Res, _$_getCustomerByIdFailed>
    implements _$$_getCustomerByIdFailedCopyWith<$Res> {
  __$$_getCustomerByIdFailedCopyWithImpl(_$_getCustomerByIdFailed _value,
      $Res Function(_$_getCustomerByIdFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_getCustomerByIdFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerDetailModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_getCustomerByIdFailed extends _getCustomerByIdFailed {
  const _$_getCustomerByIdFailed({required this.data, required this.message})
      : super._();

  @override
  final CustomerDetailModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'CustomerDetailState.getCustomerByIdFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_getCustomerByIdFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_getCustomerByIdFailedCopyWith<_$_getCustomerByIdFailed> get copyWith =>
      __$$_getCustomerByIdFailedCopyWithImpl<_$_getCustomerByIdFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerDetailModelState data) initial,
    required TResult Function(CustomerDetailModelState data, int loadingGroup)
        loading,
    required TResult Function(CustomerDetailModelState data)
        getCustomerByIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getCustomerByIdFailed,
    required TResult Function(CustomerDetailModelState data)
        selectedPaymentSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        selectedPaymentFailed,
    required TResult Function(CustomerDetailModelState data)
        getPaymentItemsByCustomerIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getPaymentItemsByCustomerIdFailed,
    required TResult Function(CustomerDetailModelState data)
        getTicInformationByFlightIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getTicInformationByFlightIdFailed,
  }) {
    return getCustomerByIdFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerDetailModelState data)? initial,
    TResult? Function(CustomerDetailModelState data, int loadingGroup)? loading,
    TResult? Function(CustomerDetailModelState data)? getCustomerByIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getCustomerByIdFailed,
    TResult? Function(CustomerDetailModelState data)? selectedPaymentSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        selectedPaymentFailed,
    TResult? Function(CustomerDetailModelState data)?
        getPaymentItemsByCustomerIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getPaymentItemsByCustomerIdFailed,
    TResult? Function(CustomerDetailModelState data)?
        getTicInformationByFlightIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getTicInformationByFlightIdFailed,
  }) {
    return getCustomerByIdFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerDetailModelState data)? initial,
    TResult Function(CustomerDetailModelState data, int loadingGroup)? loading,
    TResult Function(CustomerDetailModelState data)? getCustomerByIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getCustomerByIdFailed,
    TResult Function(CustomerDetailModelState data)? selectedPaymentSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        selectedPaymentFailed,
    TResult Function(CustomerDetailModelState data)?
        getPaymentItemsByCustomerIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getPaymentItemsByCustomerIdFailed,
    TResult Function(CustomerDetailModelState data)?
        getTicInformationByFlightIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getTicInformationByFlightIdFailed,
    required TResult orElse(),
  }) {
    if (getCustomerByIdFailed != null) {
      return getCustomerByIdFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetCustomerByIdSuccess value)
        getCustomerByIdSuccess,
    required TResult Function(_getCustomerByIdFailed value)
        getCustomerByIdFailed,
    required TResult Function(_SelectedPaymentSuccess value)
        selectedPaymentSuccess,
    required TResult Function(_SelectedPaymentFailed value)
        selectedPaymentFailed,
    required TResult Function(_GetPaymentItemsByCustomerIdSuccess value)
        getPaymentItemsByCustomerIdSuccess,
    required TResult Function(_GetPaymentItemsByCustomerIdFailed value)
        getPaymentItemsByCustomerIdFailed,
    required TResult Function(_GetTicInformationByFlightIdSuccess value)
        getTicInformationByFlightIdSuccess,
    required TResult Function(_GetTicInformationByFlightIdFailed value)
        getTicInformationByFlightIdFailed,
  }) {
    return getCustomerByIdFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCustomerByIdSuccess value)? getCustomerByIdSuccess,
    TResult? Function(_getCustomerByIdFailed value)? getCustomerByIdFailed,
    TResult? Function(_SelectedPaymentSuccess value)? selectedPaymentSuccess,
    TResult? Function(_SelectedPaymentFailed value)? selectedPaymentFailed,
    TResult? Function(_GetPaymentItemsByCustomerIdSuccess value)?
        getPaymentItemsByCustomerIdSuccess,
    TResult? Function(_GetPaymentItemsByCustomerIdFailed value)?
        getPaymentItemsByCustomerIdFailed,
    TResult? Function(_GetTicInformationByFlightIdSuccess value)?
        getTicInformationByFlightIdSuccess,
    TResult? Function(_GetTicInformationByFlightIdFailed value)?
        getTicInformationByFlightIdFailed,
  }) {
    return getCustomerByIdFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCustomerByIdSuccess value)? getCustomerByIdSuccess,
    TResult Function(_getCustomerByIdFailed value)? getCustomerByIdFailed,
    TResult Function(_SelectedPaymentSuccess value)? selectedPaymentSuccess,
    TResult Function(_SelectedPaymentFailed value)? selectedPaymentFailed,
    TResult Function(_GetPaymentItemsByCustomerIdSuccess value)?
        getPaymentItemsByCustomerIdSuccess,
    TResult Function(_GetPaymentItemsByCustomerIdFailed value)?
        getPaymentItemsByCustomerIdFailed,
    TResult Function(_GetTicInformationByFlightIdSuccess value)?
        getTicInformationByFlightIdSuccess,
    TResult Function(_GetTicInformationByFlightIdFailed value)?
        getTicInformationByFlightIdFailed,
    required TResult orElse(),
  }) {
    if (getCustomerByIdFailed != null) {
      return getCustomerByIdFailed(this);
    }
    return orElse();
  }
}

abstract class _getCustomerByIdFailed extends CustomerDetailState {
  const factory _getCustomerByIdFailed(
      {required final CustomerDetailModelState data,
      required final String message}) = _$_getCustomerByIdFailed;
  const _getCustomerByIdFailed._() : super._();

  @override
  CustomerDetailModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_getCustomerByIdFailedCopyWith<_$_getCustomerByIdFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectedPaymentSuccessCopyWith<$Res>
    implements $CustomerDetailStateCopyWith<$Res> {
  factory _$$_SelectedPaymentSuccessCopyWith(_$_SelectedPaymentSuccess value,
          $Res Function(_$_SelectedPaymentSuccess) then) =
      __$$_SelectedPaymentSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerDetailModelState data});

  @override
  $CustomerDetailModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SelectedPaymentSuccessCopyWithImpl<$Res>
    extends _$CustomerDetailStateCopyWithImpl<$Res, _$_SelectedPaymentSuccess>
    implements _$$_SelectedPaymentSuccessCopyWith<$Res> {
  __$$_SelectedPaymentSuccessCopyWithImpl(_$_SelectedPaymentSuccess _value,
      $Res Function(_$_SelectedPaymentSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_SelectedPaymentSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerDetailModelState,
    ));
  }
}

/// @nodoc

class _$_SelectedPaymentSuccess extends _SelectedPaymentSuccess {
  const _$_SelectedPaymentSuccess({required this.data}) : super._();

  @override
  final CustomerDetailModelState data;

  @override
  String toString() {
    return 'CustomerDetailState.selectedPaymentSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedPaymentSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedPaymentSuccessCopyWith<_$_SelectedPaymentSuccess> get copyWith =>
      __$$_SelectedPaymentSuccessCopyWithImpl<_$_SelectedPaymentSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerDetailModelState data) initial,
    required TResult Function(CustomerDetailModelState data, int loadingGroup)
        loading,
    required TResult Function(CustomerDetailModelState data)
        getCustomerByIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getCustomerByIdFailed,
    required TResult Function(CustomerDetailModelState data)
        selectedPaymentSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        selectedPaymentFailed,
    required TResult Function(CustomerDetailModelState data)
        getPaymentItemsByCustomerIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getPaymentItemsByCustomerIdFailed,
    required TResult Function(CustomerDetailModelState data)
        getTicInformationByFlightIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getTicInformationByFlightIdFailed,
  }) {
    return selectedPaymentSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerDetailModelState data)? initial,
    TResult? Function(CustomerDetailModelState data, int loadingGroup)? loading,
    TResult? Function(CustomerDetailModelState data)? getCustomerByIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getCustomerByIdFailed,
    TResult? Function(CustomerDetailModelState data)? selectedPaymentSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        selectedPaymentFailed,
    TResult? Function(CustomerDetailModelState data)?
        getPaymentItemsByCustomerIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getPaymentItemsByCustomerIdFailed,
    TResult? Function(CustomerDetailModelState data)?
        getTicInformationByFlightIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getTicInformationByFlightIdFailed,
  }) {
    return selectedPaymentSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerDetailModelState data)? initial,
    TResult Function(CustomerDetailModelState data, int loadingGroup)? loading,
    TResult Function(CustomerDetailModelState data)? getCustomerByIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getCustomerByIdFailed,
    TResult Function(CustomerDetailModelState data)? selectedPaymentSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        selectedPaymentFailed,
    TResult Function(CustomerDetailModelState data)?
        getPaymentItemsByCustomerIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getPaymentItemsByCustomerIdFailed,
    TResult Function(CustomerDetailModelState data)?
        getTicInformationByFlightIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getTicInformationByFlightIdFailed,
    required TResult orElse(),
  }) {
    if (selectedPaymentSuccess != null) {
      return selectedPaymentSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetCustomerByIdSuccess value)
        getCustomerByIdSuccess,
    required TResult Function(_getCustomerByIdFailed value)
        getCustomerByIdFailed,
    required TResult Function(_SelectedPaymentSuccess value)
        selectedPaymentSuccess,
    required TResult Function(_SelectedPaymentFailed value)
        selectedPaymentFailed,
    required TResult Function(_GetPaymentItemsByCustomerIdSuccess value)
        getPaymentItemsByCustomerIdSuccess,
    required TResult Function(_GetPaymentItemsByCustomerIdFailed value)
        getPaymentItemsByCustomerIdFailed,
    required TResult Function(_GetTicInformationByFlightIdSuccess value)
        getTicInformationByFlightIdSuccess,
    required TResult Function(_GetTicInformationByFlightIdFailed value)
        getTicInformationByFlightIdFailed,
  }) {
    return selectedPaymentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCustomerByIdSuccess value)? getCustomerByIdSuccess,
    TResult? Function(_getCustomerByIdFailed value)? getCustomerByIdFailed,
    TResult? Function(_SelectedPaymentSuccess value)? selectedPaymentSuccess,
    TResult? Function(_SelectedPaymentFailed value)? selectedPaymentFailed,
    TResult? Function(_GetPaymentItemsByCustomerIdSuccess value)?
        getPaymentItemsByCustomerIdSuccess,
    TResult? Function(_GetPaymentItemsByCustomerIdFailed value)?
        getPaymentItemsByCustomerIdFailed,
    TResult? Function(_GetTicInformationByFlightIdSuccess value)?
        getTicInformationByFlightIdSuccess,
    TResult? Function(_GetTicInformationByFlightIdFailed value)?
        getTicInformationByFlightIdFailed,
  }) {
    return selectedPaymentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCustomerByIdSuccess value)? getCustomerByIdSuccess,
    TResult Function(_getCustomerByIdFailed value)? getCustomerByIdFailed,
    TResult Function(_SelectedPaymentSuccess value)? selectedPaymentSuccess,
    TResult Function(_SelectedPaymentFailed value)? selectedPaymentFailed,
    TResult Function(_GetPaymentItemsByCustomerIdSuccess value)?
        getPaymentItemsByCustomerIdSuccess,
    TResult Function(_GetPaymentItemsByCustomerIdFailed value)?
        getPaymentItemsByCustomerIdFailed,
    TResult Function(_GetTicInformationByFlightIdSuccess value)?
        getTicInformationByFlightIdSuccess,
    TResult Function(_GetTicInformationByFlightIdFailed value)?
        getTicInformationByFlightIdFailed,
    required TResult orElse(),
  }) {
    if (selectedPaymentSuccess != null) {
      return selectedPaymentSuccess(this);
    }
    return orElse();
  }
}

abstract class _SelectedPaymentSuccess extends CustomerDetailState {
  const factory _SelectedPaymentSuccess(
          {required final CustomerDetailModelState data}) =
      _$_SelectedPaymentSuccess;
  const _SelectedPaymentSuccess._() : super._();

  @override
  CustomerDetailModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_SelectedPaymentSuccessCopyWith<_$_SelectedPaymentSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectedPaymentFailedCopyWith<$Res>
    implements $CustomerDetailStateCopyWith<$Res> {
  factory _$$_SelectedPaymentFailedCopyWith(_$_SelectedPaymentFailed value,
          $Res Function(_$_SelectedPaymentFailed) then) =
      __$$_SelectedPaymentFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerDetailModelState data, String message});

  @override
  $CustomerDetailModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SelectedPaymentFailedCopyWithImpl<$Res>
    extends _$CustomerDetailStateCopyWithImpl<$Res, _$_SelectedPaymentFailed>
    implements _$$_SelectedPaymentFailedCopyWith<$Res> {
  __$$_SelectedPaymentFailedCopyWithImpl(_$_SelectedPaymentFailed _value,
      $Res Function(_$_SelectedPaymentFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_SelectedPaymentFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerDetailModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectedPaymentFailed extends _SelectedPaymentFailed {
  const _$_SelectedPaymentFailed({required this.data, required this.message})
      : super._();

  @override
  final CustomerDetailModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'CustomerDetailState.selectedPaymentFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedPaymentFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedPaymentFailedCopyWith<_$_SelectedPaymentFailed> get copyWith =>
      __$$_SelectedPaymentFailedCopyWithImpl<_$_SelectedPaymentFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerDetailModelState data) initial,
    required TResult Function(CustomerDetailModelState data, int loadingGroup)
        loading,
    required TResult Function(CustomerDetailModelState data)
        getCustomerByIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getCustomerByIdFailed,
    required TResult Function(CustomerDetailModelState data)
        selectedPaymentSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        selectedPaymentFailed,
    required TResult Function(CustomerDetailModelState data)
        getPaymentItemsByCustomerIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getPaymentItemsByCustomerIdFailed,
    required TResult Function(CustomerDetailModelState data)
        getTicInformationByFlightIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getTicInformationByFlightIdFailed,
  }) {
    return selectedPaymentFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerDetailModelState data)? initial,
    TResult? Function(CustomerDetailModelState data, int loadingGroup)? loading,
    TResult? Function(CustomerDetailModelState data)? getCustomerByIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getCustomerByIdFailed,
    TResult? Function(CustomerDetailModelState data)? selectedPaymentSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        selectedPaymentFailed,
    TResult? Function(CustomerDetailModelState data)?
        getPaymentItemsByCustomerIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getPaymentItemsByCustomerIdFailed,
    TResult? Function(CustomerDetailModelState data)?
        getTicInformationByFlightIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getTicInformationByFlightIdFailed,
  }) {
    return selectedPaymentFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerDetailModelState data)? initial,
    TResult Function(CustomerDetailModelState data, int loadingGroup)? loading,
    TResult Function(CustomerDetailModelState data)? getCustomerByIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getCustomerByIdFailed,
    TResult Function(CustomerDetailModelState data)? selectedPaymentSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        selectedPaymentFailed,
    TResult Function(CustomerDetailModelState data)?
        getPaymentItemsByCustomerIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getPaymentItemsByCustomerIdFailed,
    TResult Function(CustomerDetailModelState data)?
        getTicInformationByFlightIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getTicInformationByFlightIdFailed,
    required TResult orElse(),
  }) {
    if (selectedPaymentFailed != null) {
      return selectedPaymentFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetCustomerByIdSuccess value)
        getCustomerByIdSuccess,
    required TResult Function(_getCustomerByIdFailed value)
        getCustomerByIdFailed,
    required TResult Function(_SelectedPaymentSuccess value)
        selectedPaymentSuccess,
    required TResult Function(_SelectedPaymentFailed value)
        selectedPaymentFailed,
    required TResult Function(_GetPaymentItemsByCustomerIdSuccess value)
        getPaymentItemsByCustomerIdSuccess,
    required TResult Function(_GetPaymentItemsByCustomerIdFailed value)
        getPaymentItemsByCustomerIdFailed,
    required TResult Function(_GetTicInformationByFlightIdSuccess value)
        getTicInformationByFlightIdSuccess,
    required TResult Function(_GetTicInformationByFlightIdFailed value)
        getTicInformationByFlightIdFailed,
  }) {
    return selectedPaymentFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCustomerByIdSuccess value)? getCustomerByIdSuccess,
    TResult? Function(_getCustomerByIdFailed value)? getCustomerByIdFailed,
    TResult? Function(_SelectedPaymentSuccess value)? selectedPaymentSuccess,
    TResult? Function(_SelectedPaymentFailed value)? selectedPaymentFailed,
    TResult? Function(_GetPaymentItemsByCustomerIdSuccess value)?
        getPaymentItemsByCustomerIdSuccess,
    TResult? Function(_GetPaymentItemsByCustomerIdFailed value)?
        getPaymentItemsByCustomerIdFailed,
    TResult? Function(_GetTicInformationByFlightIdSuccess value)?
        getTicInformationByFlightIdSuccess,
    TResult? Function(_GetTicInformationByFlightIdFailed value)?
        getTicInformationByFlightIdFailed,
  }) {
    return selectedPaymentFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCustomerByIdSuccess value)? getCustomerByIdSuccess,
    TResult Function(_getCustomerByIdFailed value)? getCustomerByIdFailed,
    TResult Function(_SelectedPaymentSuccess value)? selectedPaymentSuccess,
    TResult Function(_SelectedPaymentFailed value)? selectedPaymentFailed,
    TResult Function(_GetPaymentItemsByCustomerIdSuccess value)?
        getPaymentItemsByCustomerIdSuccess,
    TResult Function(_GetPaymentItemsByCustomerIdFailed value)?
        getPaymentItemsByCustomerIdFailed,
    TResult Function(_GetTicInformationByFlightIdSuccess value)?
        getTicInformationByFlightIdSuccess,
    TResult Function(_GetTicInformationByFlightIdFailed value)?
        getTicInformationByFlightIdFailed,
    required TResult orElse(),
  }) {
    if (selectedPaymentFailed != null) {
      return selectedPaymentFailed(this);
    }
    return orElse();
  }
}

abstract class _SelectedPaymentFailed extends CustomerDetailState {
  const factory _SelectedPaymentFailed(
      {required final CustomerDetailModelState data,
      required final String message}) = _$_SelectedPaymentFailed;
  const _SelectedPaymentFailed._() : super._();

  @override
  CustomerDetailModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_SelectedPaymentFailedCopyWith<_$_SelectedPaymentFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetPaymentItemsByCustomerIdSuccessCopyWith<$Res>
    implements $CustomerDetailStateCopyWith<$Res> {
  factory _$$_GetPaymentItemsByCustomerIdSuccessCopyWith(
          _$_GetPaymentItemsByCustomerIdSuccess value,
          $Res Function(_$_GetPaymentItemsByCustomerIdSuccess) then) =
      __$$_GetPaymentItemsByCustomerIdSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerDetailModelState data});

  @override
  $CustomerDetailModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetPaymentItemsByCustomerIdSuccessCopyWithImpl<$Res>
    extends _$CustomerDetailStateCopyWithImpl<$Res,
        _$_GetPaymentItemsByCustomerIdSuccess>
    implements _$$_GetPaymentItemsByCustomerIdSuccessCopyWith<$Res> {
  __$$_GetPaymentItemsByCustomerIdSuccessCopyWithImpl(
      _$_GetPaymentItemsByCustomerIdSuccess _value,
      $Res Function(_$_GetPaymentItemsByCustomerIdSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetPaymentItemsByCustomerIdSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerDetailModelState,
    ));
  }
}

/// @nodoc

class _$_GetPaymentItemsByCustomerIdSuccess
    extends _GetPaymentItemsByCustomerIdSuccess {
  const _$_GetPaymentItemsByCustomerIdSuccess({required this.data}) : super._();

  @override
  final CustomerDetailModelState data;

  @override
  String toString() {
    return 'CustomerDetailState.getPaymentItemsByCustomerIdSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPaymentItemsByCustomerIdSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPaymentItemsByCustomerIdSuccessCopyWith<
          _$_GetPaymentItemsByCustomerIdSuccess>
      get copyWith => __$$_GetPaymentItemsByCustomerIdSuccessCopyWithImpl<
          _$_GetPaymentItemsByCustomerIdSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerDetailModelState data) initial,
    required TResult Function(CustomerDetailModelState data, int loadingGroup)
        loading,
    required TResult Function(CustomerDetailModelState data)
        getCustomerByIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getCustomerByIdFailed,
    required TResult Function(CustomerDetailModelState data)
        selectedPaymentSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        selectedPaymentFailed,
    required TResult Function(CustomerDetailModelState data)
        getPaymentItemsByCustomerIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getPaymentItemsByCustomerIdFailed,
    required TResult Function(CustomerDetailModelState data)
        getTicInformationByFlightIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getTicInformationByFlightIdFailed,
  }) {
    return getPaymentItemsByCustomerIdSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerDetailModelState data)? initial,
    TResult? Function(CustomerDetailModelState data, int loadingGroup)? loading,
    TResult? Function(CustomerDetailModelState data)? getCustomerByIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getCustomerByIdFailed,
    TResult? Function(CustomerDetailModelState data)? selectedPaymentSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        selectedPaymentFailed,
    TResult? Function(CustomerDetailModelState data)?
        getPaymentItemsByCustomerIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getPaymentItemsByCustomerIdFailed,
    TResult? Function(CustomerDetailModelState data)?
        getTicInformationByFlightIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getTicInformationByFlightIdFailed,
  }) {
    return getPaymentItemsByCustomerIdSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerDetailModelState data)? initial,
    TResult Function(CustomerDetailModelState data, int loadingGroup)? loading,
    TResult Function(CustomerDetailModelState data)? getCustomerByIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getCustomerByIdFailed,
    TResult Function(CustomerDetailModelState data)? selectedPaymentSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        selectedPaymentFailed,
    TResult Function(CustomerDetailModelState data)?
        getPaymentItemsByCustomerIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getPaymentItemsByCustomerIdFailed,
    TResult Function(CustomerDetailModelState data)?
        getTicInformationByFlightIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getTicInformationByFlightIdFailed,
    required TResult orElse(),
  }) {
    if (getPaymentItemsByCustomerIdSuccess != null) {
      return getPaymentItemsByCustomerIdSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetCustomerByIdSuccess value)
        getCustomerByIdSuccess,
    required TResult Function(_getCustomerByIdFailed value)
        getCustomerByIdFailed,
    required TResult Function(_SelectedPaymentSuccess value)
        selectedPaymentSuccess,
    required TResult Function(_SelectedPaymentFailed value)
        selectedPaymentFailed,
    required TResult Function(_GetPaymentItemsByCustomerIdSuccess value)
        getPaymentItemsByCustomerIdSuccess,
    required TResult Function(_GetPaymentItemsByCustomerIdFailed value)
        getPaymentItemsByCustomerIdFailed,
    required TResult Function(_GetTicInformationByFlightIdSuccess value)
        getTicInformationByFlightIdSuccess,
    required TResult Function(_GetTicInformationByFlightIdFailed value)
        getTicInformationByFlightIdFailed,
  }) {
    return getPaymentItemsByCustomerIdSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCustomerByIdSuccess value)? getCustomerByIdSuccess,
    TResult? Function(_getCustomerByIdFailed value)? getCustomerByIdFailed,
    TResult? Function(_SelectedPaymentSuccess value)? selectedPaymentSuccess,
    TResult? Function(_SelectedPaymentFailed value)? selectedPaymentFailed,
    TResult? Function(_GetPaymentItemsByCustomerIdSuccess value)?
        getPaymentItemsByCustomerIdSuccess,
    TResult? Function(_GetPaymentItemsByCustomerIdFailed value)?
        getPaymentItemsByCustomerIdFailed,
    TResult? Function(_GetTicInformationByFlightIdSuccess value)?
        getTicInformationByFlightIdSuccess,
    TResult? Function(_GetTicInformationByFlightIdFailed value)?
        getTicInformationByFlightIdFailed,
  }) {
    return getPaymentItemsByCustomerIdSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCustomerByIdSuccess value)? getCustomerByIdSuccess,
    TResult Function(_getCustomerByIdFailed value)? getCustomerByIdFailed,
    TResult Function(_SelectedPaymentSuccess value)? selectedPaymentSuccess,
    TResult Function(_SelectedPaymentFailed value)? selectedPaymentFailed,
    TResult Function(_GetPaymentItemsByCustomerIdSuccess value)?
        getPaymentItemsByCustomerIdSuccess,
    TResult Function(_GetPaymentItemsByCustomerIdFailed value)?
        getPaymentItemsByCustomerIdFailed,
    TResult Function(_GetTicInformationByFlightIdSuccess value)?
        getTicInformationByFlightIdSuccess,
    TResult Function(_GetTicInformationByFlightIdFailed value)?
        getTicInformationByFlightIdFailed,
    required TResult orElse(),
  }) {
    if (getPaymentItemsByCustomerIdSuccess != null) {
      return getPaymentItemsByCustomerIdSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentItemsByCustomerIdSuccess extends CustomerDetailState {
  const factory _GetPaymentItemsByCustomerIdSuccess(
          {required final CustomerDetailModelState data}) =
      _$_GetPaymentItemsByCustomerIdSuccess;
  const _GetPaymentItemsByCustomerIdSuccess._() : super._();

  @override
  CustomerDetailModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetPaymentItemsByCustomerIdSuccessCopyWith<
          _$_GetPaymentItemsByCustomerIdSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetPaymentItemsByCustomerIdFailedCopyWith<$Res>
    implements $CustomerDetailStateCopyWith<$Res> {
  factory _$$_GetPaymentItemsByCustomerIdFailedCopyWith(
          _$_GetPaymentItemsByCustomerIdFailed value,
          $Res Function(_$_GetPaymentItemsByCustomerIdFailed) then) =
      __$$_GetPaymentItemsByCustomerIdFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerDetailModelState data, String message});

  @override
  $CustomerDetailModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetPaymentItemsByCustomerIdFailedCopyWithImpl<$Res>
    extends _$CustomerDetailStateCopyWithImpl<$Res,
        _$_GetPaymentItemsByCustomerIdFailed>
    implements _$$_GetPaymentItemsByCustomerIdFailedCopyWith<$Res> {
  __$$_GetPaymentItemsByCustomerIdFailedCopyWithImpl(
      _$_GetPaymentItemsByCustomerIdFailed _value,
      $Res Function(_$_GetPaymentItemsByCustomerIdFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetPaymentItemsByCustomerIdFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerDetailModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetPaymentItemsByCustomerIdFailed
    extends _GetPaymentItemsByCustomerIdFailed {
  const _$_GetPaymentItemsByCustomerIdFailed(
      {required this.data, required this.message})
      : super._();

  @override
  final CustomerDetailModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'CustomerDetailState.getPaymentItemsByCustomerIdFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPaymentItemsByCustomerIdFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPaymentItemsByCustomerIdFailedCopyWith<
          _$_GetPaymentItemsByCustomerIdFailed>
      get copyWith => __$$_GetPaymentItemsByCustomerIdFailedCopyWithImpl<
          _$_GetPaymentItemsByCustomerIdFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerDetailModelState data) initial,
    required TResult Function(CustomerDetailModelState data, int loadingGroup)
        loading,
    required TResult Function(CustomerDetailModelState data)
        getCustomerByIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getCustomerByIdFailed,
    required TResult Function(CustomerDetailModelState data)
        selectedPaymentSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        selectedPaymentFailed,
    required TResult Function(CustomerDetailModelState data)
        getPaymentItemsByCustomerIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getPaymentItemsByCustomerIdFailed,
    required TResult Function(CustomerDetailModelState data)
        getTicInformationByFlightIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getTicInformationByFlightIdFailed,
  }) {
    return getPaymentItemsByCustomerIdFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerDetailModelState data)? initial,
    TResult? Function(CustomerDetailModelState data, int loadingGroup)? loading,
    TResult? Function(CustomerDetailModelState data)? getCustomerByIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getCustomerByIdFailed,
    TResult? Function(CustomerDetailModelState data)? selectedPaymentSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        selectedPaymentFailed,
    TResult? Function(CustomerDetailModelState data)?
        getPaymentItemsByCustomerIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getPaymentItemsByCustomerIdFailed,
    TResult? Function(CustomerDetailModelState data)?
        getTicInformationByFlightIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getTicInformationByFlightIdFailed,
  }) {
    return getPaymentItemsByCustomerIdFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerDetailModelState data)? initial,
    TResult Function(CustomerDetailModelState data, int loadingGroup)? loading,
    TResult Function(CustomerDetailModelState data)? getCustomerByIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getCustomerByIdFailed,
    TResult Function(CustomerDetailModelState data)? selectedPaymentSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        selectedPaymentFailed,
    TResult Function(CustomerDetailModelState data)?
        getPaymentItemsByCustomerIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getPaymentItemsByCustomerIdFailed,
    TResult Function(CustomerDetailModelState data)?
        getTicInformationByFlightIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getTicInformationByFlightIdFailed,
    required TResult orElse(),
  }) {
    if (getPaymentItemsByCustomerIdFailed != null) {
      return getPaymentItemsByCustomerIdFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetCustomerByIdSuccess value)
        getCustomerByIdSuccess,
    required TResult Function(_getCustomerByIdFailed value)
        getCustomerByIdFailed,
    required TResult Function(_SelectedPaymentSuccess value)
        selectedPaymentSuccess,
    required TResult Function(_SelectedPaymentFailed value)
        selectedPaymentFailed,
    required TResult Function(_GetPaymentItemsByCustomerIdSuccess value)
        getPaymentItemsByCustomerIdSuccess,
    required TResult Function(_GetPaymentItemsByCustomerIdFailed value)
        getPaymentItemsByCustomerIdFailed,
    required TResult Function(_GetTicInformationByFlightIdSuccess value)
        getTicInformationByFlightIdSuccess,
    required TResult Function(_GetTicInformationByFlightIdFailed value)
        getTicInformationByFlightIdFailed,
  }) {
    return getPaymentItemsByCustomerIdFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCustomerByIdSuccess value)? getCustomerByIdSuccess,
    TResult? Function(_getCustomerByIdFailed value)? getCustomerByIdFailed,
    TResult? Function(_SelectedPaymentSuccess value)? selectedPaymentSuccess,
    TResult? Function(_SelectedPaymentFailed value)? selectedPaymentFailed,
    TResult? Function(_GetPaymentItemsByCustomerIdSuccess value)?
        getPaymentItemsByCustomerIdSuccess,
    TResult? Function(_GetPaymentItemsByCustomerIdFailed value)?
        getPaymentItemsByCustomerIdFailed,
    TResult? Function(_GetTicInformationByFlightIdSuccess value)?
        getTicInformationByFlightIdSuccess,
    TResult? Function(_GetTicInformationByFlightIdFailed value)?
        getTicInformationByFlightIdFailed,
  }) {
    return getPaymentItemsByCustomerIdFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCustomerByIdSuccess value)? getCustomerByIdSuccess,
    TResult Function(_getCustomerByIdFailed value)? getCustomerByIdFailed,
    TResult Function(_SelectedPaymentSuccess value)? selectedPaymentSuccess,
    TResult Function(_SelectedPaymentFailed value)? selectedPaymentFailed,
    TResult Function(_GetPaymentItemsByCustomerIdSuccess value)?
        getPaymentItemsByCustomerIdSuccess,
    TResult Function(_GetPaymentItemsByCustomerIdFailed value)?
        getPaymentItemsByCustomerIdFailed,
    TResult Function(_GetTicInformationByFlightIdSuccess value)?
        getTicInformationByFlightIdSuccess,
    TResult Function(_GetTicInformationByFlightIdFailed value)?
        getTicInformationByFlightIdFailed,
    required TResult orElse(),
  }) {
    if (getPaymentItemsByCustomerIdFailed != null) {
      return getPaymentItemsByCustomerIdFailed(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentItemsByCustomerIdFailed extends CustomerDetailState {
  const factory _GetPaymentItemsByCustomerIdFailed(
      {required final CustomerDetailModelState data,
      required final String message}) = _$_GetPaymentItemsByCustomerIdFailed;
  const _GetPaymentItemsByCustomerIdFailed._() : super._();

  @override
  CustomerDetailModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetPaymentItemsByCustomerIdFailedCopyWith<
          _$_GetPaymentItemsByCustomerIdFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetTicInformationByFlightIdSuccessCopyWith<$Res>
    implements $CustomerDetailStateCopyWith<$Res> {
  factory _$$_GetTicInformationByFlightIdSuccessCopyWith(
          _$_GetTicInformationByFlightIdSuccess value,
          $Res Function(_$_GetTicInformationByFlightIdSuccess) then) =
      __$$_GetTicInformationByFlightIdSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerDetailModelState data});

  @override
  $CustomerDetailModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetTicInformationByFlightIdSuccessCopyWithImpl<$Res>
    extends _$CustomerDetailStateCopyWithImpl<$Res,
        _$_GetTicInformationByFlightIdSuccess>
    implements _$$_GetTicInformationByFlightIdSuccessCopyWith<$Res> {
  __$$_GetTicInformationByFlightIdSuccessCopyWithImpl(
      _$_GetTicInformationByFlightIdSuccess _value,
      $Res Function(_$_GetTicInformationByFlightIdSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetTicInformationByFlightIdSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerDetailModelState,
    ));
  }
}

/// @nodoc

class _$_GetTicInformationByFlightIdSuccess
    extends _GetTicInformationByFlightIdSuccess {
  const _$_GetTicInformationByFlightIdSuccess({required this.data}) : super._();

  @override
  final CustomerDetailModelState data;

  @override
  String toString() {
    return 'CustomerDetailState.getTicInformationByFlightIdSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTicInformationByFlightIdSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetTicInformationByFlightIdSuccessCopyWith<
          _$_GetTicInformationByFlightIdSuccess>
      get copyWith => __$$_GetTicInformationByFlightIdSuccessCopyWithImpl<
          _$_GetTicInformationByFlightIdSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerDetailModelState data) initial,
    required TResult Function(CustomerDetailModelState data, int loadingGroup)
        loading,
    required TResult Function(CustomerDetailModelState data)
        getCustomerByIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getCustomerByIdFailed,
    required TResult Function(CustomerDetailModelState data)
        selectedPaymentSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        selectedPaymentFailed,
    required TResult Function(CustomerDetailModelState data)
        getPaymentItemsByCustomerIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getPaymentItemsByCustomerIdFailed,
    required TResult Function(CustomerDetailModelState data)
        getTicInformationByFlightIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getTicInformationByFlightIdFailed,
  }) {
    return getTicInformationByFlightIdSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerDetailModelState data)? initial,
    TResult? Function(CustomerDetailModelState data, int loadingGroup)? loading,
    TResult? Function(CustomerDetailModelState data)? getCustomerByIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getCustomerByIdFailed,
    TResult? Function(CustomerDetailModelState data)? selectedPaymentSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        selectedPaymentFailed,
    TResult? Function(CustomerDetailModelState data)?
        getPaymentItemsByCustomerIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getPaymentItemsByCustomerIdFailed,
    TResult? Function(CustomerDetailModelState data)?
        getTicInformationByFlightIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getTicInformationByFlightIdFailed,
  }) {
    return getTicInformationByFlightIdSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerDetailModelState data)? initial,
    TResult Function(CustomerDetailModelState data, int loadingGroup)? loading,
    TResult Function(CustomerDetailModelState data)? getCustomerByIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getCustomerByIdFailed,
    TResult Function(CustomerDetailModelState data)? selectedPaymentSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        selectedPaymentFailed,
    TResult Function(CustomerDetailModelState data)?
        getPaymentItemsByCustomerIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getPaymentItemsByCustomerIdFailed,
    TResult Function(CustomerDetailModelState data)?
        getTicInformationByFlightIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getTicInformationByFlightIdFailed,
    required TResult orElse(),
  }) {
    if (getTicInformationByFlightIdSuccess != null) {
      return getTicInformationByFlightIdSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetCustomerByIdSuccess value)
        getCustomerByIdSuccess,
    required TResult Function(_getCustomerByIdFailed value)
        getCustomerByIdFailed,
    required TResult Function(_SelectedPaymentSuccess value)
        selectedPaymentSuccess,
    required TResult Function(_SelectedPaymentFailed value)
        selectedPaymentFailed,
    required TResult Function(_GetPaymentItemsByCustomerIdSuccess value)
        getPaymentItemsByCustomerIdSuccess,
    required TResult Function(_GetPaymentItemsByCustomerIdFailed value)
        getPaymentItemsByCustomerIdFailed,
    required TResult Function(_GetTicInformationByFlightIdSuccess value)
        getTicInformationByFlightIdSuccess,
    required TResult Function(_GetTicInformationByFlightIdFailed value)
        getTicInformationByFlightIdFailed,
  }) {
    return getTicInformationByFlightIdSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCustomerByIdSuccess value)? getCustomerByIdSuccess,
    TResult? Function(_getCustomerByIdFailed value)? getCustomerByIdFailed,
    TResult? Function(_SelectedPaymentSuccess value)? selectedPaymentSuccess,
    TResult? Function(_SelectedPaymentFailed value)? selectedPaymentFailed,
    TResult? Function(_GetPaymentItemsByCustomerIdSuccess value)?
        getPaymentItemsByCustomerIdSuccess,
    TResult? Function(_GetPaymentItemsByCustomerIdFailed value)?
        getPaymentItemsByCustomerIdFailed,
    TResult? Function(_GetTicInformationByFlightIdSuccess value)?
        getTicInformationByFlightIdSuccess,
    TResult? Function(_GetTicInformationByFlightIdFailed value)?
        getTicInformationByFlightIdFailed,
  }) {
    return getTicInformationByFlightIdSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCustomerByIdSuccess value)? getCustomerByIdSuccess,
    TResult Function(_getCustomerByIdFailed value)? getCustomerByIdFailed,
    TResult Function(_SelectedPaymentSuccess value)? selectedPaymentSuccess,
    TResult Function(_SelectedPaymentFailed value)? selectedPaymentFailed,
    TResult Function(_GetPaymentItemsByCustomerIdSuccess value)?
        getPaymentItemsByCustomerIdSuccess,
    TResult Function(_GetPaymentItemsByCustomerIdFailed value)?
        getPaymentItemsByCustomerIdFailed,
    TResult Function(_GetTicInformationByFlightIdSuccess value)?
        getTicInformationByFlightIdSuccess,
    TResult Function(_GetTicInformationByFlightIdFailed value)?
        getTicInformationByFlightIdFailed,
    required TResult orElse(),
  }) {
    if (getTicInformationByFlightIdSuccess != null) {
      return getTicInformationByFlightIdSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetTicInformationByFlightIdSuccess extends CustomerDetailState {
  const factory _GetTicInformationByFlightIdSuccess(
          {required final CustomerDetailModelState data}) =
      _$_GetTicInformationByFlightIdSuccess;
  const _GetTicInformationByFlightIdSuccess._() : super._();

  @override
  CustomerDetailModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetTicInformationByFlightIdSuccessCopyWith<
          _$_GetTicInformationByFlightIdSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetTicInformationByFlightIdFailedCopyWith<$Res>
    implements $CustomerDetailStateCopyWith<$Res> {
  factory _$$_GetTicInformationByFlightIdFailedCopyWith(
          _$_GetTicInformationByFlightIdFailed value,
          $Res Function(_$_GetTicInformationByFlightIdFailed) then) =
      __$$_GetTicInformationByFlightIdFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerDetailModelState data, String message});

  @override
  $CustomerDetailModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetTicInformationByFlightIdFailedCopyWithImpl<$Res>
    extends _$CustomerDetailStateCopyWithImpl<$Res,
        _$_GetTicInformationByFlightIdFailed>
    implements _$$_GetTicInformationByFlightIdFailedCopyWith<$Res> {
  __$$_GetTicInformationByFlightIdFailedCopyWithImpl(
      _$_GetTicInformationByFlightIdFailed _value,
      $Res Function(_$_GetTicInformationByFlightIdFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetTicInformationByFlightIdFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerDetailModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetTicInformationByFlightIdFailed
    extends _GetTicInformationByFlightIdFailed {
  const _$_GetTicInformationByFlightIdFailed(
      {required this.data, required this.message})
      : super._();

  @override
  final CustomerDetailModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'CustomerDetailState.getTicInformationByFlightIdFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTicInformationByFlightIdFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetTicInformationByFlightIdFailedCopyWith<
          _$_GetTicInformationByFlightIdFailed>
      get copyWith => __$$_GetTicInformationByFlightIdFailedCopyWithImpl<
          _$_GetTicInformationByFlightIdFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerDetailModelState data) initial,
    required TResult Function(CustomerDetailModelState data, int loadingGroup)
        loading,
    required TResult Function(CustomerDetailModelState data)
        getCustomerByIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getCustomerByIdFailed,
    required TResult Function(CustomerDetailModelState data)
        selectedPaymentSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        selectedPaymentFailed,
    required TResult Function(CustomerDetailModelState data)
        getPaymentItemsByCustomerIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getPaymentItemsByCustomerIdFailed,
    required TResult Function(CustomerDetailModelState data)
        getTicInformationByFlightIdSuccess,
    required TResult Function(CustomerDetailModelState data, String message)
        getTicInformationByFlightIdFailed,
  }) {
    return getTicInformationByFlightIdFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerDetailModelState data)? initial,
    TResult? Function(CustomerDetailModelState data, int loadingGroup)? loading,
    TResult? Function(CustomerDetailModelState data)? getCustomerByIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getCustomerByIdFailed,
    TResult? Function(CustomerDetailModelState data)? selectedPaymentSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        selectedPaymentFailed,
    TResult? Function(CustomerDetailModelState data)?
        getPaymentItemsByCustomerIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getPaymentItemsByCustomerIdFailed,
    TResult? Function(CustomerDetailModelState data)?
        getTicInformationByFlightIdSuccess,
    TResult? Function(CustomerDetailModelState data, String message)?
        getTicInformationByFlightIdFailed,
  }) {
    return getTicInformationByFlightIdFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerDetailModelState data)? initial,
    TResult Function(CustomerDetailModelState data, int loadingGroup)? loading,
    TResult Function(CustomerDetailModelState data)? getCustomerByIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getCustomerByIdFailed,
    TResult Function(CustomerDetailModelState data)? selectedPaymentSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        selectedPaymentFailed,
    TResult Function(CustomerDetailModelState data)?
        getPaymentItemsByCustomerIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getPaymentItemsByCustomerIdFailed,
    TResult Function(CustomerDetailModelState data)?
        getTicInformationByFlightIdSuccess,
    TResult Function(CustomerDetailModelState data, String message)?
        getTicInformationByFlightIdFailed,
    required TResult orElse(),
  }) {
    if (getTicInformationByFlightIdFailed != null) {
      return getTicInformationByFlightIdFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetCustomerByIdSuccess value)
        getCustomerByIdSuccess,
    required TResult Function(_getCustomerByIdFailed value)
        getCustomerByIdFailed,
    required TResult Function(_SelectedPaymentSuccess value)
        selectedPaymentSuccess,
    required TResult Function(_SelectedPaymentFailed value)
        selectedPaymentFailed,
    required TResult Function(_GetPaymentItemsByCustomerIdSuccess value)
        getPaymentItemsByCustomerIdSuccess,
    required TResult Function(_GetPaymentItemsByCustomerIdFailed value)
        getPaymentItemsByCustomerIdFailed,
    required TResult Function(_GetTicInformationByFlightIdSuccess value)
        getTicInformationByFlightIdSuccess,
    required TResult Function(_GetTicInformationByFlightIdFailed value)
        getTicInformationByFlightIdFailed,
  }) {
    return getTicInformationByFlightIdFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCustomerByIdSuccess value)? getCustomerByIdSuccess,
    TResult? Function(_getCustomerByIdFailed value)? getCustomerByIdFailed,
    TResult? Function(_SelectedPaymentSuccess value)? selectedPaymentSuccess,
    TResult? Function(_SelectedPaymentFailed value)? selectedPaymentFailed,
    TResult? Function(_GetPaymentItemsByCustomerIdSuccess value)?
        getPaymentItemsByCustomerIdSuccess,
    TResult? Function(_GetPaymentItemsByCustomerIdFailed value)?
        getPaymentItemsByCustomerIdFailed,
    TResult? Function(_GetTicInformationByFlightIdSuccess value)?
        getTicInformationByFlightIdSuccess,
    TResult? Function(_GetTicInformationByFlightIdFailed value)?
        getTicInformationByFlightIdFailed,
  }) {
    return getTicInformationByFlightIdFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCustomerByIdSuccess value)? getCustomerByIdSuccess,
    TResult Function(_getCustomerByIdFailed value)? getCustomerByIdFailed,
    TResult Function(_SelectedPaymentSuccess value)? selectedPaymentSuccess,
    TResult Function(_SelectedPaymentFailed value)? selectedPaymentFailed,
    TResult Function(_GetPaymentItemsByCustomerIdSuccess value)?
        getPaymentItemsByCustomerIdSuccess,
    TResult Function(_GetPaymentItemsByCustomerIdFailed value)?
        getPaymentItemsByCustomerIdFailed,
    TResult Function(_GetTicInformationByFlightIdSuccess value)?
        getTicInformationByFlightIdSuccess,
    TResult Function(_GetTicInformationByFlightIdFailed value)?
        getTicInformationByFlightIdFailed,
    required TResult orElse(),
  }) {
    if (getTicInformationByFlightIdFailed != null) {
      return getTicInformationByFlightIdFailed(this);
    }
    return orElse();
  }
}

abstract class _GetTicInformationByFlightIdFailed extends CustomerDetailState {
  const factory _GetTicInformationByFlightIdFailed(
      {required final CustomerDetailModelState data,
      required final String message}) = _$_GetTicInformationByFlightIdFailed;
  const _GetTicInformationByFlightIdFailed._() : super._();

  @override
  CustomerDetailModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetTicInformationByFlightIdFailedCopyWith<
          _$_GetTicInformationByFlightIdFailed>
      get copyWith => throw _privateConstructorUsedError;
}
