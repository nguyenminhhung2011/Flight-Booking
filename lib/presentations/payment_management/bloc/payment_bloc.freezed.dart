// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(List<DateTime>? dateRange, PaymentStatus? status,
            PaymentType? paymentMethod, int page, int perPage)
        fetchPaymentData,
    required TResult Function() openPaymentDetail,
    required TResult Function() deletePayment,
    required TResult Function(int page, int perPage) fetchListPaymentData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(List<DateTime>? dateRange, PaymentStatus? status,
            PaymentType? paymentMethod, int page, int perPage)?
        fetchPaymentData,
    TResult? Function()? openPaymentDetail,
    TResult? Function()? deletePayment,
    TResult? Function(int page, int perPage)? fetchListPaymentData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(List<DateTime>? dateRange, PaymentStatus? status,
            PaymentType? paymentMethod, int page, int perPage)?
        fetchPaymentData,
    TResult Function()? openPaymentDetail,
    TResult Function()? deletePayment,
    TResult Function(int page, int perPage)? fetchListPaymentData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_FetchPaymentData value) fetchPaymentData,
    required TResult Function(_OpenPaymentDetail value) openPaymentDetail,
    required TResult Function(_DeletePayment value) deletePayment,
    required TResult Function(_FetchListPaymentData value) fetchListPaymentData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_FetchPaymentData value)? fetchPaymentData,
    TResult? Function(_OpenPaymentDetail value)? openPaymentDetail,
    TResult? Function(_DeletePayment value)? deletePayment,
    TResult? Function(_FetchListPaymentData value)? fetchListPaymentData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_FetchPaymentData value)? fetchPaymentData,
    TResult Function(_OpenPaymentDetail value)? openPaymentDetail,
    TResult Function(_DeletePayment value)? deletePayment,
    TResult Function(_FetchListPaymentData value)? fetchListPaymentData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res, PaymentEvent>;
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res, $Val extends PaymentEvent>
    implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OnStartedCopyWith<$Res> {
  factory _$$_OnStartedCopyWith(
          _$_OnStarted value, $Res Function(_$_OnStarted) then) =
      __$$_OnStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnStartedCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_OnStarted>
    implements _$$_OnStartedCopyWith<$Res> {
  __$$_OnStartedCopyWithImpl(
      _$_OnStarted _value, $Res Function(_$_OnStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnStarted implements _OnStarted {
  const _$_OnStarted();

  @override
  String toString() {
    return 'PaymentEvent.onStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(List<DateTime>? dateRange, PaymentStatus? status,
            PaymentType? paymentMethod, int page, int perPage)
        fetchPaymentData,
    required TResult Function() openPaymentDetail,
    required TResult Function() deletePayment,
    required TResult Function(int page, int perPage) fetchListPaymentData,
  }) {
    return onStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(List<DateTime>? dateRange, PaymentStatus? status,
            PaymentType? paymentMethod, int page, int perPage)?
        fetchPaymentData,
    TResult? Function()? openPaymentDetail,
    TResult? Function()? deletePayment,
    TResult? Function(int page, int perPage)? fetchListPaymentData,
  }) {
    return onStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(List<DateTime>? dateRange, PaymentStatus? status,
            PaymentType? paymentMethod, int page, int perPage)?
        fetchPaymentData,
    TResult Function()? openPaymentDetail,
    TResult Function()? deletePayment,
    TResult Function(int page, int perPage)? fetchListPaymentData,
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
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_FetchPaymentData value) fetchPaymentData,
    required TResult Function(_OpenPaymentDetail value) openPaymentDetail,
    required TResult Function(_DeletePayment value) deletePayment,
    required TResult Function(_FetchListPaymentData value) fetchListPaymentData,
  }) {
    return onStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_FetchPaymentData value)? fetchPaymentData,
    TResult? Function(_OpenPaymentDetail value)? openPaymentDetail,
    TResult? Function(_DeletePayment value)? deletePayment,
    TResult? Function(_FetchListPaymentData value)? fetchListPaymentData,
  }) {
    return onStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_FetchPaymentData value)? fetchPaymentData,
    TResult Function(_OpenPaymentDetail value)? openPaymentDetail,
    TResult Function(_DeletePayment value)? deletePayment,
    TResult Function(_FetchListPaymentData value)? fetchListPaymentData,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(this);
    }
    return orElse();
  }
}

abstract class _OnStarted implements PaymentEvent {
  const factory _OnStarted() = _$_OnStarted;
}

/// @nodoc
abstract class _$$_FetchPaymentDataCopyWith<$Res> {
  factory _$$_FetchPaymentDataCopyWith(
          _$_FetchPaymentData value, $Res Function(_$_FetchPaymentData) then) =
      __$$_FetchPaymentDataCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<DateTime>? dateRange,
      PaymentStatus? status,
      PaymentType? paymentMethod,
      int page,
      int perPage});
}

/// @nodoc
class __$$_FetchPaymentDataCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_FetchPaymentData>
    implements _$$_FetchPaymentDataCopyWith<$Res> {
  __$$_FetchPaymentDataCopyWithImpl(
      _$_FetchPaymentData _value, $Res Function(_$_FetchPaymentData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateRange = freezed,
    Object? status = freezed,
    Object? paymentMethod = freezed,
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_$_FetchPaymentData(
      dateRange: freezed == dateRange
          ? _value._dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentType?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FetchPaymentData implements _FetchPaymentData {
  const _$_FetchPaymentData(
      {final List<DateTime>? dateRange,
      this.status,
      this.paymentMethod,
      this.page = 0,
      this.perPage = 10})
      : _dateRange = dateRange;

  final List<DateTime>? _dateRange;
  @override
  List<DateTime>? get dateRange {
    final value = _dateRange;
    if (value == null) return null;
    if (_dateRange is EqualUnmodifiableListView) return _dateRange;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PaymentStatus? status;
  @override
  final PaymentType? paymentMethod;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int perPage;

  @override
  String toString() {
    return 'PaymentEvent.fetchPaymentData(dateRange: $dateRange, status: $status, paymentMethod: $paymentMethod, page: $page, perPage: $perPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchPaymentData &&
            const DeepCollectionEquality()
                .equals(other._dateRange, _dateRange) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dateRange),
      status,
      paymentMethod,
      page,
      perPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchPaymentDataCopyWith<_$_FetchPaymentData> get copyWith =>
      __$$_FetchPaymentDataCopyWithImpl<_$_FetchPaymentData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(List<DateTime>? dateRange, PaymentStatus? status,
            PaymentType? paymentMethod, int page, int perPage)
        fetchPaymentData,
    required TResult Function() openPaymentDetail,
    required TResult Function() deletePayment,
    required TResult Function(int page, int perPage) fetchListPaymentData,
  }) {
    return fetchPaymentData(dateRange, status, paymentMethod, page, perPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(List<DateTime>? dateRange, PaymentStatus? status,
            PaymentType? paymentMethod, int page, int perPage)?
        fetchPaymentData,
    TResult? Function()? openPaymentDetail,
    TResult? Function()? deletePayment,
    TResult? Function(int page, int perPage)? fetchListPaymentData,
  }) {
    return fetchPaymentData?.call(
        dateRange, status, paymentMethod, page, perPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(List<DateTime>? dateRange, PaymentStatus? status,
            PaymentType? paymentMethod, int page, int perPage)?
        fetchPaymentData,
    TResult Function()? openPaymentDetail,
    TResult Function()? deletePayment,
    TResult Function(int page, int perPage)? fetchListPaymentData,
    required TResult orElse(),
  }) {
    if (fetchPaymentData != null) {
      return fetchPaymentData(dateRange, status, paymentMethod, page, perPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_FetchPaymentData value) fetchPaymentData,
    required TResult Function(_OpenPaymentDetail value) openPaymentDetail,
    required TResult Function(_DeletePayment value) deletePayment,
    required TResult Function(_FetchListPaymentData value) fetchListPaymentData,
  }) {
    return fetchPaymentData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_FetchPaymentData value)? fetchPaymentData,
    TResult? Function(_OpenPaymentDetail value)? openPaymentDetail,
    TResult? Function(_DeletePayment value)? deletePayment,
    TResult? Function(_FetchListPaymentData value)? fetchListPaymentData,
  }) {
    return fetchPaymentData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_FetchPaymentData value)? fetchPaymentData,
    TResult Function(_OpenPaymentDetail value)? openPaymentDetail,
    TResult Function(_DeletePayment value)? deletePayment,
    TResult Function(_FetchListPaymentData value)? fetchListPaymentData,
    required TResult orElse(),
  }) {
    if (fetchPaymentData != null) {
      return fetchPaymentData(this);
    }
    return orElse();
  }
}

abstract class _FetchPaymentData implements PaymentEvent {
  const factory _FetchPaymentData(
      {final List<DateTime>? dateRange,
      final PaymentStatus? status,
      final PaymentType? paymentMethod,
      final int page,
      final int perPage}) = _$_FetchPaymentData;

  List<DateTime>? get dateRange;
  PaymentStatus? get status;
  PaymentType? get paymentMethod;
  int get page;
  int get perPage;
  @JsonKey(ignore: true)
  _$$_FetchPaymentDataCopyWith<_$_FetchPaymentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OpenPaymentDetailCopyWith<$Res> {
  factory _$$_OpenPaymentDetailCopyWith(_$_OpenPaymentDetail value,
          $Res Function(_$_OpenPaymentDetail) then) =
      __$$_OpenPaymentDetailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OpenPaymentDetailCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_OpenPaymentDetail>
    implements _$$_OpenPaymentDetailCopyWith<$Res> {
  __$$_OpenPaymentDetailCopyWithImpl(
      _$_OpenPaymentDetail _value, $Res Function(_$_OpenPaymentDetail) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OpenPaymentDetail implements _OpenPaymentDetail {
  const _$_OpenPaymentDetail();

  @override
  String toString() {
    return 'PaymentEvent.openPaymentDetail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OpenPaymentDetail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(List<DateTime>? dateRange, PaymentStatus? status,
            PaymentType? paymentMethod, int page, int perPage)
        fetchPaymentData,
    required TResult Function() openPaymentDetail,
    required TResult Function() deletePayment,
    required TResult Function(int page, int perPage) fetchListPaymentData,
  }) {
    return openPaymentDetail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(List<DateTime>? dateRange, PaymentStatus? status,
            PaymentType? paymentMethod, int page, int perPage)?
        fetchPaymentData,
    TResult? Function()? openPaymentDetail,
    TResult? Function()? deletePayment,
    TResult? Function(int page, int perPage)? fetchListPaymentData,
  }) {
    return openPaymentDetail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(List<DateTime>? dateRange, PaymentStatus? status,
            PaymentType? paymentMethod, int page, int perPage)?
        fetchPaymentData,
    TResult Function()? openPaymentDetail,
    TResult Function()? deletePayment,
    TResult Function(int page, int perPage)? fetchListPaymentData,
    required TResult orElse(),
  }) {
    if (openPaymentDetail != null) {
      return openPaymentDetail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_FetchPaymentData value) fetchPaymentData,
    required TResult Function(_OpenPaymentDetail value) openPaymentDetail,
    required TResult Function(_DeletePayment value) deletePayment,
    required TResult Function(_FetchListPaymentData value) fetchListPaymentData,
  }) {
    return openPaymentDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_FetchPaymentData value)? fetchPaymentData,
    TResult? Function(_OpenPaymentDetail value)? openPaymentDetail,
    TResult? Function(_DeletePayment value)? deletePayment,
    TResult? Function(_FetchListPaymentData value)? fetchListPaymentData,
  }) {
    return openPaymentDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_FetchPaymentData value)? fetchPaymentData,
    TResult Function(_OpenPaymentDetail value)? openPaymentDetail,
    TResult Function(_DeletePayment value)? deletePayment,
    TResult Function(_FetchListPaymentData value)? fetchListPaymentData,
    required TResult orElse(),
  }) {
    if (openPaymentDetail != null) {
      return openPaymentDetail(this);
    }
    return orElse();
  }
}

abstract class _OpenPaymentDetail implements PaymentEvent {
  const factory _OpenPaymentDetail() = _$_OpenPaymentDetail;
}

/// @nodoc
abstract class _$$_DeletePaymentCopyWith<$Res> {
  factory _$$_DeletePaymentCopyWith(
          _$_DeletePayment value, $Res Function(_$_DeletePayment) then) =
      __$$_DeletePaymentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeletePaymentCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_DeletePayment>
    implements _$$_DeletePaymentCopyWith<$Res> {
  __$$_DeletePaymentCopyWithImpl(
      _$_DeletePayment _value, $Res Function(_$_DeletePayment) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeletePayment implements _DeletePayment {
  const _$_DeletePayment();

  @override
  String toString() {
    return 'PaymentEvent.deletePayment()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeletePayment);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(List<DateTime>? dateRange, PaymentStatus? status,
            PaymentType? paymentMethod, int page, int perPage)
        fetchPaymentData,
    required TResult Function() openPaymentDetail,
    required TResult Function() deletePayment,
    required TResult Function(int page, int perPage) fetchListPaymentData,
  }) {
    return deletePayment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(List<DateTime>? dateRange, PaymentStatus? status,
            PaymentType? paymentMethod, int page, int perPage)?
        fetchPaymentData,
    TResult? Function()? openPaymentDetail,
    TResult? Function()? deletePayment,
    TResult? Function(int page, int perPage)? fetchListPaymentData,
  }) {
    return deletePayment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(List<DateTime>? dateRange, PaymentStatus? status,
            PaymentType? paymentMethod, int page, int perPage)?
        fetchPaymentData,
    TResult Function()? openPaymentDetail,
    TResult Function()? deletePayment,
    TResult Function(int page, int perPage)? fetchListPaymentData,
    required TResult orElse(),
  }) {
    if (deletePayment != null) {
      return deletePayment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_FetchPaymentData value) fetchPaymentData,
    required TResult Function(_OpenPaymentDetail value) openPaymentDetail,
    required TResult Function(_DeletePayment value) deletePayment,
    required TResult Function(_FetchListPaymentData value) fetchListPaymentData,
  }) {
    return deletePayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_FetchPaymentData value)? fetchPaymentData,
    TResult? Function(_OpenPaymentDetail value)? openPaymentDetail,
    TResult? Function(_DeletePayment value)? deletePayment,
    TResult? Function(_FetchListPaymentData value)? fetchListPaymentData,
  }) {
    return deletePayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_FetchPaymentData value)? fetchPaymentData,
    TResult Function(_OpenPaymentDetail value)? openPaymentDetail,
    TResult Function(_DeletePayment value)? deletePayment,
    TResult Function(_FetchListPaymentData value)? fetchListPaymentData,
    required TResult orElse(),
  }) {
    if (deletePayment != null) {
      return deletePayment(this);
    }
    return orElse();
  }
}

abstract class _DeletePayment implements PaymentEvent {
  const factory _DeletePayment() = _$_DeletePayment;
}

/// @nodoc
abstract class _$$_FetchListPaymentDataCopyWith<$Res> {
  factory _$$_FetchListPaymentDataCopyWith(_$_FetchListPaymentData value,
          $Res Function(_$_FetchListPaymentData) then) =
      __$$_FetchListPaymentDataCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, int perPage});
}

/// @nodoc
class __$$_FetchListPaymentDataCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_FetchListPaymentData>
    implements _$$_FetchListPaymentDataCopyWith<$Res> {
  __$$_FetchListPaymentDataCopyWithImpl(_$_FetchListPaymentData _value,
      $Res Function(_$_FetchListPaymentData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_$_FetchListPaymentData(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FetchListPaymentData implements _FetchListPaymentData {
  const _$_FetchListPaymentData({this.page = 0, this.perPage = 10});

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int perPage;

  @override
  String toString() {
    return 'PaymentEvent.fetchListPaymentData(page: $page, perPage: $perPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchListPaymentData &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, perPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchListPaymentDataCopyWith<_$_FetchListPaymentData> get copyWith =>
      __$$_FetchListPaymentDataCopyWithImpl<_$_FetchListPaymentData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(List<DateTime>? dateRange, PaymentStatus? status,
            PaymentType? paymentMethod, int page, int perPage)
        fetchPaymentData,
    required TResult Function() openPaymentDetail,
    required TResult Function() deletePayment,
    required TResult Function(int page, int perPage) fetchListPaymentData,
  }) {
    return fetchListPaymentData(page, perPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(List<DateTime>? dateRange, PaymentStatus? status,
            PaymentType? paymentMethod, int page, int perPage)?
        fetchPaymentData,
    TResult? Function()? openPaymentDetail,
    TResult? Function()? deletePayment,
    TResult? Function(int page, int perPage)? fetchListPaymentData,
  }) {
    return fetchListPaymentData?.call(page, perPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(List<DateTime>? dateRange, PaymentStatus? status,
            PaymentType? paymentMethod, int page, int perPage)?
        fetchPaymentData,
    TResult Function()? openPaymentDetail,
    TResult Function()? deletePayment,
    TResult Function(int page, int perPage)? fetchListPaymentData,
    required TResult orElse(),
  }) {
    if (fetchListPaymentData != null) {
      return fetchListPaymentData(page, perPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_FetchPaymentData value) fetchPaymentData,
    required TResult Function(_OpenPaymentDetail value) openPaymentDetail,
    required TResult Function(_DeletePayment value) deletePayment,
    required TResult Function(_FetchListPaymentData value) fetchListPaymentData,
  }) {
    return fetchListPaymentData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_FetchPaymentData value)? fetchPaymentData,
    TResult? Function(_OpenPaymentDetail value)? openPaymentDetail,
    TResult? Function(_DeletePayment value)? deletePayment,
    TResult? Function(_FetchListPaymentData value)? fetchListPaymentData,
  }) {
    return fetchListPaymentData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_FetchPaymentData value)? fetchPaymentData,
    TResult Function(_OpenPaymentDetail value)? openPaymentDetail,
    TResult Function(_DeletePayment value)? deletePayment,
    TResult Function(_FetchListPaymentData value)? fetchListPaymentData,
    required TResult orElse(),
  }) {
    if (fetchListPaymentData != null) {
      return fetchListPaymentData(this);
    }
    return orElse();
  }
}

abstract class _FetchListPaymentData implements PaymentEvent {
  const factory _FetchListPaymentData({final int page, final int perPage}) =
      _$_FetchListPaymentData;

  int get page;
  int get perPage;
  @JsonKey(ignore: true)
  _$$_FetchListPaymentDataCopyWith<_$_FetchListPaymentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentState {
  PaymentModelStateData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentModelStateData data) initial,
    required TResult Function(PaymentModelStateData data) loading,
    required TResult Function(PaymentModelStateData data)
        fetchPaymentDataSuccess,
    required TResult Function(PaymentModelStateData data) deletePaymentSuccess,
    required TResult Function(PaymentModelStateData data)
        openPaymentDetailSuccess,
    required TResult Function(PaymentModelStateData data)
        fetchListPaymentDataSuccess,
    required TResult Function(PaymentModelStateData data, String message)
        paymentDataFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentModelStateData data)? initial,
    TResult? Function(PaymentModelStateData data)? loading,
    TResult? Function(PaymentModelStateData data)? fetchPaymentDataSuccess,
    TResult? Function(PaymentModelStateData data)? deletePaymentSuccess,
    TResult? Function(PaymentModelStateData data)? openPaymentDetailSuccess,
    TResult? Function(PaymentModelStateData data)? fetchListPaymentDataSuccess,
    TResult? Function(PaymentModelStateData data, String message)?
        paymentDataFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentModelStateData data)? initial,
    TResult Function(PaymentModelStateData data)? loading,
    TResult Function(PaymentModelStateData data)? fetchPaymentDataSuccess,
    TResult Function(PaymentModelStateData data)? deletePaymentSuccess,
    TResult Function(PaymentModelStateData data)? openPaymentDetailSuccess,
    TResult Function(PaymentModelStateData data)? fetchListPaymentDataSuccess,
    TResult Function(PaymentModelStateData data, String message)?
        paymentDataFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchPaymentDataSuccess value)
        fetchPaymentDataSuccess,
    required TResult Function(_DeletePaymentSuccess value) deletePaymentSuccess,
    required TResult Function(_OpenPaymentDetailSuccess value)
        openPaymentDetailSuccess,
    required TResult Function(_FetchListPaymentDataSuccess value)
        fetchListPaymentDataSuccess,
    required TResult Function(_PaymentDataFailedState value)
        paymentDataFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchPaymentDataSuccess value)? fetchPaymentDataSuccess,
    TResult? Function(_DeletePaymentSuccess value)? deletePaymentSuccess,
    TResult? Function(_OpenPaymentDetailSuccess value)?
        openPaymentDetailSuccess,
    TResult? Function(_FetchListPaymentDataSuccess value)?
        fetchListPaymentDataSuccess,
    TResult? Function(_PaymentDataFailedState value)? paymentDataFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchPaymentDataSuccess value)? fetchPaymentDataSuccess,
    TResult Function(_DeletePaymentSuccess value)? deletePaymentSuccess,
    TResult Function(_OpenPaymentDetailSuccess value)? openPaymentDetailSuccess,
    TResult Function(_FetchListPaymentDataSuccess value)?
        fetchListPaymentDataSuccess,
    TResult Function(_PaymentDataFailedState value)? paymentDataFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
  @useResult
  $Res call({PaymentModelStateData data});

  $PaymentModelStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

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
              as PaymentModelStateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentModelStateDataCopyWith<$Res> get data {
    return $PaymentModelStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentModelStateData data});

  @override
  $PaymentModelStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_Initial>
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
              as PaymentModelStateData,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.data = const PaymentModelStateData(
          payments: [],
          totalData: TotalStatisticalData(),
          revenue: Revenue(),
          statusData: PaymentStatusStateData(),
          ticketTierData: TicketTierData())});

  @override
  @JsonKey()
  final PaymentModelStateData data;

  @override
  String toString() {
    return 'PaymentState.initial(data: $data)';
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
    required TResult Function(PaymentModelStateData data) initial,
    required TResult Function(PaymentModelStateData data) loading,
    required TResult Function(PaymentModelStateData data)
        fetchPaymentDataSuccess,
    required TResult Function(PaymentModelStateData data) deletePaymentSuccess,
    required TResult Function(PaymentModelStateData data)
        openPaymentDetailSuccess,
    required TResult Function(PaymentModelStateData data)
        fetchListPaymentDataSuccess,
    required TResult Function(PaymentModelStateData data, String message)
        paymentDataFailedState,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentModelStateData data)? initial,
    TResult? Function(PaymentModelStateData data)? loading,
    TResult? Function(PaymentModelStateData data)? fetchPaymentDataSuccess,
    TResult? Function(PaymentModelStateData data)? deletePaymentSuccess,
    TResult? Function(PaymentModelStateData data)? openPaymentDetailSuccess,
    TResult? Function(PaymentModelStateData data)? fetchListPaymentDataSuccess,
    TResult? Function(PaymentModelStateData data, String message)?
        paymentDataFailedState,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentModelStateData data)? initial,
    TResult Function(PaymentModelStateData data)? loading,
    TResult Function(PaymentModelStateData data)? fetchPaymentDataSuccess,
    TResult Function(PaymentModelStateData data)? deletePaymentSuccess,
    TResult Function(PaymentModelStateData data)? openPaymentDetailSuccess,
    TResult Function(PaymentModelStateData data)? fetchListPaymentDataSuccess,
    TResult Function(PaymentModelStateData data, String message)?
        paymentDataFailedState,
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
    required TResult Function(_FetchPaymentDataSuccess value)
        fetchPaymentDataSuccess,
    required TResult Function(_DeletePaymentSuccess value) deletePaymentSuccess,
    required TResult Function(_OpenPaymentDetailSuccess value)
        openPaymentDetailSuccess,
    required TResult Function(_FetchListPaymentDataSuccess value)
        fetchListPaymentDataSuccess,
    required TResult Function(_PaymentDataFailedState value)
        paymentDataFailedState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchPaymentDataSuccess value)? fetchPaymentDataSuccess,
    TResult? Function(_DeletePaymentSuccess value)? deletePaymentSuccess,
    TResult? Function(_OpenPaymentDetailSuccess value)?
        openPaymentDetailSuccess,
    TResult? Function(_FetchListPaymentDataSuccess value)?
        fetchListPaymentDataSuccess,
    TResult? Function(_PaymentDataFailedState value)? paymentDataFailedState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchPaymentDataSuccess value)? fetchPaymentDataSuccess,
    TResult Function(_DeletePaymentSuccess value)? deletePaymentSuccess,
    TResult Function(_OpenPaymentDetailSuccess value)? openPaymentDetailSuccess,
    TResult Function(_FetchListPaymentDataSuccess value)?
        fetchListPaymentDataSuccess,
    TResult Function(_PaymentDataFailedState value)? paymentDataFailedState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PaymentState {
  const factory _Initial({final PaymentModelStateData data}) = _$_Initial;

  @override
  PaymentModelStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentModelStateData data});

  @override
  $PaymentModelStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_Loading>
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
              as PaymentModelStateData,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({required this.data});

  @override
  final PaymentModelStateData data;

  @override
  String toString() {
    return 'PaymentState.loading(data: $data)';
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
    required TResult Function(PaymentModelStateData data) initial,
    required TResult Function(PaymentModelStateData data) loading,
    required TResult Function(PaymentModelStateData data)
        fetchPaymentDataSuccess,
    required TResult Function(PaymentModelStateData data) deletePaymentSuccess,
    required TResult Function(PaymentModelStateData data)
        openPaymentDetailSuccess,
    required TResult Function(PaymentModelStateData data)
        fetchListPaymentDataSuccess,
    required TResult Function(PaymentModelStateData data, String message)
        paymentDataFailedState,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentModelStateData data)? initial,
    TResult? Function(PaymentModelStateData data)? loading,
    TResult? Function(PaymentModelStateData data)? fetchPaymentDataSuccess,
    TResult? Function(PaymentModelStateData data)? deletePaymentSuccess,
    TResult? Function(PaymentModelStateData data)? openPaymentDetailSuccess,
    TResult? Function(PaymentModelStateData data)? fetchListPaymentDataSuccess,
    TResult? Function(PaymentModelStateData data, String message)?
        paymentDataFailedState,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentModelStateData data)? initial,
    TResult Function(PaymentModelStateData data)? loading,
    TResult Function(PaymentModelStateData data)? fetchPaymentDataSuccess,
    TResult Function(PaymentModelStateData data)? deletePaymentSuccess,
    TResult Function(PaymentModelStateData data)? openPaymentDetailSuccess,
    TResult Function(PaymentModelStateData data)? fetchListPaymentDataSuccess,
    TResult Function(PaymentModelStateData data, String message)?
        paymentDataFailedState,
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
    required TResult Function(_FetchPaymentDataSuccess value)
        fetchPaymentDataSuccess,
    required TResult Function(_DeletePaymentSuccess value) deletePaymentSuccess,
    required TResult Function(_OpenPaymentDetailSuccess value)
        openPaymentDetailSuccess,
    required TResult Function(_FetchListPaymentDataSuccess value)
        fetchListPaymentDataSuccess,
    required TResult Function(_PaymentDataFailedState value)
        paymentDataFailedState,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchPaymentDataSuccess value)? fetchPaymentDataSuccess,
    TResult? Function(_DeletePaymentSuccess value)? deletePaymentSuccess,
    TResult? Function(_OpenPaymentDetailSuccess value)?
        openPaymentDetailSuccess,
    TResult? Function(_FetchListPaymentDataSuccess value)?
        fetchListPaymentDataSuccess,
    TResult? Function(_PaymentDataFailedState value)? paymentDataFailedState,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchPaymentDataSuccess value)? fetchPaymentDataSuccess,
    TResult Function(_DeletePaymentSuccess value)? deletePaymentSuccess,
    TResult Function(_OpenPaymentDetailSuccess value)? openPaymentDetailSuccess,
    TResult Function(_FetchListPaymentDataSuccess value)?
        fetchListPaymentDataSuccess,
    TResult Function(_PaymentDataFailedState value)? paymentDataFailedState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PaymentState {
  const factory _Loading({required final PaymentModelStateData data}) =
      _$_Loading;

  @override
  PaymentModelStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchPaymentDataSuccessCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$_FetchPaymentDataSuccessCopyWith(_$_FetchPaymentDataSuccess value,
          $Res Function(_$_FetchPaymentDataSuccess) then) =
      __$$_FetchPaymentDataSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentModelStateData data});

  @override
  $PaymentModelStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FetchPaymentDataSuccessCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_FetchPaymentDataSuccess>
    implements _$$_FetchPaymentDataSuccessCopyWith<$Res> {
  __$$_FetchPaymentDataSuccessCopyWithImpl(_$_FetchPaymentDataSuccess _value,
      $Res Function(_$_FetchPaymentDataSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_FetchPaymentDataSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentModelStateData,
    ));
  }
}

/// @nodoc

class _$_FetchPaymentDataSuccess implements _FetchPaymentDataSuccess {
  const _$_FetchPaymentDataSuccess({required this.data});

  @override
  final PaymentModelStateData data;

  @override
  String toString() {
    return 'PaymentState.fetchPaymentDataSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchPaymentDataSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchPaymentDataSuccessCopyWith<_$_FetchPaymentDataSuccess>
      get copyWith =>
          __$$_FetchPaymentDataSuccessCopyWithImpl<_$_FetchPaymentDataSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentModelStateData data) initial,
    required TResult Function(PaymentModelStateData data) loading,
    required TResult Function(PaymentModelStateData data)
        fetchPaymentDataSuccess,
    required TResult Function(PaymentModelStateData data) deletePaymentSuccess,
    required TResult Function(PaymentModelStateData data)
        openPaymentDetailSuccess,
    required TResult Function(PaymentModelStateData data)
        fetchListPaymentDataSuccess,
    required TResult Function(PaymentModelStateData data, String message)
        paymentDataFailedState,
  }) {
    return fetchPaymentDataSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentModelStateData data)? initial,
    TResult? Function(PaymentModelStateData data)? loading,
    TResult? Function(PaymentModelStateData data)? fetchPaymentDataSuccess,
    TResult? Function(PaymentModelStateData data)? deletePaymentSuccess,
    TResult? Function(PaymentModelStateData data)? openPaymentDetailSuccess,
    TResult? Function(PaymentModelStateData data)? fetchListPaymentDataSuccess,
    TResult? Function(PaymentModelStateData data, String message)?
        paymentDataFailedState,
  }) {
    return fetchPaymentDataSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentModelStateData data)? initial,
    TResult Function(PaymentModelStateData data)? loading,
    TResult Function(PaymentModelStateData data)? fetchPaymentDataSuccess,
    TResult Function(PaymentModelStateData data)? deletePaymentSuccess,
    TResult Function(PaymentModelStateData data)? openPaymentDetailSuccess,
    TResult Function(PaymentModelStateData data)? fetchListPaymentDataSuccess,
    TResult Function(PaymentModelStateData data, String message)?
        paymentDataFailedState,
    required TResult orElse(),
  }) {
    if (fetchPaymentDataSuccess != null) {
      return fetchPaymentDataSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchPaymentDataSuccess value)
        fetchPaymentDataSuccess,
    required TResult Function(_DeletePaymentSuccess value) deletePaymentSuccess,
    required TResult Function(_OpenPaymentDetailSuccess value)
        openPaymentDetailSuccess,
    required TResult Function(_FetchListPaymentDataSuccess value)
        fetchListPaymentDataSuccess,
    required TResult Function(_PaymentDataFailedState value)
        paymentDataFailedState,
  }) {
    return fetchPaymentDataSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchPaymentDataSuccess value)? fetchPaymentDataSuccess,
    TResult? Function(_DeletePaymentSuccess value)? deletePaymentSuccess,
    TResult? Function(_OpenPaymentDetailSuccess value)?
        openPaymentDetailSuccess,
    TResult? Function(_FetchListPaymentDataSuccess value)?
        fetchListPaymentDataSuccess,
    TResult? Function(_PaymentDataFailedState value)? paymentDataFailedState,
  }) {
    return fetchPaymentDataSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchPaymentDataSuccess value)? fetchPaymentDataSuccess,
    TResult Function(_DeletePaymentSuccess value)? deletePaymentSuccess,
    TResult Function(_OpenPaymentDetailSuccess value)? openPaymentDetailSuccess,
    TResult Function(_FetchListPaymentDataSuccess value)?
        fetchListPaymentDataSuccess,
    TResult Function(_PaymentDataFailedState value)? paymentDataFailedState,
    required TResult orElse(),
  }) {
    if (fetchPaymentDataSuccess != null) {
      return fetchPaymentDataSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchPaymentDataSuccess implements PaymentState {
  const factory _FetchPaymentDataSuccess(
      {required final PaymentModelStateData data}) = _$_FetchPaymentDataSuccess;

  @override
  PaymentModelStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$_FetchPaymentDataSuccessCopyWith<_$_FetchPaymentDataSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeletePaymentSuccessCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$_DeletePaymentSuccessCopyWith(_$_DeletePaymentSuccess value,
          $Res Function(_$_DeletePaymentSuccess) then) =
      __$$_DeletePaymentSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentModelStateData data});

  @override
  $PaymentModelStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_DeletePaymentSuccessCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_DeletePaymentSuccess>
    implements _$$_DeletePaymentSuccessCopyWith<$Res> {
  __$$_DeletePaymentSuccessCopyWithImpl(_$_DeletePaymentSuccess _value,
      $Res Function(_$_DeletePaymentSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_DeletePaymentSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentModelStateData,
    ));
  }
}

/// @nodoc

class _$_DeletePaymentSuccess implements _DeletePaymentSuccess {
  const _$_DeletePaymentSuccess({required this.data});

  @override
  final PaymentModelStateData data;

  @override
  String toString() {
    return 'PaymentState.deletePaymentSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeletePaymentSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeletePaymentSuccessCopyWith<_$_DeletePaymentSuccess> get copyWith =>
      __$$_DeletePaymentSuccessCopyWithImpl<_$_DeletePaymentSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentModelStateData data) initial,
    required TResult Function(PaymentModelStateData data) loading,
    required TResult Function(PaymentModelStateData data)
        fetchPaymentDataSuccess,
    required TResult Function(PaymentModelStateData data) deletePaymentSuccess,
    required TResult Function(PaymentModelStateData data)
        openPaymentDetailSuccess,
    required TResult Function(PaymentModelStateData data)
        fetchListPaymentDataSuccess,
    required TResult Function(PaymentModelStateData data, String message)
        paymentDataFailedState,
  }) {
    return deletePaymentSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentModelStateData data)? initial,
    TResult? Function(PaymentModelStateData data)? loading,
    TResult? Function(PaymentModelStateData data)? fetchPaymentDataSuccess,
    TResult? Function(PaymentModelStateData data)? deletePaymentSuccess,
    TResult? Function(PaymentModelStateData data)? openPaymentDetailSuccess,
    TResult? Function(PaymentModelStateData data)? fetchListPaymentDataSuccess,
    TResult? Function(PaymentModelStateData data, String message)?
        paymentDataFailedState,
  }) {
    return deletePaymentSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentModelStateData data)? initial,
    TResult Function(PaymentModelStateData data)? loading,
    TResult Function(PaymentModelStateData data)? fetchPaymentDataSuccess,
    TResult Function(PaymentModelStateData data)? deletePaymentSuccess,
    TResult Function(PaymentModelStateData data)? openPaymentDetailSuccess,
    TResult Function(PaymentModelStateData data)? fetchListPaymentDataSuccess,
    TResult Function(PaymentModelStateData data, String message)?
        paymentDataFailedState,
    required TResult orElse(),
  }) {
    if (deletePaymentSuccess != null) {
      return deletePaymentSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchPaymentDataSuccess value)
        fetchPaymentDataSuccess,
    required TResult Function(_DeletePaymentSuccess value) deletePaymentSuccess,
    required TResult Function(_OpenPaymentDetailSuccess value)
        openPaymentDetailSuccess,
    required TResult Function(_FetchListPaymentDataSuccess value)
        fetchListPaymentDataSuccess,
    required TResult Function(_PaymentDataFailedState value)
        paymentDataFailedState,
  }) {
    return deletePaymentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchPaymentDataSuccess value)? fetchPaymentDataSuccess,
    TResult? Function(_DeletePaymentSuccess value)? deletePaymentSuccess,
    TResult? Function(_OpenPaymentDetailSuccess value)?
        openPaymentDetailSuccess,
    TResult? Function(_FetchListPaymentDataSuccess value)?
        fetchListPaymentDataSuccess,
    TResult? Function(_PaymentDataFailedState value)? paymentDataFailedState,
  }) {
    return deletePaymentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchPaymentDataSuccess value)? fetchPaymentDataSuccess,
    TResult Function(_DeletePaymentSuccess value)? deletePaymentSuccess,
    TResult Function(_OpenPaymentDetailSuccess value)? openPaymentDetailSuccess,
    TResult Function(_FetchListPaymentDataSuccess value)?
        fetchListPaymentDataSuccess,
    TResult Function(_PaymentDataFailedState value)? paymentDataFailedState,
    required TResult orElse(),
  }) {
    if (deletePaymentSuccess != null) {
      return deletePaymentSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeletePaymentSuccess implements PaymentState {
  const factory _DeletePaymentSuccess(
      {required final PaymentModelStateData data}) = _$_DeletePaymentSuccess;

  @override
  PaymentModelStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$_DeletePaymentSuccessCopyWith<_$_DeletePaymentSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OpenPaymentDetailSuccessCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$_OpenPaymentDetailSuccessCopyWith(
          _$_OpenPaymentDetailSuccess value,
          $Res Function(_$_OpenPaymentDetailSuccess) then) =
      __$$_OpenPaymentDetailSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentModelStateData data});

  @override
  $PaymentModelStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_OpenPaymentDetailSuccessCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_OpenPaymentDetailSuccess>
    implements _$$_OpenPaymentDetailSuccessCopyWith<$Res> {
  __$$_OpenPaymentDetailSuccessCopyWithImpl(_$_OpenPaymentDetailSuccess _value,
      $Res Function(_$_OpenPaymentDetailSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_OpenPaymentDetailSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentModelStateData,
    ));
  }
}

/// @nodoc

class _$_OpenPaymentDetailSuccess implements _OpenPaymentDetailSuccess {
  const _$_OpenPaymentDetailSuccess({required this.data});

  @override
  final PaymentModelStateData data;

  @override
  String toString() {
    return 'PaymentState.openPaymentDetailSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenPaymentDetailSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenPaymentDetailSuccessCopyWith<_$_OpenPaymentDetailSuccess>
      get copyWith => __$$_OpenPaymentDetailSuccessCopyWithImpl<
          _$_OpenPaymentDetailSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentModelStateData data) initial,
    required TResult Function(PaymentModelStateData data) loading,
    required TResult Function(PaymentModelStateData data)
        fetchPaymentDataSuccess,
    required TResult Function(PaymentModelStateData data) deletePaymentSuccess,
    required TResult Function(PaymentModelStateData data)
        openPaymentDetailSuccess,
    required TResult Function(PaymentModelStateData data)
        fetchListPaymentDataSuccess,
    required TResult Function(PaymentModelStateData data, String message)
        paymentDataFailedState,
  }) {
    return openPaymentDetailSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentModelStateData data)? initial,
    TResult? Function(PaymentModelStateData data)? loading,
    TResult? Function(PaymentModelStateData data)? fetchPaymentDataSuccess,
    TResult? Function(PaymentModelStateData data)? deletePaymentSuccess,
    TResult? Function(PaymentModelStateData data)? openPaymentDetailSuccess,
    TResult? Function(PaymentModelStateData data)? fetchListPaymentDataSuccess,
    TResult? Function(PaymentModelStateData data, String message)?
        paymentDataFailedState,
  }) {
    return openPaymentDetailSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentModelStateData data)? initial,
    TResult Function(PaymentModelStateData data)? loading,
    TResult Function(PaymentModelStateData data)? fetchPaymentDataSuccess,
    TResult Function(PaymentModelStateData data)? deletePaymentSuccess,
    TResult Function(PaymentModelStateData data)? openPaymentDetailSuccess,
    TResult Function(PaymentModelStateData data)? fetchListPaymentDataSuccess,
    TResult Function(PaymentModelStateData data, String message)?
        paymentDataFailedState,
    required TResult orElse(),
  }) {
    if (openPaymentDetailSuccess != null) {
      return openPaymentDetailSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchPaymentDataSuccess value)
        fetchPaymentDataSuccess,
    required TResult Function(_DeletePaymentSuccess value) deletePaymentSuccess,
    required TResult Function(_OpenPaymentDetailSuccess value)
        openPaymentDetailSuccess,
    required TResult Function(_FetchListPaymentDataSuccess value)
        fetchListPaymentDataSuccess,
    required TResult Function(_PaymentDataFailedState value)
        paymentDataFailedState,
  }) {
    return openPaymentDetailSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchPaymentDataSuccess value)? fetchPaymentDataSuccess,
    TResult? Function(_DeletePaymentSuccess value)? deletePaymentSuccess,
    TResult? Function(_OpenPaymentDetailSuccess value)?
        openPaymentDetailSuccess,
    TResult? Function(_FetchListPaymentDataSuccess value)?
        fetchListPaymentDataSuccess,
    TResult? Function(_PaymentDataFailedState value)? paymentDataFailedState,
  }) {
    return openPaymentDetailSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchPaymentDataSuccess value)? fetchPaymentDataSuccess,
    TResult Function(_DeletePaymentSuccess value)? deletePaymentSuccess,
    TResult Function(_OpenPaymentDetailSuccess value)? openPaymentDetailSuccess,
    TResult Function(_FetchListPaymentDataSuccess value)?
        fetchListPaymentDataSuccess,
    TResult Function(_PaymentDataFailedState value)? paymentDataFailedState,
    required TResult orElse(),
  }) {
    if (openPaymentDetailSuccess != null) {
      return openPaymentDetailSuccess(this);
    }
    return orElse();
  }
}

abstract class _OpenPaymentDetailSuccess implements PaymentState {
  const factory _OpenPaymentDetailSuccess(
          {required final PaymentModelStateData data}) =
      _$_OpenPaymentDetailSuccess;

  @override
  PaymentModelStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$_OpenPaymentDetailSuccessCopyWith<_$_OpenPaymentDetailSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchListPaymentDataSuccessCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$_FetchListPaymentDataSuccessCopyWith(
          _$_FetchListPaymentDataSuccess value,
          $Res Function(_$_FetchListPaymentDataSuccess) then) =
      __$$_FetchListPaymentDataSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentModelStateData data});

  @override
  $PaymentModelStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FetchListPaymentDataSuccessCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_FetchListPaymentDataSuccess>
    implements _$$_FetchListPaymentDataSuccessCopyWith<$Res> {
  __$$_FetchListPaymentDataSuccessCopyWithImpl(
      _$_FetchListPaymentDataSuccess _value,
      $Res Function(_$_FetchListPaymentDataSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_FetchListPaymentDataSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentModelStateData,
    ));
  }
}

/// @nodoc

class _$_FetchListPaymentDataSuccess implements _FetchListPaymentDataSuccess {
  const _$_FetchListPaymentDataSuccess({required this.data});

  @override
  final PaymentModelStateData data;

  @override
  String toString() {
    return 'PaymentState.fetchListPaymentDataSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchListPaymentDataSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchListPaymentDataSuccessCopyWith<_$_FetchListPaymentDataSuccess>
      get copyWith => __$$_FetchListPaymentDataSuccessCopyWithImpl<
          _$_FetchListPaymentDataSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentModelStateData data) initial,
    required TResult Function(PaymentModelStateData data) loading,
    required TResult Function(PaymentModelStateData data)
        fetchPaymentDataSuccess,
    required TResult Function(PaymentModelStateData data) deletePaymentSuccess,
    required TResult Function(PaymentModelStateData data)
        openPaymentDetailSuccess,
    required TResult Function(PaymentModelStateData data)
        fetchListPaymentDataSuccess,
    required TResult Function(PaymentModelStateData data, String message)
        paymentDataFailedState,
  }) {
    return fetchListPaymentDataSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentModelStateData data)? initial,
    TResult? Function(PaymentModelStateData data)? loading,
    TResult? Function(PaymentModelStateData data)? fetchPaymentDataSuccess,
    TResult? Function(PaymentModelStateData data)? deletePaymentSuccess,
    TResult? Function(PaymentModelStateData data)? openPaymentDetailSuccess,
    TResult? Function(PaymentModelStateData data)? fetchListPaymentDataSuccess,
    TResult? Function(PaymentModelStateData data, String message)?
        paymentDataFailedState,
  }) {
    return fetchListPaymentDataSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentModelStateData data)? initial,
    TResult Function(PaymentModelStateData data)? loading,
    TResult Function(PaymentModelStateData data)? fetchPaymentDataSuccess,
    TResult Function(PaymentModelStateData data)? deletePaymentSuccess,
    TResult Function(PaymentModelStateData data)? openPaymentDetailSuccess,
    TResult Function(PaymentModelStateData data)? fetchListPaymentDataSuccess,
    TResult Function(PaymentModelStateData data, String message)?
        paymentDataFailedState,
    required TResult orElse(),
  }) {
    if (fetchListPaymentDataSuccess != null) {
      return fetchListPaymentDataSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchPaymentDataSuccess value)
        fetchPaymentDataSuccess,
    required TResult Function(_DeletePaymentSuccess value) deletePaymentSuccess,
    required TResult Function(_OpenPaymentDetailSuccess value)
        openPaymentDetailSuccess,
    required TResult Function(_FetchListPaymentDataSuccess value)
        fetchListPaymentDataSuccess,
    required TResult Function(_PaymentDataFailedState value)
        paymentDataFailedState,
  }) {
    return fetchListPaymentDataSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchPaymentDataSuccess value)? fetchPaymentDataSuccess,
    TResult? Function(_DeletePaymentSuccess value)? deletePaymentSuccess,
    TResult? Function(_OpenPaymentDetailSuccess value)?
        openPaymentDetailSuccess,
    TResult? Function(_FetchListPaymentDataSuccess value)?
        fetchListPaymentDataSuccess,
    TResult? Function(_PaymentDataFailedState value)? paymentDataFailedState,
  }) {
    return fetchListPaymentDataSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchPaymentDataSuccess value)? fetchPaymentDataSuccess,
    TResult Function(_DeletePaymentSuccess value)? deletePaymentSuccess,
    TResult Function(_OpenPaymentDetailSuccess value)? openPaymentDetailSuccess,
    TResult Function(_FetchListPaymentDataSuccess value)?
        fetchListPaymentDataSuccess,
    TResult Function(_PaymentDataFailedState value)? paymentDataFailedState,
    required TResult orElse(),
  }) {
    if (fetchListPaymentDataSuccess != null) {
      return fetchListPaymentDataSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchListPaymentDataSuccess implements PaymentState {
  const factory _FetchListPaymentDataSuccess(
          {required final PaymentModelStateData data}) =
      _$_FetchListPaymentDataSuccess;

  @override
  PaymentModelStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$_FetchListPaymentDataSuccessCopyWith<_$_FetchListPaymentDataSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PaymentDataFailedStateCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$_PaymentDataFailedStateCopyWith(_$_PaymentDataFailedState value,
          $Res Function(_$_PaymentDataFailedState) then) =
      __$$_PaymentDataFailedStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentModelStateData data, String message});

  @override
  $PaymentModelStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_PaymentDataFailedStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_PaymentDataFailedState>
    implements _$$_PaymentDataFailedStateCopyWith<$Res> {
  __$$_PaymentDataFailedStateCopyWithImpl(_$_PaymentDataFailedState _value,
      $Res Function(_$_PaymentDataFailedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_PaymentDataFailedState(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentModelStateData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PaymentDataFailedState implements _PaymentDataFailedState {
  const _$_PaymentDataFailedState({required this.data, required this.message});

  @override
  final PaymentModelStateData data;
  @override
  final String message;

  @override
  String toString() {
    return 'PaymentState.paymentDataFailedState(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentDataFailedState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentDataFailedStateCopyWith<_$_PaymentDataFailedState> get copyWith =>
      __$$_PaymentDataFailedStateCopyWithImpl<_$_PaymentDataFailedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentModelStateData data) initial,
    required TResult Function(PaymentModelStateData data) loading,
    required TResult Function(PaymentModelStateData data)
        fetchPaymentDataSuccess,
    required TResult Function(PaymentModelStateData data) deletePaymentSuccess,
    required TResult Function(PaymentModelStateData data)
        openPaymentDetailSuccess,
    required TResult Function(PaymentModelStateData data)
        fetchListPaymentDataSuccess,
    required TResult Function(PaymentModelStateData data, String message)
        paymentDataFailedState,
  }) {
    return paymentDataFailedState(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentModelStateData data)? initial,
    TResult? Function(PaymentModelStateData data)? loading,
    TResult? Function(PaymentModelStateData data)? fetchPaymentDataSuccess,
    TResult? Function(PaymentModelStateData data)? deletePaymentSuccess,
    TResult? Function(PaymentModelStateData data)? openPaymentDetailSuccess,
    TResult? Function(PaymentModelStateData data)? fetchListPaymentDataSuccess,
    TResult? Function(PaymentModelStateData data, String message)?
        paymentDataFailedState,
  }) {
    return paymentDataFailedState?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentModelStateData data)? initial,
    TResult Function(PaymentModelStateData data)? loading,
    TResult Function(PaymentModelStateData data)? fetchPaymentDataSuccess,
    TResult Function(PaymentModelStateData data)? deletePaymentSuccess,
    TResult Function(PaymentModelStateData data)? openPaymentDetailSuccess,
    TResult Function(PaymentModelStateData data)? fetchListPaymentDataSuccess,
    TResult Function(PaymentModelStateData data, String message)?
        paymentDataFailedState,
    required TResult orElse(),
  }) {
    if (paymentDataFailedState != null) {
      return paymentDataFailedState(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchPaymentDataSuccess value)
        fetchPaymentDataSuccess,
    required TResult Function(_DeletePaymentSuccess value) deletePaymentSuccess,
    required TResult Function(_OpenPaymentDetailSuccess value)
        openPaymentDetailSuccess,
    required TResult Function(_FetchListPaymentDataSuccess value)
        fetchListPaymentDataSuccess,
    required TResult Function(_PaymentDataFailedState value)
        paymentDataFailedState,
  }) {
    return paymentDataFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchPaymentDataSuccess value)? fetchPaymentDataSuccess,
    TResult? Function(_DeletePaymentSuccess value)? deletePaymentSuccess,
    TResult? Function(_OpenPaymentDetailSuccess value)?
        openPaymentDetailSuccess,
    TResult? Function(_FetchListPaymentDataSuccess value)?
        fetchListPaymentDataSuccess,
    TResult? Function(_PaymentDataFailedState value)? paymentDataFailedState,
  }) {
    return paymentDataFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchPaymentDataSuccess value)? fetchPaymentDataSuccess,
    TResult Function(_DeletePaymentSuccess value)? deletePaymentSuccess,
    TResult Function(_OpenPaymentDetailSuccess value)? openPaymentDetailSuccess,
    TResult Function(_FetchListPaymentDataSuccess value)?
        fetchListPaymentDataSuccess,
    TResult Function(_PaymentDataFailedState value)? paymentDataFailedState,
    required TResult orElse(),
  }) {
    if (paymentDataFailedState != null) {
      return paymentDataFailedState(this);
    }
    return orElse();
  }
}

abstract class _PaymentDataFailedState implements PaymentState {
  const factory _PaymentDataFailedState(
      {required final PaymentModelStateData data,
      required final String message}) = _$_PaymentDataFailedState;

  @override
  PaymentModelStateData get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentDataFailedStateCopyWith<_$_PaymentDataFailedState> get copyWith =>
      throw _privateConstructorUsedError;
}
