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
    required TResult Function() onStarted,
    required TResult Function(String customerId) openCustomerDetail,
    required TResult Function(String id, int index) selectCustomer,
    required TResult Function(String? id, String? name, String? identify)
        searchCustomers,
    required TResult Function() fetchCustomerData,
    required TResult Function(int id) deleteCustomer,
    required TResult Function(String id) editCustomer,
    required TResult Function() addCustomer,
    required TResult Function(bool isEdit, Customer customer) updateCustomers,
    required TResult Function(int customerId) getLatestPaymentOfCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(String customerId)? openCustomerDetail,
    TResult? Function(String id, int index)? selectCustomer,
    TResult? Function(String? id, String? name, String? identify)?
        searchCustomers,
    TResult? Function()? fetchCustomerData,
    TResult? Function(int id)? deleteCustomer,
    TResult? Function(String id)? editCustomer,
    TResult? Function()? addCustomer,
    TResult? Function(bool isEdit, Customer customer)? updateCustomers,
    TResult? Function(int customerId)? getLatestPaymentOfCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String customerId)? openCustomerDetail,
    TResult Function(String id, int index)? selectCustomer,
    TResult Function(String? id, String? name, String? identify)?
        searchCustomers,
    TResult Function()? fetchCustomerData,
    TResult Function(int id)? deleteCustomer,
    TResult Function(String id)? editCustomer,
    TResult Function()? addCustomer,
    TResult Function(bool isEdit, Customer customer)? updateCustomers,
    TResult Function(int customerId)? getLatestPaymentOfCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OpenCustomerDetail value) openCustomerDetail,
    required TResult Function(_SelectCustomer value) selectCustomer,
    required TResult Function(_SearchCustomer value) searchCustomers,
    required TResult Function(_FetchCustomerData value) fetchCustomerData,
    required TResult Function(_DeleteCustomer value) deleteCustomer,
    required TResult Function(_EditCustomer value) editCustomer,
    required TResult Function(_AddCustomer value) addCustomer,
    required TResult Function(_UpdateCustomers value) updateCustomers,
    required TResult Function(_GetLatestPaymentOfCustomer value)
        getLatestPaymentOfCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OpenCustomerDetail value)? openCustomerDetail,
    TResult? Function(_SelectCustomer value)? selectCustomer,
    TResult? Function(_SearchCustomer value)? searchCustomers,
    TResult? Function(_FetchCustomerData value)? fetchCustomerData,
    TResult? Function(_DeleteCustomer value)? deleteCustomer,
    TResult? Function(_EditCustomer value)? editCustomer,
    TResult? Function(_AddCustomer value)? addCustomer,
    TResult? Function(_UpdateCustomers value)? updateCustomers,
    TResult? Function(_GetLatestPaymentOfCustomer value)?
        getLatestPaymentOfCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OpenCustomerDetail value)? openCustomerDetail,
    TResult Function(_SelectCustomer value)? selectCustomer,
    TResult Function(_SearchCustomer value)? searchCustomers,
    TResult Function(_FetchCustomerData value)? fetchCustomerData,
    TResult Function(_DeleteCustomer value)? deleteCustomer,
    TResult Function(_EditCustomer value)? editCustomer,
    TResult Function(_AddCustomer value)? addCustomer,
    TResult Function(_UpdateCustomers value)? updateCustomers,
    TResult Function(_GetLatestPaymentOfCustomer value)?
        getLatestPaymentOfCustomer,
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
abstract class _$$_OnStartedCopyWith<$Res> {
  factory _$$_OnStartedCopyWith(
          _$_OnStarted value, $Res Function(_$_OnStarted) then) =
      __$$_OnStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnStartedCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$_OnStarted>
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
    return 'CustomerEvent.onStarted()';
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
    required TResult Function(String customerId) openCustomerDetail,
    required TResult Function(String id, int index) selectCustomer,
    required TResult Function(String? id, String? name, String? identify)
        searchCustomers,
    required TResult Function() fetchCustomerData,
    required TResult Function(int id) deleteCustomer,
    required TResult Function(String id) editCustomer,
    required TResult Function() addCustomer,
    required TResult Function(bool isEdit, Customer customer) updateCustomers,
    required TResult Function(int customerId) getLatestPaymentOfCustomer,
  }) {
    return onStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(String customerId)? openCustomerDetail,
    TResult? Function(String id, int index)? selectCustomer,
    TResult? Function(String? id, String? name, String? identify)?
        searchCustomers,
    TResult? Function()? fetchCustomerData,
    TResult? Function(int id)? deleteCustomer,
    TResult? Function(String id)? editCustomer,
    TResult? Function()? addCustomer,
    TResult? Function(bool isEdit, Customer customer)? updateCustomers,
    TResult? Function(int customerId)? getLatestPaymentOfCustomer,
  }) {
    return onStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String customerId)? openCustomerDetail,
    TResult Function(String id, int index)? selectCustomer,
    TResult Function(String? id, String? name, String? identify)?
        searchCustomers,
    TResult Function()? fetchCustomerData,
    TResult Function(int id)? deleteCustomer,
    TResult Function(String id)? editCustomer,
    TResult Function()? addCustomer,
    TResult Function(bool isEdit, Customer customer)? updateCustomers,
    TResult Function(int customerId)? getLatestPaymentOfCustomer,
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
    required TResult Function(_OpenCustomerDetail value) openCustomerDetail,
    required TResult Function(_SelectCustomer value) selectCustomer,
    required TResult Function(_SearchCustomer value) searchCustomers,
    required TResult Function(_FetchCustomerData value) fetchCustomerData,
    required TResult Function(_DeleteCustomer value) deleteCustomer,
    required TResult Function(_EditCustomer value) editCustomer,
    required TResult Function(_AddCustomer value) addCustomer,
    required TResult Function(_UpdateCustomers value) updateCustomers,
    required TResult Function(_GetLatestPaymentOfCustomer value)
        getLatestPaymentOfCustomer,
  }) {
    return onStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OpenCustomerDetail value)? openCustomerDetail,
    TResult? Function(_SelectCustomer value)? selectCustomer,
    TResult? Function(_SearchCustomer value)? searchCustomers,
    TResult? Function(_FetchCustomerData value)? fetchCustomerData,
    TResult? Function(_DeleteCustomer value)? deleteCustomer,
    TResult? Function(_EditCustomer value)? editCustomer,
    TResult? Function(_AddCustomer value)? addCustomer,
    TResult? Function(_UpdateCustomers value)? updateCustomers,
    TResult? Function(_GetLatestPaymentOfCustomer value)?
        getLatestPaymentOfCustomer,
  }) {
    return onStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OpenCustomerDetail value)? openCustomerDetail,
    TResult Function(_SelectCustomer value)? selectCustomer,
    TResult Function(_SearchCustomer value)? searchCustomers,
    TResult Function(_FetchCustomerData value)? fetchCustomerData,
    TResult Function(_DeleteCustomer value)? deleteCustomer,
    TResult Function(_EditCustomer value)? editCustomer,
    TResult Function(_AddCustomer value)? addCustomer,
    TResult Function(_UpdateCustomers value)? updateCustomers,
    TResult Function(_GetLatestPaymentOfCustomer value)?
        getLatestPaymentOfCustomer,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(this);
    }
    return orElse();
  }
}

abstract class _OnStarted implements CustomerEvent {
  const factory _OnStarted() = _$_OnStarted;
}

/// @nodoc
abstract class _$$_OpenCustomerDetailCopyWith<$Res> {
  factory _$$_OpenCustomerDetailCopyWith(_$_OpenCustomerDetail value,
          $Res Function(_$_OpenCustomerDetail) then) =
      __$$_OpenCustomerDetailCopyWithImpl<$Res>;
  @useResult
  $Res call({String customerId});
}

/// @nodoc
class __$$_OpenCustomerDetailCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$_OpenCustomerDetail>
    implements _$$_OpenCustomerDetailCopyWith<$Res> {
  __$$_OpenCustomerDetailCopyWithImpl(
      _$_OpenCustomerDetail _value, $Res Function(_$_OpenCustomerDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
  }) {
    return _then(_$_OpenCustomerDetail(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OpenCustomerDetail implements _OpenCustomerDetail {
  const _$_OpenCustomerDetail({required this.customerId});

  @override
  final String customerId;

  @override
  String toString() {
    return 'CustomerEvent.openCustomerDetail(customerId: $customerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenCustomerDetail &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenCustomerDetailCopyWith<_$_OpenCustomerDetail> get copyWith =>
      __$$_OpenCustomerDetailCopyWithImpl<_$_OpenCustomerDetail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(String customerId) openCustomerDetail,
    required TResult Function(String id, int index) selectCustomer,
    required TResult Function(String? id, String? name, String? identify)
        searchCustomers,
    required TResult Function() fetchCustomerData,
    required TResult Function(int id) deleteCustomer,
    required TResult Function(String id) editCustomer,
    required TResult Function() addCustomer,
    required TResult Function(bool isEdit, Customer customer) updateCustomers,
    required TResult Function(int customerId) getLatestPaymentOfCustomer,
  }) {
    return openCustomerDetail(customerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(String customerId)? openCustomerDetail,
    TResult? Function(String id, int index)? selectCustomer,
    TResult? Function(String? id, String? name, String? identify)?
        searchCustomers,
    TResult? Function()? fetchCustomerData,
    TResult? Function(int id)? deleteCustomer,
    TResult? Function(String id)? editCustomer,
    TResult? Function()? addCustomer,
    TResult? Function(bool isEdit, Customer customer)? updateCustomers,
    TResult? Function(int customerId)? getLatestPaymentOfCustomer,
  }) {
    return openCustomerDetail?.call(customerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String customerId)? openCustomerDetail,
    TResult Function(String id, int index)? selectCustomer,
    TResult Function(String? id, String? name, String? identify)?
        searchCustomers,
    TResult Function()? fetchCustomerData,
    TResult Function(int id)? deleteCustomer,
    TResult Function(String id)? editCustomer,
    TResult Function()? addCustomer,
    TResult Function(bool isEdit, Customer customer)? updateCustomers,
    TResult Function(int customerId)? getLatestPaymentOfCustomer,
    required TResult orElse(),
  }) {
    if (openCustomerDetail != null) {
      return openCustomerDetail(customerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OpenCustomerDetail value) openCustomerDetail,
    required TResult Function(_SelectCustomer value) selectCustomer,
    required TResult Function(_SearchCustomer value) searchCustomers,
    required TResult Function(_FetchCustomerData value) fetchCustomerData,
    required TResult Function(_DeleteCustomer value) deleteCustomer,
    required TResult Function(_EditCustomer value) editCustomer,
    required TResult Function(_AddCustomer value) addCustomer,
    required TResult Function(_UpdateCustomers value) updateCustomers,
    required TResult Function(_GetLatestPaymentOfCustomer value)
        getLatestPaymentOfCustomer,
  }) {
    return openCustomerDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OpenCustomerDetail value)? openCustomerDetail,
    TResult? Function(_SelectCustomer value)? selectCustomer,
    TResult? Function(_SearchCustomer value)? searchCustomers,
    TResult? Function(_FetchCustomerData value)? fetchCustomerData,
    TResult? Function(_DeleteCustomer value)? deleteCustomer,
    TResult? Function(_EditCustomer value)? editCustomer,
    TResult? Function(_AddCustomer value)? addCustomer,
    TResult? Function(_UpdateCustomers value)? updateCustomers,
    TResult? Function(_GetLatestPaymentOfCustomer value)?
        getLatestPaymentOfCustomer,
  }) {
    return openCustomerDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OpenCustomerDetail value)? openCustomerDetail,
    TResult Function(_SelectCustomer value)? selectCustomer,
    TResult Function(_SearchCustomer value)? searchCustomers,
    TResult Function(_FetchCustomerData value)? fetchCustomerData,
    TResult Function(_DeleteCustomer value)? deleteCustomer,
    TResult Function(_EditCustomer value)? editCustomer,
    TResult Function(_AddCustomer value)? addCustomer,
    TResult Function(_UpdateCustomers value)? updateCustomers,
    TResult Function(_GetLatestPaymentOfCustomer value)?
        getLatestPaymentOfCustomer,
    required TResult orElse(),
  }) {
    if (openCustomerDetail != null) {
      return openCustomerDetail(this);
    }
    return orElse();
  }
}

abstract class _OpenCustomerDetail implements CustomerEvent {
  const factory _OpenCustomerDetail({required final String customerId}) =
      _$_OpenCustomerDetail;

  String get customerId;
  @JsonKey(ignore: true)
  _$$_OpenCustomerDetailCopyWith<_$_OpenCustomerDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectCustomerCopyWith<$Res> {
  factory _$$_SelectCustomerCopyWith(
          _$_SelectCustomer value, $Res Function(_$_SelectCustomer) then) =
      __$$_SelectCustomerCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, int index});
}

/// @nodoc
class __$$_SelectCustomerCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$_SelectCustomer>
    implements _$$_SelectCustomerCopyWith<$Res> {
  __$$_SelectCustomerCopyWithImpl(
      _$_SelectCustomer _value, $Res Function(_$_SelectCustomer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? index = null,
  }) {
    return _then(_$_SelectCustomer(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectCustomer implements _SelectCustomer {
  const _$_SelectCustomer({required this.id, required this.index});

  @override
  final String id;
  @override
  final int index;

  @override
  String toString() {
    return 'CustomerEvent.selectCustomer(id: $id, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectCustomer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectCustomerCopyWith<_$_SelectCustomer> get copyWith =>
      __$$_SelectCustomerCopyWithImpl<_$_SelectCustomer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(String customerId) openCustomerDetail,
    required TResult Function(String id, int index) selectCustomer,
    required TResult Function(String? id, String? name, String? identify)
        searchCustomers,
    required TResult Function() fetchCustomerData,
    required TResult Function(int id) deleteCustomer,
    required TResult Function(String id) editCustomer,
    required TResult Function() addCustomer,
    required TResult Function(bool isEdit, Customer customer) updateCustomers,
    required TResult Function(int customerId) getLatestPaymentOfCustomer,
  }) {
    return selectCustomer(id, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(String customerId)? openCustomerDetail,
    TResult? Function(String id, int index)? selectCustomer,
    TResult? Function(String? id, String? name, String? identify)?
        searchCustomers,
    TResult? Function()? fetchCustomerData,
    TResult? Function(int id)? deleteCustomer,
    TResult? Function(String id)? editCustomer,
    TResult? Function()? addCustomer,
    TResult? Function(bool isEdit, Customer customer)? updateCustomers,
    TResult? Function(int customerId)? getLatestPaymentOfCustomer,
  }) {
    return selectCustomer?.call(id, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String customerId)? openCustomerDetail,
    TResult Function(String id, int index)? selectCustomer,
    TResult Function(String? id, String? name, String? identify)?
        searchCustomers,
    TResult Function()? fetchCustomerData,
    TResult Function(int id)? deleteCustomer,
    TResult Function(String id)? editCustomer,
    TResult Function()? addCustomer,
    TResult Function(bool isEdit, Customer customer)? updateCustomers,
    TResult Function(int customerId)? getLatestPaymentOfCustomer,
    required TResult orElse(),
  }) {
    if (selectCustomer != null) {
      return selectCustomer(id, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OpenCustomerDetail value) openCustomerDetail,
    required TResult Function(_SelectCustomer value) selectCustomer,
    required TResult Function(_SearchCustomer value) searchCustomers,
    required TResult Function(_FetchCustomerData value) fetchCustomerData,
    required TResult Function(_DeleteCustomer value) deleteCustomer,
    required TResult Function(_EditCustomer value) editCustomer,
    required TResult Function(_AddCustomer value) addCustomer,
    required TResult Function(_UpdateCustomers value) updateCustomers,
    required TResult Function(_GetLatestPaymentOfCustomer value)
        getLatestPaymentOfCustomer,
  }) {
    return selectCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OpenCustomerDetail value)? openCustomerDetail,
    TResult? Function(_SelectCustomer value)? selectCustomer,
    TResult? Function(_SearchCustomer value)? searchCustomers,
    TResult? Function(_FetchCustomerData value)? fetchCustomerData,
    TResult? Function(_DeleteCustomer value)? deleteCustomer,
    TResult? Function(_EditCustomer value)? editCustomer,
    TResult? Function(_AddCustomer value)? addCustomer,
    TResult? Function(_UpdateCustomers value)? updateCustomers,
    TResult? Function(_GetLatestPaymentOfCustomer value)?
        getLatestPaymentOfCustomer,
  }) {
    return selectCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OpenCustomerDetail value)? openCustomerDetail,
    TResult Function(_SelectCustomer value)? selectCustomer,
    TResult Function(_SearchCustomer value)? searchCustomers,
    TResult Function(_FetchCustomerData value)? fetchCustomerData,
    TResult Function(_DeleteCustomer value)? deleteCustomer,
    TResult Function(_EditCustomer value)? editCustomer,
    TResult Function(_AddCustomer value)? addCustomer,
    TResult Function(_UpdateCustomers value)? updateCustomers,
    TResult Function(_GetLatestPaymentOfCustomer value)?
        getLatestPaymentOfCustomer,
    required TResult orElse(),
  }) {
    if (selectCustomer != null) {
      return selectCustomer(this);
    }
    return orElse();
  }
}

abstract class _SelectCustomer implements CustomerEvent {
  const factory _SelectCustomer(
      {required final String id, required final int index}) = _$_SelectCustomer;

  String get id;
  int get index;
  @JsonKey(ignore: true)
  _$$_SelectCustomerCopyWith<_$_SelectCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchCustomerCopyWith<$Res> {
  factory _$$_SearchCustomerCopyWith(
          _$_SearchCustomer value, $Res Function(_$_SearchCustomer) then) =
      __$$_SearchCustomerCopyWithImpl<$Res>;
  @useResult
  $Res call({String? id, String? name, String? identify});
}

/// @nodoc
class __$$_SearchCustomerCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$_SearchCustomer>
    implements _$$_SearchCustomerCopyWith<$Res> {
  __$$_SearchCustomerCopyWithImpl(
      _$_SearchCustomer _value, $Res Function(_$_SearchCustomer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? identify = freezed,
  }) {
    return _then(_$_SearchCustomer(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      identify: freezed == identify
          ? _value.identify
          : identify // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SearchCustomer implements _SearchCustomer {
  const _$_SearchCustomer({this.id, this.name, this.identify});

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? identify;

  @override
  String toString() {
    return 'CustomerEvent.searchCustomers(id: $id, name: $name, identify: $identify)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchCustomer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.identify, identify) ||
                other.identify == identify));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, identify);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchCustomerCopyWith<_$_SearchCustomer> get copyWith =>
      __$$_SearchCustomerCopyWithImpl<_$_SearchCustomer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(String customerId) openCustomerDetail,
    required TResult Function(String id, int index) selectCustomer,
    required TResult Function(String? id, String? name, String? identify)
        searchCustomers,
    required TResult Function() fetchCustomerData,
    required TResult Function(int id) deleteCustomer,
    required TResult Function(String id) editCustomer,
    required TResult Function() addCustomer,
    required TResult Function(bool isEdit, Customer customer) updateCustomers,
    required TResult Function(int customerId) getLatestPaymentOfCustomer,
  }) {
    return searchCustomers(id, name, identify);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(String customerId)? openCustomerDetail,
    TResult? Function(String id, int index)? selectCustomer,
    TResult? Function(String? id, String? name, String? identify)?
        searchCustomers,
    TResult? Function()? fetchCustomerData,
    TResult? Function(int id)? deleteCustomer,
    TResult? Function(String id)? editCustomer,
    TResult? Function()? addCustomer,
    TResult? Function(bool isEdit, Customer customer)? updateCustomers,
    TResult? Function(int customerId)? getLatestPaymentOfCustomer,
  }) {
    return searchCustomers?.call(id, name, identify);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String customerId)? openCustomerDetail,
    TResult Function(String id, int index)? selectCustomer,
    TResult Function(String? id, String? name, String? identify)?
        searchCustomers,
    TResult Function()? fetchCustomerData,
    TResult Function(int id)? deleteCustomer,
    TResult Function(String id)? editCustomer,
    TResult Function()? addCustomer,
    TResult Function(bool isEdit, Customer customer)? updateCustomers,
    TResult Function(int customerId)? getLatestPaymentOfCustomer,
    required TResult orElse(),
  }) {
    if (searchCustomers != null) {
      return searchCustomers(id, name, identify);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OpenCustomerDetail value) openCustomerDetail,
    required TResult Function(_SelectCustomer value) selectCustomer,
    required TResult Function(_SearchCustomer value) searchCustomers,
    required TResult Function(_FetchCustomerData value) fetchCustomerData,
    required TResult Function(_DeleteCustomer value) deleteCustomer,
    required TResult Function(_EditCustomer value) editCustomer,
    required TResult Function(_AddCustomer value) addCustomer,
    required TResult Function(_UpdateCustomers value) updateCustomers,
    required TResult Function(_GetLatestPaymentOfCustomer value)
        getLatestPaymentOfCustomer,
  }) {
    return searchCustomers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OpenCustomerDetail value)? openCustomerDetail,
    TResult? Function(_SelectCustomer value)? selectCustomer,
    TResult? Function(_SearchCustomer value)? searchCustomers,
    TResult? Function(_FetchCustomerData value)? fetchCustomerData,
    TResult? Function(_DeleteCustomer value)? deleteCustomer,
    TResult? Function(_EditCustomer value)? editCustomer,
    TResult? Function(_AddCustomer value)? addCustomer,
    TResult? Function(_UpdateCustomers value)? updateCustomers,
    TResult? Function(_GetLatestPaymentOfCustomer value)?
        getLatestPaymentOfCustomer,
  }) {
    return searchCustomers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OpenCustomerDetail value)? openCustomerDetail,
    TResult Function(_SelectCustomer value)? selectCustomer,
    TResult Function(_SearchCustomer value)? searchCustomers,
    TResult Function(_FetchCustomerData value)? fetchCustomerData,
    TResult Function(_DeleteCustomer value)? deleteCustomer,
    TResult Function(_EditCustomer value)? editCustomer,
    TResult Function(_AddCustomer value)? addCustomer,
    TResult Function(_UpdateCustomers value)? updateCustomers,
    TResult Function(_GetLatestPaymentOfCustomer value)?
        getLatestPaymentOfCustomer,
    required TResult orElse(),
  }) {
    if (searchCustomers != null) {
      return searchCustomers(this);
    }
    return orElse();
  }
}

abstract class _SearchCustomer implements CustomerEvent {
  const factory _SearchCustomer(
      {final String? id,
      final String? name,
      final String? identify}) = _$_SearchCustomer;

  String? get id;
  String? get name;
  String? get identify;
  @JsonKey(ignore: true)
  _$$_SearchCustomerCopyWith<_$_SearchCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchCustomerDataCopyWith<$Res> {
  factory _$$_FetchCustomerDataCopyWith(_$_FetchCustomerData value,
          $Res Function(_$_FetchCustomerData) then) =
      __$$_FetchCustomerDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchCustomerDataCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$_FetchCustomerData>
    implements _$$_FetchCustomerDataCopyWith<$Res> {
  __$$_FetchCustomerDataCopyWithImpl(
      _$_FetchCustomerData _value, $Res Function(_$_FetchCustomerData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchCustomerData implements _FetchCustomerData {
  const _$_FetchCustomerData();

  @override
  String toString() {
    return 'CustomerEvent.fetchCustomerData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchCustomerData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(String customerId) openCustomerDetail,
    required TResult Function(String id, int index) selectCustomer,
    required TResult Function(String? id, String? name, String? identify)
        searchCustomers,
    required TResult Function() fetchCustomerData,
    required TResult Function(int id) deleteCustomer,
    required TResult Function(String id) editCustomer,
    required TResult Function() addCustomer,
    required TResult Function(bool isEdit, Customer customer) updateCustomers,
    required TResult Function(int customerId) getLatestPaymentOfCustomer,
  }) {
    return fetchCustomerData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(String customerId)? openCustomerDetail,
    TResult? Function(String id, int index)? selectCustomer,
    TResult? Function(String? id, String? name, String? identify)?
        searchCustomers,
    TResult? Function()? fetchCustomerData,
    TResult? Function(int id)? deleteCustomer,
    TResult? Function(String id)? editCustomer,
    TResult? Function()? addCustomer,
    TResult? Function(bool isEdit, Customer customer)? updateCustomers,
    TResult? Function(int customerId)? getLatestPaymentOfCustomer,
  }) {
    return fetchCustomerData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String customerId)? openCustomerDetail,
    TResult Function(String id, int index)? selectCustomer,
    TResult Function(String? id, String? name, String? identify)?
        searchCustomers,
    TResult Function()? fetchCustomerData,
    TResult Function(int id)? deleteCustomer,
    TResult Function(String id)? editCustomer,
    TResult Function()? addCustomer,
    TResult Function(bool isEdit, Customer customer)? updateCustomers,
    TResult Function(int customerId)? getLatestPaymentOfCustomer,
    required TResult orElse(),
  }) {
    if (fetchCustomerData != null) {
      return fetchCustomerData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OpenCustomerDetail value) openCustomerDetail,
    required TResult Function(_SelectCustomer value) selectCustomer,
    required TResult Function(_SearchCustomer value) searchCustomers,
    required TResult Function(_FetchCustomerData value) fetchCustomerData,
    required TResult Function(_DeleteCustomer value) deleteCustomer,
    required TResult Function(_EditCustomer value) editCustomer,
    required TResult Function(_AddCustomer value) addCustomer,
    required TResult Function(_UpdateCustomers value) updateCustomers,
    required TResult Function(_GetLatestPaymentOfCustomer value)
        getLatestPaymentOfCustomer,
  }) {
    return fetchCustomerData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OpenCustomerDetail value)? openCustomerDetail,
    TResult? Function(_SelectCustomer value)? selectCustomer,
    TResult? Function(_SearchCustomer value)? searchCustomers,
    TResult? Function(_FetchCustomerData value)? fetchCustomerData,
    TResult? Function(_DeleteCustomer value)? deleteCustomer,
    TResult? Function(_EditCustomer value)? editCustomer,
    TResult? Function(_AddCustomer value)? addCustomer,
    TResult? Function(_UpdateCustomers value)? updateCustomers,
    TResult? Function(_GetLatestPaymentOfCustomer value)?
        getLatestPaymentOfCustomer,
  }) {
    return fetchCustomerData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OpenCustomerDetail value)? openCustomerDetail,
    TResult Function(_SelectCustomer value)? selectCustomer,
    TResult Function(_SearchCustomer value)? searchCustomers,
    TResult Function(_FetchCustomerData value)? fetchCustomerData,
    TResult Function(_DeleteCustomer value)? deleteCustomer,
    TResult Function(_EditCustomer value)? editCustomer,
    TResult Function(_AddCustomer value)? addCustomer,
    TResult Function(_UpdateCustomers value)? updateCustomers,
    TResult Function(_GetLatestPaymentOfCustomer value)?
        getLatestPaymentOfCustomer,
    required TResult orElse(),
  }) {
    if (fetchCustomerData != null) {
      return fetchCustomerData(this);
    }
    return orElse();
  }
}

abstract class _FetchCustomerData implements CustomerEvent {
  const factory _FetchCustomerData() = _$_FetchCustomerData;
}

/// @nodoc
abstract class _$$_DeleteCustomerCopyWith<$Res> {
  factory _$$_DeleteCustomerCopyWith(
          _$_DeleteCustomer value, $Res Function(_$_DeleteCustomer) then) =
      __$$_DeleteCustomerCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_DeleteCustomerCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$_DeleteCustomer>
    implements _$$_DeleteCustomerCopyWith<$Res> {
  __$$_DeleteCustomerCopyWithImpl(
      _$_DeleteCustomer _value, $Res Function(_$_DeleteCustomer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_DeleteCustomer(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteCustomer implements _DeleteCustomer {
  const _$_DeleteCustomer({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CustomerEvent.deleteCustomer(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteCustomer &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteCustomerCopyWith<_$_DeleteCustomer> get copyWith =>
      __$$_DeleteCustomerCopyWithImpl<_$_DeleteCustomer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(String customerId) openCustomerDetail,
    required TResult Function(String id, int index) selectCustomer,
    required TResult Function(String? id, String? name, String? identify)
        searchCustomers,
    required TResult Function() fetchCustomerData,
    required TResult Function(int id) deleteCustomer,
    required TResult Function(String id) editCustomer,
    required TResult Function() addCustomer,
    required TResult Function(bool isEdit, Customer customer) updateCustomers,
    required TResult Function(int customerId) getLatestPaymentOfCustomer,
  }) {
    return deleteCustomer(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(String customerId)? openCustomerDetail,
    TResult? Function(String id, int index)? selectCustomer,
    TResult? Function(String? id, String? name, String? identify)?
        searchCustomers,
    TResult? Function()? fetchCustomerData,
    TResult? Function(int id)? deleteCustomer,
    TResult? Function(String id)? editCustomer,
    TResult? Function()? addCustomer,
    TResult? Function(bool isEdit, Customer customer)? updateCustomers,
    TResult? Function(int customerId)? getLatestPaymentOfCustomer,
  }) {
    return deleteCustomer?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String customerId)? openCustomerDetail,
    TResult Function(String id, int index)? selectCustomer,
    TResult Function(String? id, String? name, String? identify)?
        searchCustomers,
    TResult Function()? fetchCustomerData,
    TResult Function(int id)? deleteCustomer,
    TResult Function(String id)? editCustomer,
    TResult Function()? addCustomer,
    TResult Function(bool isEdit, Customer customer)? updateCustomers,
    TResult Function(int customerId)? getLatestPaymentOfCustomer,
    required TResult orElse(),
  }) {
    if (deleteCustomer != null) {
      return deleteCustomer(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OpenCustomerDetail value) openCustomerDetail,
    required TResult Function(_SelectCustomer value) selectCustomer,
    required TResult Function(_SearchCustomer value) searchCustomers,
    required TResult Function(_FetchCustomerData value) fetchCustomerData,
    required TResult Function(_DeleteCustomer value) deleteCustomer,
    required TResult Function(_EditCustomer value) editCustomer,
    required TResult Function(_AddCustomer value) addCustomer,
    required TResult Function(_UpdateCustomers value) updateCustomers,
    required TResult Function(_GetLatestPaymentOfCustomer value)
        getLatestPaymentOfCustomer,
  }) {
    return deleteCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OpenCustomerDetail value)? openCustomerDetail,
    TResult? Function(_SelectCustomer value)? selectCustomer,
    TResult? Function(_SearchCustomer value)? searchCustomers,
    TResult? Function(_FetchCustomerData value)? fetchCustomerData,
    TResult? Function(_DeleteCustomer value)? deleteCustomer,
    TResult? Function(_EditCustomer value)? editCustomer,
    TResult? Function(_AddCustomer value)? addCustomer,
    TResult? Function(_UpdateCustomers value)? updateCustomers,
    TResult? Function(_GetLatestPaymentOfCustomer value)?
        getLatestPaymentOfCustomer,
  }) {
    return deleteCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OpenCustomerDetail value)? openCustomerDetail,
    TResult Function(_SelectCustomer value)? selectCustomer,
    TResult Function(_SearchCustomer value)? searchCustomers,
    TResult Function(_FetchCustomerData value)? fetchCustomerData,
    TResult Function(_DeleteCustomer value)? deleteCustomer,
    TResult Function(_EditCustomer value)? editCustomer,
    TResult Function(_AddCustomer value)? addCustomer,
    TResult Function(_UpdateCustomers value)? updateCustomers,
    TResult Function(_GetLatestPaymentOfCustomer value)?
        getLatestPaymentOfCustomer,
    required TResult orElse(),
  }) {
    if (deleteCustomer != null) {
      return deleteCustomer(this);
    }
    return orElse();
  }
}

abstract class _DeleteCustomer implements CustomerEvent {
  const factory _DeleteCustomer({required final int id}) = _$_DeleteCustomer;

  int get id;
  @JsonKey(ignore: true)
  _$$_DeleteCustomerCopyWith<_$_DeleteCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditCustomerCopyWith<$Res> {
  factory _$$_EditCustomerCopyWith(
          _$_EditCustomer value, $Res Function(_$_EditCustomer) then) =
      __$$_EditCustomerCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_EditCustomerCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$_EditCustomer>
    implements _$$_EditCustomerCopyWith<$Res> {
  __$$_EditCustomerCopyWithImpl(
      _$_EditCustomer _value, $Res Function(_$_EditCustomer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_EditCustomer(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditCustomer implements _EditCustomer {
  const _$_EditCustomer({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'CustomerEvent.editCustomer(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditCustomer &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditCustomerCopyWith<_$_EditCustomer> get copyWith =>
      __$$_EditCustomerCopyWithImpl<_$_EditCustomer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(String customerId) openCustomerDetail,
    required TResult Function(String id, int index) selectCustomer,
    required TResult Function(String? id, String? name, String? identify)
        searchCustomers,
    required TResult Function() fetchCustomerData,
    required TResult Function(int id) deleteCustomer,
    required TResult Function(String id) editCustomer,
    required TResult Function() addCustomer,
    required TResult Function(bool isEdit, Customer customer) updateCustomers,
    required TResult Function(int customerId) getLatestPaymentOfCustomer,
  }) {
    return editCustomer(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(String customerId)? openCustomerDetail,
    TResult? Function(String id, int index)? selectCustomer,
    TResult? Function(String? id, String? name, String? identify)?
        searchCustomers,
    TResult? Function()? fetchCustomerData,
    TResult? Function(int id)? deleteCustomer,
    TResult? Function(String id)? editCustomer,
    TResult? Function()? addCustomer,
    TResult? Function(bool isEdit, Customer customer)? updateCustomers,
    TResult? Function(int customerId)? getLatestPaymentOfCustomer,
  }) {
    return editCustomer?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String customerId)? openCustomerDetail,
    TResult Function(String id, int index)? selectCustomer,
    TResult Function(String? id, String? name, String? identify)?
        searchCustomers,
    TResult Function()? fetchCustomerData,
    TResult Function(int id)? deleteCustomer,
    TResult Function(String id)? editCustomer,
    TResult Function()? addCustomer,
    TResult Function(bool isEdit, Customer customer)? updateCustomers,
    TResult Function(int customerId)? getLatestPaymentOfCustomer,
    required TResult orElse(),
  }) {
    if (editCustomer != null) {
      return editCustomer(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OpenCustomerDetail value) openCustomerDetail,
    required TResult Function(_SelectCustomer value) selectCustomer,
    required TResult Function(_SearchCustomer value) searchCustomers,
    required TResult Function(_FetchCustomerData value) fetchCustomerData,
    required TResult Function(_DeleteCustomer value) deleteCustomer,
    required TResult Function(_EditCustomer value) editCustomer,
    required TResult Function(_AddCustomer value) addCustomer,
    required TResult Function(_UpdateCustomers value) updateCustomers,
    required TResult Function(_GetLatestPaymentOfCustomer value)
        getLatestPaymentOfCustomer,
  }) {
    return editCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OpenCustomerDetail value)? openCustomerDetail,
    TResult? Function(_SelectCustomer value)? selectCustomer,
    TResult? Function(_SearchCustomer value)? searchCustomers,
    TResult? Function(_FetchCustomerData value)? fetchCustomerData,
    TResult? Function(_DeleteCustomer value)? deleteCustomer,
    TResult? Function(_EditCustomer value)? editCustomer,
    TResult? Function(_AddCustomer value)? addCustomer,
    TResult? Function(_UpdateCustomers value)? updateCustomers,
    TResult? Function(_GetLatestPaymentOfCustomer value)?
        getLatestPaymentOfCustomer,
  }) {
    return editCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OpenCustomerDetail value)? openCustomerDetail,
    TResult Function(_SelectCustomer value)? selectCustomer,
    TResult Function(_SearchCustomer value)? searchCustomers,
    TResult Function(_FetchCustomerData value)? fetchCustomerData,
    TResult Function(_DeleteCustomer value)? deleteCustomer,
    TResult Function(_EditCustomer value)? editCustomer,
    TResult Function(_AddCustomer value)? addCustomer,
    TResult Function(_UpdateCustomers value)? updateCustomers,
    TResult Function(_GetLatestPaymentOfCustomer value)?
        getLatestPaymentOfCustomer,
    required TResult orElse(),
  }) {
    if (editCustomer != null) {
      return editCustomer(this);
    }
    return orElse();
  }
}

abstract class _EditCustomer implements CustomerEvent {
  const factory _EditCustomer({required final String id}) = _$_EditCustomer;

  String get id;
  @JsonKey(ignore: true)
  _$$_EditCustomerCopyWith<_$_EditCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddCustomerCopyWith<$Res> {
  factory _$$_AddCustomerCopyWith(
          _$_AddCustomer value, $Res Function(_$_AddCustomer) then) =
      __$$_AddCustomerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddCustomerCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$_AddCustomer>
    implements _$$_AddCustomerCopyWith<$Res> {
  __$$_AddCustomerCopyWithImpl(
      _$_AddCustomer _value, $Res Function(_$_AddCustomer) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AddCustomer implements _AddCustomer {
  const _$_AddCustomer();

  @override
  String toString() {
    return 'CustomerEvent.addCustomer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddCustomer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(String customerId) openCustomerDetail,
    required TResult Function(String id, int index) selectCustomer,
    required TResult Function(String? id, String? name, String? identify)
        searchCustomers,
    required TResult Function() fetchCustomerData,
    required TResult Function(int id) deleteCustomer,
    required TResult Function(String id) editCustomer,
    required TResult Function() addCustomer,
    required TResult Function(bool isEdit, Customer customer) updateCustomers,
    required TResult Function(int customerId) getLatestPaymentOfCustomer,
  }) {
    return addCustomer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(String customerId)? openCustomerDetail,
    TResult? Function(String id, int index)? selectCustomer,
    TResult? Function(String? id, String? name, String? identify)?
        searchCustomers,
    TResult? Function()? fetchCustomerData,
    TResult? Function(int id)? deleteCustomer,
    TResult? Function(String id)? editCustomer,
    TResult? Function()? addCustomer,
    TResult? Function(bool isEdit, Customer customer)? updateCustomers,
    TResult? Function(int customerId)? getLatestPaymentOfCustomer,
  }) {
    return addCustomer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String customerId)? openCustomerDetail,
    TResult Function(String id, int index)? selectCustomer,
    TResult Function(String? id, String? name, String? identify)?
        searchCustomers,
    TResult Function()? fetchCustomerData,
    TResult Function(int id)? deleteCustomer,
    TResult Function(String id)? editCustomer,
    TResult Function()? addCustomer,
    TResult Function(bool isEdit, Customer customer)? updateCustomers,
    TResult Function(int customerId)? getLatestPaymentOfCustomer,
    required TResult orElse(),
  }) {
    if (addCustomer != null) {
      return addCustomer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OpenCustomerDetail value) openCustomerDetail,
    required TResult Function(_SelectCustomer value) selectCustomer,
    required TResult Function(_SearchCustomer value) searchCustomers,
    required TResult Function(_FetchCustomerData value) fetchCustomerData,
    required TResult Function(_DeleteCustomer value) deleteCustomer,
    required TResult Function(_EditCustomer value) editCustomer,
    required TResult Function(_AddCustomer value) addCustomer,
    required TResult Function(_UpdateCustomers value) updateCustomers,
    required TResult Function(_GetLatestPaymentOfCustomer value)
        getLatestPaymentOfCustomer,
  }) {
    return addCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OpenCustomerDetail value)? openCustomerDetail,
    TResult? Function(_SelectCustomer value)? selectCustomer,
    TResult? Function(_SearchCustomer value)? searchCustomers,
    TResult? Function(_FetchCustomerData value)? fetchCustomerData,
    TResult? Function(_DeleteCustomer value)? deleteCustomer,
    TResult? Function(_EditCustomer value)? editCustomer,
    TResult? Function(_AddCustomer value)? addCustomer,
    TResult? Function(_UpdateCustomers value)? updateCustomers,
    TResult? Function(_GetLatestPaymentOfCustomer value)?
        getLatestPaymentOfCustomer,
  }) {
    return addCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OpenCustomerDetail value)? openCustomerDetail,
    TResult Function(_SelectCustomer value)? selectCustomer,
    TResult Function(_SearchCustomer value)? searchCustomers,
    TResult Function(_FetchCustomerData value)? fetchCustomerData,
    TResult Function(_DeleteCustomer value)? deleteCustomer,
    TResult Function(_EditCustomer value)? editCustomer,
    TResult Function(_AddCustomer value)? addCustomer,
    TResult Function(_UpdateCustomers value)? updateCustomers,
    TResult Function(_GetLatestPaymentOfCustomer value)?
        getLatestPaymentOfCustomer,
    required TResult orElse(),
  }) {
    if (addCustomer != null) {
      return addCustomer(this);
    }
    return orElse();
  }
}

abstract class _AddCustomer implements CustomerEvent {
  const factory _AddCustomer() = _$_AddCustomer;
}

/// @nodoc
abstract class _$$_UpdateCustomersCopyWith<$Res> {
  factory _$$_UpdateCustomersCopyWith(
          _$_UpdateCustomers value, $Res Function(_$_UpdateCustomers) then) =
      __$$_UpdateCustomersCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isEdit, Customer customer});

  $CustomerCopyWith<$Res> get customer;
}

/// @nodoc
class __$$_UpdateCustomersCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$_UpdateCustomers>
    implements _$$_UpdateCustomersCopyWith<$Res> {
  __$$_UpdateCustomersCopyWithImpl(
      _$_UpdateCustomers _value, $Res Function(_$_UpdateCustomers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEdit = null,
    Object? customer = null,
  }) {
    return _then(_$_UpdateCustomers(
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$_UpdateCustomers implements _UpdateCustomers {
  const _$_UpdateCustomers({required this.isEdit, required this.customer});

  @override
  final bool isEdit;
  @override
  final Customer customer;

  @override
  String toString() {
    return 'CustomerEvent.updateCustomers(isEdit: $isEdit, customer: $customer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateCustomers &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit) &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEdit, customer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCustomersCopyWith<_$_UpdateCustomers> get copyWith =>
      __$$_UpdateCustomersCopyWithImpl<_$_UpdateCustomers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(String customerId) openCustomerDetail,
    required TResult Function(String id, int index) selectCustomer,
    required TResult Function(String? id, String? name, String? identify)
        searchCustomers,
    required TResult Function() fetchCustomerData,
    required TResult Function(int id) deleteCustomer,
    required TResult Function(String id) editCustomer,
    required TResult Function() addCustomer,
    required TResult Function(bool isEdit, Customer customer) updateCustomers,
    required TResult Function(int customerId) getLatestPaymentOfCustomer,
  }) {
    return updateCustomers(isEdit, customer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(String customerId)? openCustomerDetail,
    TResult? Function(String id, int index)? selectCustomer,
    TResult? Function(String? id, String? name, String? identify)?
        searchCustomers,
    TResult? Function()? fetchCustomerData,
    TResult? Function(int id)? deleteCustomer,
    TResult? Function(String id)? editCustomer,
    TResult? Function()? addCustomer,
    TResult? Function(bool isEdit, Customer customer)? updateCustomers,
    TResult? Function(int customerId)? getLatestPaymentOfCustomer,
  }) {
    return updateCustomers?.call(isEdit, customer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String customerId)? openCustomerDetail,
    TResult Function(String id, int index)? selectCustomer,
    TResult Function(String? id, String? name, String? identify)?
        searchCustomers,
    TResult Function()? fetchCustomerData,
    TResult Function(int id)? deleteCustomer,
    TResult Function(String id)? editCustomer,
    TResult Function()? addCustomer,
    TResult Function(bool isEdit, Customer customer)? updateCustomers,
    TResult Function(int customerId)? getLatestPaymentOfCustomer,
    required TResult orElse(),
  }) {
    if (updateCustomers != null) {
      return updateCustomers(isEdit, customer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OpenCustomerDetail value) openCustomerDetail,
    required TResult Function(_SelectCustomer value) selectCustomer,
    required TResult Function(_SearchCustomer value) searchCustomers,
    required TResult Function(_FetchCustomerData value) fetchCustomerData,
    required TResult Function(_DeleteCustomer value) deleteCustomer,
    required TResult Function(_EditCustomer value) editCustomer,
    required TResult Function(_AddCustomer value) addCustomer,
    required TResult Function(_UpdateCustomers value) updateCustomers,
    required TResult Function(_GetLatestPaymentOfCustomer value)
        getLatestPaymentOfCustomer,
  }) {
    return updateCustomers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OpenCustomerDetail value)? openCustomerDetail,
    TResult? Function(_SelectCustomer value)? selectCustomer,
    TResult? Function(_SearchCustomer value)? searchCustomers,
    TResult? Function(_FetchCustomerData value)? fetchCustomerData,
    TResult? Function(_DeleteCustomer value)? deleteCustomer,
    TResult? Function(_EditCustomer value)? editCustomer,
    TResult? Function(_AddCustomer value)? addCustomer,
    TResult? Function(_UpdateCustomers value)? updateCustomers,
    TResult? Function(_GetLatestPaymentOfCustomer value)?
        getLatestPaymentOfCustomer,
  }) {
    return updateCustomers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OpenCustomerDetail value)? openCustomerDetail,
    TResult Function(_SelectCustomer value)? selectCustomer,
    TResult Function(_SearchCustomer value)? searchCustomers,
    TResult Function(_FetchCustomerData value)? fetchCustomerData,
    TResult Function(_DeleteCustomer value)? deleteCustomer,
    TResult Function(_EditCustomer value)? editCustomer,
    TResult Function(_AddCustomer value)? addCustomer,
    TResult Function(_UpdateCustomers value)? updateCustomers,
    TResult Function(_GetLatestPaymentOfCustomer value)?
        getLatestPaymentOfCustomer,
    required TResult orElse(),
  }) {
    if (updateCustomers != null) {
      return updateCustomers(this);
    }
    return orElse();
  }
}

abstract class _UpdateCustomers implements CustomerEvent {
  const factory _UpdateCustomers(
      {required final bool isEdit,
      required final Customer customer}) = _$_UpdateCustomers;

  bool get isEdit;
  Customer get customer;
  @JsonKey(ignore: true)
  _$$_UpdateCustomersCopyWith<_$_UpdateCustomers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetLatestPaymentOfCustomerCopyWith<$Res> {
  factory _$$_GetLatestPaymentOfCustomerCopyWith(
          _$_GetLatestPaymentOfCustomer value,
          $Res Function(_$_GetLatestPaymentOfCustomer) then) =
      __$$_GetLatestPaymentOfCustomerCopyWithImpl<$Res>;
  @useResult
  $Res call({int customerId});
}

/// @nodoc
class __$$_GetLatestPaymentOfCustomerCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$_GetLatestPaymentOfCustomer>
    implements _$$_GetLatestPaymentOfCustomerCopyWith<$Res> {
  __$$_GetLatestPaymentOfCustomerCopyWithImpl(
      _$_GetLatestPaymentOfCustomer _value,
      $Res Function(_$_GetLatestPaymentOfCustomer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
  }) {
    return _then(_$_GetLatestPaymentOfCustomer(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetLatestPaymentOfCustomer implements _GetLatestPaymentOfCustomer {
  const _$_GetLatestPaymentOfCustomer({required this.customerId});

  @override
  final int customerId;

  @override
  String toString() {
    return 'CustomerEvent.getLatestPaymentOfCustomer(customerId: $customerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetLatestPaymentOfCustomer &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetLatestPaymentOfCustomerCopyWith<_$_GetLatestPaymentOfCustomer>
      get copyWith => __$$_GetLatestPaymentOfCustomerCopyWithImpl<
          _$_GetLatestPaymentOfCustomer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(String customerId) openCustomerDetail,
    required TResult Function(String id, int index) selectCustomer,
    required TResult Function(String? id, String? name, String? identify)
        searchCustomers,
    required TResult Function() fetchCustomerData,
    required TResult Function(int id) deleteCustomer,
    required TResult Function(String id) editCustomer,
    required TResult Function() addCustomer,
    required TResult Function(bool isEdit, Customer customer) updateCustomers,
    required TResult Function(int customerId) getLatestPaymentOfCustomer,
  }) {
    return getLatestPaymentOfCustomer(customerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(String customerId)? openCustomerDetail,
    TResult? Function(String id, int index)? selectCustomer,
    TResult? Function(String? id, String? name, String? identify)?
        searchCustomers,
    TResult? Function()? fetchCustomerData,
    TResult? Function(int id)? deleteCustomer,
    TResult? Function(String id)? editCustomer,
    TResult? Function()? addCustomer,
    TResult? Function(bool isEdit, Customer customer)? updateCustomers,
    TResult? Function(int customerId)? getLatestPaymentOfCustomer,
  }) {
    return getLatestPaymentOfCustomer?.call(customerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String customerId)? openCustomerDetail,
    TResult Function(String id, int index)? selectCustomer,
    TResult Function(String? id, String? name, String? identify)?
        searchCustomers,
    TResult Function()? fetchCustomerData,
    TResult Function(int id)? deleteCustomer,
    TResult Function(String id)? editCustomer,
    TResult Function()? addCustomer,
    TResult Function(bool isEdit, Customer customer)? updateCustomers,
    TResult Function(int customerId)? getLatestPaymentOfCustomer,
    required TResult orElse(),
  }) {
    if (getLatestPaymentOfCustomer != null) {
      return getLatestPaymentOfCustomer(customerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OpenCustomerDetail value) openCustomerDetail,
    required TResult Function(_SelectCustomer value) selectCustomer,
    required TResult Function(_SearchCustomer value) searchCustomers,
    required TResult Function(_FetchCustomerData value) fetchCustomerData,
    required TResult Function(_DeleteCustomer value) deleteCustomer,
    required TResult Function(_EditCustomer value) editCustomer,
    required TResult Function(_AddCustomer value) addCustomer,
    required TResult Function(_UpdateCustomers value) updateCustomers,
    required TResult Function(_GetLatestPaymentOfCustomer value)
        getLatestPaymentOfCustomer,
  }) {
    return getLatestPaymentOfCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OpenCustomerDetail value)? openCustomerDetail,
    TResult? Function(_SelectCustomer value)? selectCustomer,
    TResult? Function(_SearchCustomer value)? searchCustomers,
    TResult? Function(_FetchCustomerData value)? fetchCustomerData,
    TResult? Function(_DeleteCustomer value)? deleteCustomer,
    TResult? Function(_EditCustomer value)? editCustomer,
    TResult? Function(_AddCustomer value)? addCustomer,
    TResult? Function(_UpdateCustomers value)? updateCustomers,
    TResult? Function(_GetLatestPaymentOfCustomer value)?
        getLatestPaymentOfCustomer,
  }) {
    return getLatestPaymentOfCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OpenCustomerDetail value)? openCustomerDetail,
    TResult Function(_SelectCustomer value)? selectCustomer,
    TResult Function(_SearchCustomer value)? searchCustomers,
    TResult Function(_FetchCustomerData value)? fetchCustomerData,
    TResult Function(_DeleteCustomer value)? deleteCustomer,
    TResult Function(_EditCustomer value)? editCustomer,
    TResult Function(_AddCustomer value)? addCustomer,
    TResult Function(_UpdateCustomers value)? updateCustomers,
    TResult Function(_GetLatestPaymentOfCustomer value)?
        getLatestPaymentOfCustomer,
    required TResult orElse(),
  }) {
    if (getLatestPaymentOfCustomer != null) {
      return getLatestPaymentOfCustomer(this);
    }
    return orElse();
  }
}

abstract class _GetLatestPaymentOfCustomer implements CustomerEvent {
  const factory _GetLatestPaymentOfCustomer({required final int customerId}) =
      _$_GetLatestPaymentOfCustomer;

  int get customerId;
  @JsonKey(ignore: true)
  _$$_GetLatestPaymentOfCustomerCopyWith<_$_GetLatestPaymentOfCustomer>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomerState {
  CustomerModelState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerModelState data) initial,
    required TResult Function(CustomerModelState data, int loadingField)
        loading,
    required TResult Function(CustomerModelState data) fetchCustomerDataSuccess,
    required TResult Function(CustomerModelState data, String message)
        fetchCustomerDataFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        openCustomerDetailSuccess,
    required TResult Function(CustomerModelState data, String message)
        openCustomerDetailFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        selectCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        selectCustomerFailed,
    required TResult Function(CustomerModelState data) deleteCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        deleteCustomerFailed,
    required TResult Function(CustomerModelState data)
        getPaymentOfCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        getPaymentOfCustomerFailed,
    required TResult Function(CustomerModelState data, String message)
        openCustomerAddEditPage,
    required TResult Function(CustomerModelState data) updateCustomerSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerModelState data)? initial,
    TResult? Function(CustomerModelState data, int loadingField)? loading,
    TResult? Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult? Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult? Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult? Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult? Function(CustomerModelState data)? updateCustomerSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerModelState data)? initial,
    TResult Function(CustomerModelState data, int loadingField)? loading,
    TResult Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult Function(CustomerModelState data)? updateCustomerSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchCustomerDataSuccess value)
        fetchCustomerDataSuccess,
    required TResult Function(_FetchCustomerDataFailed value)
        fetchCustomerDataFailed,
    required TResult Function(_OpenCustomerDetailSuccess value)
        openCustomerDetailSuccess,
    required TResult Function(_OpenCustomerDetailFailed value)
        openCustomerDetailFailed,
    required TResult Function(_SelectCustomerSuccess value)
        selectCustomerSuccess,
    required TResult Function(_SelectCustomerFailed value) selectCustomerFailed,
    required TResult Function(_DeleteCustomerSuccess value)
        deleteCustomerSuccess,
    required TResult Function(_DeleteCustomerFailed value) deleteCustomerFailed,
    required TResult Function(_GetPaymentOfCustomerSuccess value)
        getPaymentOfCustomerSuccess,
    required TResult Function(_GetPaymentOfCustomerFailed value)
        getPaymentOfCustomerFailed,
    required TResult Function(_OpenCustomerAddEditPage value)
        openCustomerAddEditPage,
    required TResult Function(_UpdateCustomerSuccess value)
        updateCustomerSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchCustomerDataSuccess value)?
        fetchCustomerDataSuccess,
    TResult? Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult? Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult? Function(_OpenCustomerDetailFailed value)?
        openCustomerDetailFailed,
    TResult? Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult? Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult? Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult? Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult? Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult? Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult? Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult? Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchCustomerDataSuccess value)? fetchCustomerDataSuccess,
    TResult Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult Function(_OpenCustomerDetailFailed value)? openCustomerDetailFailed,
    TResult Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
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
    required TResult Function(CustomerModelState data, int loadingField)
        loading,
    required TResult Function(CustomerModelState data) fetchCustomerDataSuccess,
    required TResult Function(CustomerModelState data, String message)
        fetchCustomerDataFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        openCustomerDetailSuccess,
    required TResult Function(CustomerModelState data, String message)
        openCustomerDetailFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        selectCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        selectCustomerFailed,
    required TResult Function(CustomerModelState data) deleteCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        deleteCustomerFailed,
    required TResult Function(CustomerModelState data)
        getPaymentOfCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        getPaymentOfCustomerFailed,
    required TResult Function(CustomerModelState data, String message)
        openCustomerAddEditPage,
    required TResult Function(CustomerModelState data) updateCustomerSuccess,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerModelState data)? initial,
    TResult? Function(CustomerModelState data, int loadingField)? loading,
    TResult? Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult? Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult? Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult? Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult? Function(CustomerModelState data)? updateCustomerSuccess,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerModelState data)? initial,
    TResult Function(CustomerModelState data, int loadingField)? loading,
    TResult Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult Function(CustomerModelState data)? updateCustomerSuccess,
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
    required TResult Function(_FetchCustomerDataSuccess value)
        fetchCustomerDataSuccess,
    required TResult Function(_FetchCustomerDataFailed value)
        fetchCustomerDataFailed,
    required TResult Function(_OpenCustomerDetailSuccess value)
        openCustomerDetailSuccess,
    required TResult Function(_OpenCustomerDetailFailed value)
        openCustomerDetailFailed,
    required TResult Function(_SelectCustomerSuccess value)
        selectCustomerSuccess,
    required TResult Function(_SelectCustomerFailed value) selectCustomerFailed,
    required TResult Function(_DeleteCustomerSuccess value)
        deleteCustomerSuccess,
    required TResult Function(_DeleteCustomerFailed value) deleteCustomerFailed,
    required TResult Function(_GetPaymentOfCustomerSuccess value)
        getPaymentOfCustomerSuccess,
    required TResult Function(_GetPaymentOfCustomerFailed value)
        getPaymentOfCustomerFailed,
    required TResult Function(_OpenCustomerAddEditPage value)
        openCustomerAddEditPage,
    required TResult Function(_UpdateCustomerSuccess value)
        updateCustomerSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchCustomerDataSuccess value)?
        fetchCustomerDataSuccess,
    TResult? Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult? Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult? Function(_OpenCustomerDetailFailed value)?
        openCustomerDetailFailed,
    TResult? Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult? Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult? Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult? Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult? Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult? Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult? Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult? Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchCustomerDataSuccess value)? fetchCustomerDataSuccess,
    TResult Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult Function(_OpenCustomerDetailFailed value)? openCustomerDetailFailed,
    TResult Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
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
  $Res call({CustomerModelState data, int loadingField});

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
    Object? loadingField = null,
  }) {
    return _then(_$_Loading(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerModelState,
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
  final CustomerModelState data;
  @override
  final int loadingField;

  @override
  String toString() {
    return 'CustomerState.loading(data: $data, loadingField: $loadingField)';
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
    required TResult Function(CustomerModelState data) initial,
    required TResult Function(CustomerModelState data, int loadingField)
        loading,
    required TResult Function(CustomerModelState data) fetchCustomerDataSuccess,
    required TResult Function(CustomerModelState data, String message)
        fetchCustomerDataFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        openCustomerDetailSuccess,
    required TResult Function(CustomerModelState data, String message)
        openCustomerDetailFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        selectCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        selectCustomerFailed,
    required TResult Function(CustomerModelState data) deleteCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        deleteCustomerFailed,
    required TResult Function(CustomerModelState data)
        getPaymentOfCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        getPaymentOfCustomerFailed,
    required TResult Function(CustomerModelState data, String message)
        openCustomerAddEditPage,
    required TResult Function(CustomerModelState data) updateCustomerSuccess,
  }) {
    return loading(data, loadingField);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerModelState data)? initial,
    TResult? Function(CustomerModelState data, int loadingField)? loading,
    TResult? Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult? Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult? Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult? Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult? Function(CustomerModelState data)? updateCustomerSuccess,
  }) {
    return loading?.call(data, loadingField);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerModelState data)? initial,
    TResult Function(CustomerModelState data, int loadingField)? loading,
    TResult Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult Function(CustomerModelState data)? updateCustomerSuccess,
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
    required TResult Function(_FetchCustomerDataSuccess value)
        fetchCustomerDataSuccess,
    required TResult Function(_FetchCustomerDataFailed value)
        fetchCustomerDataFailed,
    required TResult Function(_OpenCustomerDetailSuccess value)
        openCustomerDetailSuccess,
    required TResult Function(_OpenCustomerDetailFailed value)
        openCustomerDetailFailed,
    required TResult Function(_SelectCustomerSuccess value)
        selectCustomerSuccess,
    required TResult Function(_SelectCustomerFailed value) selectCustomerFailed,
    required TResult Function(_DeleteCustomerSuccess value)
        deleteCustomerSuccess,
    required TResult Function(_DeleteCustomerFailed value) deleteCustomerFailed,
    required TResult Function(_GetPaymentOfCustomerSuccess value)
        getPaymentOfCustomerSuccess,
    required TResult Function(_GetPaymentOfCustomerFailed value)
        getPaymentOfCustomerFailed,
    required TResult Function(_OpenCustomerAddEditPage value)
        openCustomerAddEditPage,
    required TResult Function(_UpdateCustomerSuccess value)
        updateCustomerSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchCustomerDataSuccess value)?
        fetchCustomerDataSuccess,
    TResult? Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult? Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult? Function(_OpenCustomerDetailFailed value)?
        openCustomerDetailFailed,
    TResult? Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult? Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult? Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult? Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult? Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult? Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult? Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult? Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchCustomerDataSuccess value)? fetchCustomerDataSuccess,
    TResult Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult Function(_OpenCustomerDetailFailed value)? openCustomerDetailFailed,
    TResult Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends CustomerState {
  const factory _Loading(
      {required final CustomerModelState data,
      required final int loadingField}) = _$_Loading;
  const _Loading._() : super._();

  @override
  CustomerModelState get data;
  int get loadingField;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchCustomerDataSuccessCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$_FetchCustomerDataSuccessCopyWith(
          _$_FetchCustomerDataSuccess value,
          $Res Function(_$_FetchCustomerDataSuccess) then) =
      __$$_FetchCustomerDataSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerModelState data});

  @override
  $CustomerModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FetchCustomerDataSuccessCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_FetchCustomerDataSuccess>
    implements _$$_FetchCustomerDataSuccessCopyWith<$Res> {
  __$$_FetchCustomerDataSuccessCopyWithImpl(_$_FetchCustomerDataSuccess _value,
      $Res Function(_$_FetchCustomerDataSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_FetchCustomerDataSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerModelState,
    ));
  }
}

/// @nodoc

class _$_FetchCustomerDataSuccess extends _FetchCustomerDataSuccess {
  const _$_FetchCustomerDataSuccess({required this.data}) : super._();

  @override
  final CustomerModelState data;

  @override
  String toString() {
    return 'CustomerState.fetchCustomerDataSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchCustomerDataSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchCustomerDataSuccessCopyWith<_$_FetchCustomerDataSuccess>
      get copyWith => __$$_FetchCustomerDataSuccessCopyWithImpl<
          _$_FetchCustomerDataSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerModelState data) initial,
    required TResult Function(CustomerModelState data, int loadingField)
        loading,
    required TResult Function(CustomerModelState data) fetchCustomerDataSuccess,
    required TResult Function(CustomerModelState data, String message)
        fetchCustomerDataFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        openCustomerDetailSuccess,
    required TResult Function(CustomerModelState data, String message)
        openCustomerDetailFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        selectCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        selectCustomerFailed,
    required TResult Function(CustomerModelState data) deleteCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        deleteCustomerFailed,
    required TResult Function(CustomerModelState data)
        getPaymentOfCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        getPaymentOfCustomerFailed,
    required TResult Function(CustomerModelState data, String message)
        openCustomerAddEditPage,
    required TResult Function(CustomerModelState data) updateCustomerSuccess,
  }) {
    return fetchCustomerDataSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerModelState data)? initial,
    TResult? Function(CustomerModelState data, int loadingField)? loading,
    TResult? Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult? Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult? Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult? Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult? Function(CustomerModelState data)? updateCustomerSuccess,
  }) {
    return fetchCustomerDataSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerModelState data)? initial,
    TResult Function(CustomerModelState data, int loadingField)? loading,
    TResult Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult Function(CustomerModelState data)? updateCustomerSuccess,
    required TResult orElse(),
  }) {
    if (fetchCustomerDataSuccess != null) {
      return fetchCustomerDataSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchCustomerDataSuccess value)
        fetchCustomerDataSuccess,
    required TResult Function(_FetchCustomerDataFailed value)
        fetchCustomerDataFailed,
    required TResult Function(_OpenCustomerDetailSuccess value)
        openCustomerDetailSuccess,
    required TResult Function(_OpenCustomerDetailFailed value)
        openCustomerDetailFailed,
    required TResult Function(_SelectCustomerSuccess value)
        selectCustomerSuccess,
    required TResult Function(_SelectCustomerFailed value) selectCustomerFailed,
    required TResult Function(_DeleteCustomerSuccess value)
        deleteCustomerSuccess,
    required TResult Function(_DeleteCustomerFailed value) deleteCustomerFailed,
    required TResult Function(_GetPaymentOfCustomerSuccess value)
        getPaymentOfCustomerSuccess,
    required TResult Function(_GetPaymentOfCustomerFailed value)
        getPaymentOfCustomerFailed,
    required TResult Function(_OpenCustomerAddEditPage value)
        openCustomerAddEditPage,
    required TResult Function(_UpdateCustomerSuccess value)
        updateCustomerSuccess,
  }) {
    return fetchCustomerDataSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchCustomerDataSuccess value)?
        fetchCustomerDataSuccess,
    TResult? Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult? Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult? Function(_OpenCustomerDetailFailed value)?
        openCustomerDetailFailed,
    TResult? Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult? Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult? Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult? Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult? Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult? Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult? Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult? Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
  }) {
    return fetchCustomerDataSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchCustomerDataSuccess value)? fetchCustomerDataSuccess,
    TResult Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult Function(_OpenCustomerDetailFailed value)? openCustomerDetailFailed,
    TResult Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
    required TResult orElse(),
  }) {
    if (fetchCustomerDataSuccess != null) {
      return fetchCustomerDataSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchCustomerDataSuccess extends CustomerState {
  const factory _FetchCustomerDataSuccess(
      {required final CustomerModelState data}) = _$_FetchCustomerDataSuccess;
  const _FetchCustomerDataSuccess._() : super._();

  @override
  CustomerModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_FetchCustomerDataSuccessCopyWith<_$_FetchCustomerDataSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchCustomerDataFailedCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$_FetchCustomerDataFailedCopyWith(_$_FetchCustomerDataFailed value,
          $Res Function(_$_FetchCustomerDataFailed) then) =
      __$$_FetchCustomerDataFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerModelState data, String message});

  @override
  $CustomerModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FetchCustomerDataFailedCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_FetchCustomerDataFailed>
    implements _$$_FetchCustomerDataFailedCopyWith<$Res> {
  __$$_FetchCustomerDataFailedCopyWithImpl(_$_FetchCustomerDataFailed _value,
      $Res Function(_$_FetchCustomerDataFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_FetchCustomerDataFailed(
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

class _$_FetchCustomerDataFailed extends _FetchCustomerDataFailed {
  const _$_FetchCustomerDataFailed({required this.data, required this.message})
      : super._();

  @override
  final CustomerModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'CustomerState.fetchCustomerDataFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchCustomerDataFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchCustomerDataFailedCopyWith<_$_FetchCustomerDataFailed>
      get copyWith =>
          __$$_FetchCustomerDataFailedCopyWithImpl<_$_FetchCustomerDataFailed>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerModelState data) initial,
    required TResult Function(CustomerModelState data, int loadingField)
        loading,
    required TResult Function(CustomerModelState data) fetchCustomerDataSuccess,
    required TResult Function(CustomerModelState data, String message)
        fetchCustomerDataFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        openCustomerDetailSuccess,
    required TResult Function(CustomerModelState data, String message)
        openCustomerDetailFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        selectCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        selectCustomerFailed,
    required TResult Function(CustomerModelState data) deleteCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        deleteCustomerFailed,
    required TResult Function(CustomerModelState data)
        getPaymentOfCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        getPaymentOfCustomerFailed,
    required TResult Function(CustomerModelState data, String message)
        openCustomerAddEditPage,
    required TResult Function(CustomerModelState data) updateCustomerSuccess,
  }) {
    return fetchCustomerDataFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerModelState data)? initial,
    TResult? Function(CustomerModelState data, int loadingField)? loading,
    TResult? Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult? Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult? Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult? Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult? Function(CustomerModelState data)? updateCustomerSuccess,
  }) {
    return fetchCustomerDataFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerModelState data)? initial,
    TResult Function(CustomerModelState data, int loadingField)? loading,
    TResult Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult Function(CustomerModelState data)? updateCustomerSuccess,
    required TResult orElse(),
  }) {
    if (fetchCustomerDataFailed != null) {
      return fetchCustomerDataFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchCustomerDataSuccess value)
        fetchCustomerDataSuccess,
    required TResult Function(_FetchCustomerDataFailed value)
        fetchCustomerDataFailed,
    required TResult Function(_OpenCustomerDetailSuccess value)
        openCustomerDetailSuccess,
    required TResult Function(_OpenCustomerDetailFailed value)
        openCustomerDetailFailed,
    required TResult Function(_SelectCustomerSuccess value)
        selectCustomerSuccess,
    required TResult Function(_SelectCustomerFailed value) selectCustomerFailed,
    required TResult Function(_DeleteCustomerSuccess value)
        deleteCustomerSuccess,
    required TResult Function(_DeleteCustomerFailed value) deleteCustomerFailed,
    required TResult Function(_GetPaymentOfCustomerSuccess value)
        getPaymentOfCustomerSuccess,
    required TResult Function(_GetPaymentOfCustomerFailed value)
        getPaymentOfCustomerFailed,
    required TResult Function(_OpenCustomerAddEditPage value)
        openCustomerAddEditPage,
    required TResult Function(_UpdateCustomerSuccess value)
        updateCustomerSuccess,
  }) {
    return fetchCustomerDataFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchCustomerDataSuccess value)?
        fetchCustomerDataSuccess,
    TResult? Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult? Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult? Function(_OpenCustomerDetailFailed value)?
        openCustomerDetailFailed,
    TResult? Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult? Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult? Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult? Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult? Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult? Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult? Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult? Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
  }) {
    return fetchCustomerDataFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchCustomerDataSuccess value)? fetchCustomerDataSuccess,
    TResult Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult Function(_OpenCustomerDetailFailed value)? openCustomerDetailFailed,
    TResult Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
    required TResult orElse(),
  }) {
    if (fetchCustomerDataFailed != null) {
      return fetchCustomerDataFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchCustomerDataFailed extends CustomerState {
  const factory _FetchCustomerDataFailed(
      {required final CustomerModelState data,
      required final String message}) = _$_FetchCustomerDataFailed;
  const _FetchCustomerDataFailed._() : super._();

  @override
  CustomerModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_FetchCustomerDataFailedCopyWith<_$_FetchCustomerDataFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OpenCustomerDetailSuccessCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$_OpenCustomerDetailSuccessCopyWith(
          _$_OpenCustomerDetailSuccess value,
          $Res Function(_$_OpenCustomerDetailSuccess) then) =
      __$$_OpenCustomerDetailSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerModelState data, Customer customer});

  @override
  $CustomerModelStateCopyWith<$Res> get data;
  $CustomerCopyWith<$Res> get customer;
}

/// @nodoc
class __$$_OpenCustomerDetailSuccessCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_OpenCustomerDetailSuccess>
    implements _$$_OpenCustomerDetailSuccessCopyWith<$Res> {
  __$$_OpenCustomerDetailSuccessCopyWithImpl(
      _$_OpenCustomerDetailSuccess _value,
      $Res Function(_$_OpenCustomerDetailSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? customer = null,
  }) {
    return _then(_$_OpenCustomerDetailSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerModelState,
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

class _$_OpenCustomerDetailSuccess extends _OpenCustomerDetailSuccess {
  const _$_OpenCustomerDetailSuccess(
      {required this.data, required this.customer})
      : super._();

  @override
  final CustomerModelState data;
  @override
  final Customer customer;

  @override
  String toString() {
    return 'CustomerState.openCustomerDetailSuccess(data: $data, customer: $customer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenCustomerDetailSuccess &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, customer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenCustomerDetailSuccessCopyWith<_$_OpenCustomerDetailSuccess>
      get copyWith => __$$_OpenCustomerDetailSuccessCopyWithImpl<
          _$_OpenCustomerDetailSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerModelState data) initial,
    required TResult Function(CustomerModelState data, int loadingField)
        loading,
    required TResult Function(CustomerModelState data) fetchCustomerDataSuccess,
    required TResult Function(CustomerModelState data, String message)
        fetchCustomerDataFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        openCustomerDetailSuccess,
    required TResult Function(CustomerModelState data, String message)
        openCustomerDetailFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        selectCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        selectCustomerFailed,
    required TResult Function(CustomerModelState data) deleteCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        deleteCustomerFailed,
    required TResult Function(CustomerModelState data)
        getPaymentOfCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        getPaymentOfCustomerFailed,
    required TResult Function(CustomerModelState data, String message)
        openCustomerAddEditPage,
    required TResult Function(CustomerModelState data) updateCustomerSuccess,
  }) {
    return openCustomerDetailSuccess(data, customer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerModelState data)? initial,
    TResult? Function(CustomerModelState data, int loadingField)? loading,
    TResult? Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult? Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult? Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult? Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult? Function(CustomerModelState data)? updateCustomerSuccess,
  }) {
    return openCustomerDetailSuccess?.call(data, customer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerModelState data)? initial,
    TResult Function(CustomerModelState data, int loadingField)? loading,
    TResult Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult Function(CustomerModelState data)? updateCustomerSuccess,
    required TResult orElse(),
  }) {
    if (openCustomerDetailSuccess != null) {
      return openCustomerDetailSuccess(data, customer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchCustomerDataSuccess value)
        fetchCustomerDataSuccess,
    required TResult Function(_FetchCustomerDataFailed value)
        fetchCustomerDataFailed,
    required TResult Function(_OpenCustomerDetailSuccess value)
        openCustomerDetailSuccess,
    required TResult Function(_OpenCustomerDetailFailed value)
        openCustomerDetailFailed,
    required TResult Function(_SelectCustomerSuccess value)
        selectCustomerSuccess,
    required TResult Function(_SelectCustomerFailed value) selectCustomerFailed,
    required TResult Function(_DeleteCustomerSuccess value)
        deleteCustomerSuccess,
    required TResult Function(_DeleteCustomerFailed value) deleteCustomerFailed,
    required TResult Function(_GetPaymentOfCustomerSuccess value)
        getPaymentOfCustomerSuccess,
    required TResult Function(_GetPaymentOfCustomerFailed value)
        getPaymentOfCustomerFailed,
    required TResult Function(_OpenCustomerAddEditPage value)
        openCustomerAddEditPage,
    required TResult Function(_UpdateCustomerSuccess value)
        updateCustomerSuccess,
  }) {
    return openCustomerDetailSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchCustomerDataSuccess value)?
        fetchCustomerDataSuccess,
    TResult? Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult? Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult? Function(_OpenCustomerDetailFailed value)?
        openCustomerDetailFailed,
    TResult? Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult? Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult? Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult? Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult? Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult? Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult? Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult? Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
  }) {
    return openCustomerDetailSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchCustomerDataSuccess value)? fetchCustomerDataSuccess,
    TResult Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult Function(_OpenCustomerDetailFailed value)? openCustomerDetailFailed,
    TResult Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
    required TResult orElse(),
  }) {
    if (openCustomerDetailSuccess != null) {
      return openCustomerDetailSuccess(this);
    }
    return orElse();
  }
}

abstract class _OpenCustomerDetailSuccess extends CustomerState {
  const factory _OpenCustomerDetailSuccess(
      {required final CustomerModelState data,
      required final Customer customer}) = _$_OpenCustomerDetailSuccess;
  const _OpenCustomerDetailSuccess._() : super._();

  @override
  CustomerModelState get data;
  Customer get customer;
  @override
  @JsonKey(ignore: true)
  _$$_OpenCustomerDetailSuccessCopyWith<_$_OpenCustomerDetailSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OpenCustomerDetailFailedCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$_OpenCustomerDetailFailedCopyWith(
          _$_OpenCustomerDetailFailed value,
          $Res Function(_$_OpenCustomerDetailFailed) then) =
      __$$_OpenCustomerDetailFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerModelState data, String message});

  @override
  $CustomerModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_OpenCustomerDetailFailedCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_OpenCustomerDetailFailed>
    implements _$$_OpenCustomerDetailFailedCopyWith<$Res> {
  __$$_OpenCustomerDetailFailedCopyWithImpl(_$_OpenCustomerDetailFailed _value,
      $Res Function(_$_OpenCustomerDetailFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_OpenCustomerDetailFailed(
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

class _$_OpenCustomerDetailFailed extends _OpenCustomerDetailFailed {
  const _$_OpenCustomerDetailFailed({required this.data, required this.message})
      : super._();

  @override
  final CustomerModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'CustomerState.openCustomerDetailFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenCustomerDetailFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenCustomerDetailFailedCopyWith<_$_OpenCustomerDetailFailed>
      get copyWith => __$$_OpenCustomerDetailFailedCopyWithImpl<
          _$_OpenCustomerDetailFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerModelState data) initial,
    required TResult Function(CustomerModelState data, int loadingField)
        loading,
    required TResult Function(CustomerModelState data) fetchCustomerDataSuccess,
    required TResult Function(CustomerModelState data, String message)
        fetchCustomerDataFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        openCustomerDetailSuccess,
    required TResult Function(CustomerModelState data, String message)
        openCustomerDetailFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        selectCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        selectCustomerFailed,
    required TResult Function(CustomerModelState data) deleteCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        deleteCustomerFailed,
    required TResult Function(CustomerModelState data)
        getPaymentOfCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        getPaymentOfCustomerFailed,
    required TResult Function(CustomerModelState data, String message)
        openCustomerAddEditPage,
    required TResult Function(CustomerModelState data) updateCustomerSuccess,
  }) {
    return openCustomerDetailFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerModelState data)? initial,
    TResult? Function(CustomerModelState data, int loadingField)? loading,
    TResult? Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult? Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult? Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult? Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult? Function(CustomerModelState data)? updateCustomerSuccess,
  }) {
    return openCustomerDetailFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerModelState data)? initial,
    TResult Function(CustomerModelState data, int loadingField)? loading,
    TResult Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult Function(CustomerModelState data)? updateCustomerSuccess,
    required TResult orElse(),
  }) {
    if (openCustomerDetailFailed != null) {
      return openCustomerDetailFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchCustomerDataSuccess value)
        fetchCustomerDataSuccess,
    required TResult Function(_FetchCustomerDataFailed value)
        fetchCustomerDataFailed,
    required TResult Function(_OpenCustomerDetailSuccess value)
        openCustomerDetailSuccess,
    required TResult Function(_OpenCustomerDetailFailed value)
        openCustomerDetailFailed,
    required TResult Function(_SelectCustomerSuccess value)
        selectCustomerSuccess,
    required TResult Function(_SelectCustomerFailed value) selectCustomerFailed,
    required TResult Function(_DeleteCustomerSuccess value)
        deleteCustomerSuccess,
    required TResult Function(_DeleteCustomerFailed value) deleteCustomerFailed,
    required TResult Function(_GetPaymentOfCustomerSuccess value)
        getPaymentOfCustomerSuccess,
    required TResult Function(_GetPaymentOfCustomerFailed value)
        getPaymentOfCustomerFailed,
    required TResult Function(_OpenCustomerAddEditPage value)
        openCustomerAddEditPage,
    required TResult Function(_UpdateCustomerSuccess value)
        updateCustomerSuccess,
  }) {
    return openCustomerDetailFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchCustomerDataSuccess value)?
        fetchCustomerDataSuccess,
    TResult? Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult? Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult? Function(_OpenCustomerDetailFailed value)?
        openCustomerDetailFailed,
    TResult? Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult? Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult? Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult? Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult? Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult? Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult? Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult? Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
  }) {
    return openCustomerDetailFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchCustomerDataSuccess value)? fetchCustomerDataSuccess,
    TResult Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult Function(_OpenCustomerDetailFailed value)? openCustomerDetailFailed,
    TResult Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
    required TResult orElse(),
  }) {
    if (openCustomerDetailFailed != null) {
      return openCustomerDetailFailed(this);
    }
    return orElse();
  }
}

abstract class _OpenCustomerDetailFailed extends CustomerState {
  const factory _OpenCustomerDetailFailed(
      {required final CustomerModelState data,
      required final String message}) = _$_OpenCustomerDetailFailed;
  const _OpenCustomerDetailFailed._() : super._();

  @override
  CustomerModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_OpenCustomerDetailFailedCopyWith<_$_OpenCustomerDetailFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectCustomerSuccessCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$_SelectCustomerSuccessCopyWith(_$_SelectCustomerSuccess value,
          $Res Function(_$_SelectCustomerSuccess) then) =
      __$$_SelectCustomerSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerModelState data, Customer customer});

  @override
  $CustomerModelStateCopyWith<$Res> get data;
  $CustomerCopyWith<$Res> get customer;
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
    Object? customer = null,
  }) {
    return _then(_$_SelectCustomerSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerModelState,
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

class _$_SelectCustomerSuccess extends _SelectCustomerSuccess {
  const _$_SelectCustomerSuccess({required this.data, required this.customer})
      : super._();

  @override
  final CustomerModelState data;
  @override
  final Customer customer;

  @override
  String toString() {
    return 'CustomerState.selectCustomerSuccess(data: $data, customer: $customer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectCustomerSuccess &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, customer);

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
    required TResult Function(CustomerModelState data, int loadingField)
        loading,
    required TResult Function(CustomerModelState data) fetchCustomerDataSuccess,
    required TResult Function(CustomerModelState data, String message)
        fetchCustomerDataFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        openCustomerDetailSuccess,
    required TResult Function(CustomerModelState data, String message)
        openCustomerDetailFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        selectCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        selectCustomerFailed,
    required TResult Function(CustomerModelState data) deleteCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        deleteCustomerFailed,
    required TResult Function(CustomerModelState data)
        getPaymentOfCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        getPaymentOfCustomerFailed,
    required TResult Function(CustomerModelState data, String message)
        openCustomerAddEditPage,
    required TResult Function(CustomerModelState data) updateCustomerSuccess,
  }) {
    return selectCustomerSuccess(data, customer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerModelState data)? initial,
    TResult? Function(CustomerModelState data, int loadingField)? loading,
    TResult? Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult? Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult? Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult? Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult? Function(CustomerModelState data)? updateCustomerSuccess,
  }) {
    return selectCustomerSuccess?.call(data, customer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerModelState data)? initial,
    TResult Function(CustomerModelState data, int loadingField)? loading,
    TResult Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult Function(CustomerModelState data)? updateCustomerSuccess,
    required TResult orElse(),
  }) {
    if (selectCustomerSuccess != null) {
      return selectCustomerSuccess(data, customer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchCustomerDataSuccess value)
        fetchCustomerDataSuccess,
    required TResult Function(_FetchCustomerDataFailed value)
        fetchCustomerDataFailed,
    required TResult Function(_OpenCustomerDetailSuccess value)
        openCustomerDetailSuccess,
    required TResult Function(_OpenCustomerDetailFailed value)
        openCustomerDetailFailed,
    required TResult Function(_SelectCustomerSuccess value)
        selectCustomerSuccess,
    required TResult Function(_SelectCustomerFailed value) selectCustomerFailed,
    required TResult Function(_DeleteCustomerSuccess value)
        deleteCustomerSuccess,
    required TResult Function(_DeleteCustomerFailed value) deleteCustomerFailed,
    required TResult Function(_GetPaymentOfCustomerSuccess value)
        getPaymentOfCustomerSuccess,
    required TResult Function(_GetPaymentOfCustomerFailed value)
        getPaymentOfCustomerFailed,
    required TResult Function(_OpenCustomerAddEditPage value)
        openCustomerAddEditPage,
    required TResult Function(_UpdateCustomerSuccess value)
        updateCustomerSuccess,
  }) {
    return selectCustomerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchCustomerDataSuccess value)?
        fetchCustomerDataSuccess,
    TResult? Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult? Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult? Function(_OpenCustomerDetailFailed value)?
        openCustomerDetailFailed,
    TResult? Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult? Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult? Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult? Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult? Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult? Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult? Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult? Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
  }) {
    return selectCustomerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchCustomerDataSuccess value)? fetchCustomerDataSuccess,
    TResult Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult Function(_OpenCustomerDetailFailed value)? openCustomerDetailFailed,
    TResult Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
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
      required final Customer customer}) = _$_SelectCustomerSuccess;
  const _SelectCustomerSuccess._() : super._();

  @override
  CustomerModelState get data;
  Customer get customer;
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
    required TResult Function(CustomerModelState data, int loadingField)
        loading,
    required TResult Function(CustomerModelState data) fetchCustomerDataSuccess,
    required TResult Function(CustomerModelState data, String message)
        fetchCustomerDataFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        openCustomerDetailSuccess,
    required TResult Function(CustomerModelState data, String message)
        openCustomerDetailFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        selectCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        selectCustomerFailed,
    required TResult Function(CustomerModelState data) deleteCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        deleteCustomerFailed,
    required TResult Function(CustomerModelState data)
        getPaymentOfCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        getPaymentOfCustomerFailed,
    required TResult Function(CustomerModelState data, String message)
        openCustomerAddEditPage,
    required TResult Function(CustomerModelState data) updateCustomerSuccess,
  }) {
    return selectCustomerFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerModelState data)? initial,
    TResult? Function(CustomerModelState data, int loadingField)? loading,
    TResult? Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult? Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult? Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult? Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult? Function(CustomerModelState data)? updateCustomerSuccess,
  }) {
    return selectCustomerFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerModelState data)? initial,
    TResult Function(CustomerModelState data, int loadingField)? loading,
    TResult Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult Function(CustomerModelState data)? updateCustomerSuccess,
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
    required TResult Function(_FetchCustomerDataSuccess value)
        fetchCustomerDataSuccess,
    required TResult Function(_FetchCustomerDataFailed value)
        fetchCustomerDataFailed,
    required TResult Function(_OpenCustomerDetailSuccess value)
        openCustomerDetailSuccess,
    required TResult Function(_OpenCustomerDetailFailed value)
        openCustomerDetailFailed,
    required TResult Function(_SelectCustomerSuccess value)
        selectCustomerSuccess,
    required TResult Function(_SelectCustomerFailed value) selectCustomerFailed,
    required TResult Function(_DeleteCustomerSuccess value)
        deleteCustomerSuccess,
    required TResult Function(_DeleteCustomerFailed value) deleteCustomerFailed,
    required TResult Function(_GetPaymentOfCustomerSuccess value)
        getPaymentOfCustomerSuccess,
    required TResult Function(_GetPaymentOfCustomerFailed value)
        getPaymentOfCustomerFailed,
    required TResult Function(_OpenCustomerAddEditPage value)
        openCustomerAddEditPage,
    required TResult Function(_UpdateCustomerSuccess value)
        updateCustomerSuccess,
  }) {
    return selectCustomerFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchCustomerDataSuccess value)?
        fetchCustomerDataSuccess,
    TResult? Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult? Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult? Function(_OpenCustomerDetailFailed value)?
        openCustomerDetailFailed,
    TResult? Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult? Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult? Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult? Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult? Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult? Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult? Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult? Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
  }) {
    return selectCustomerFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchCustomerDataSuccess value)? fetchCustomerDataSuccess,
    TResult Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult Function(_OpenCustomerDetailFailed value)? openCustomerDetailFailed,
    TResult Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
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

/// @nodoc
abstract class _$$_DeleteCustomerSuccessCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$_DeleteCustomerSuccessCopyWith(_$_DeleteCustomerSuccess value,
          $Res Function(_$_DeleteCustomerSuccess) then) =
      __$$_DeleteCustomerSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerModelState data});

  @override
  $CustomerModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_DeleteCustomerSuccessCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_DeleteCustomerSuccess>
    implements _$$_DeleteCustomerSuccessCopyWith<$Res> {
  __$$_DeleteCustomerSuccessCopyWithImpl(_$_DeleteCustomerSuccess _value,
      $Res Function(_$_DeleteCustomerSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_DeleteCustomerSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerModelState,
    ));
  }
}

/// @nodoc

class _$_DeleteCustomerSuccess extends _DeleteCustomerSuccess {
  const _$_DeleteCustomerSuccess({required this.data}) : super._();

  @override
  final CustomerModelState data;

  @override
  String toString() {
    return 'CustomerState.deleteCustomerSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteCustomerSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteCustomerSuccessCopyWith<_$_DeleteCustomerSuccess> get copyWith =>
      __$$_DeleteCustomerSuccessCopyWithImpl<_$_DeleteCustomerSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerModelState data) initial,
    required TResult Function(CustomerModelState data, int loadingField)
        loading,
    required TResult Function(CustomerModelState data) fetchCustomerDataSuccess,
    required TResult Function(CustomerModelState data, String message)
        fetchCustomerDataFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        openCustomerDetailSuccess,
    required TResult Function(CustomerModelState data, String message)
        openCustomerDetailFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        selectCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        selectCustomerFailed,
    required TResult Function(CustomerModelState data) deleteCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        deleteCustomerFailed,
    required TResult Function(CustomerModelState data)
        getPaymentOfCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        getPaymentOfCustomerFailed,
    required TResult Function(CustomerModelState data, String message)
        openCustomerAddEditPage,
    required TResult Function(CustomerModelState data) updateCustomerSuccess,
  }) {
    return deleteCustomerSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerModelState data)? initial,
    TResult? Function(CustomerModelState data, int loadingField)? loading,
    TResult? Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult? Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult? Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult? Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult? Function(CustomerModelState data)? updateCustomerSuccess,
  }) {
    return deleteCustomerSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerModelState data)? initial,
    TResult Function(CustomerModelState data, int loadingField)? loading,
    TResult Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult Function(CustomerModelState data)? updateCustomerSuccess,
    required TResult orElse(),
  }) {
    if (deleteCustomerSuccess != null) {
      return deleteCustomerSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchCustomerDataSuccess value)
        fetchCustomerDataSuccess,
    required TResult Function(_FetchCustomerDataFailed value)
        fetchCustomerDataFailed,
    required TResult Function(_OpenCustomerDetailSuccess value)
        openCustomerDetailSuccess,
    required TResult Function(_OpenCustomerDetailFailed value)
        openCustomerDetailFailed,
    required TResult Function(_SelectCustomerSuccess value)
        selectCustomerSuccess,
    required TResult Function(_SelectCustomerFailed value) selectCustomerFailed,
    required TResult Function(_DeleteCustomerSuccess value)
        deleteCustomerSuccess,
    required TResult Function(_DeleteCustomerFailed value) deleteCustomerFailed,
    required TResult Function(_GetPaymentOfCustomerSuccess value)
        getPaymentOfCustomerSuccess,
    required TResult Function(_GetPaymentOfCustomerFailed value)
        getPaymentOfCustomerFailed,
    required TResult Function(_OpenCustomerAddEditPage value)
        openCustomerAddEditPage,
    required TResult Function(_UpdateCustomerSuccess value)
        updateCustomerSuccess,
  }) {
    return deleteCustomerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchCustomerDataSuccess value)?
        fetchCustomerDataSuccess,
    TResult? Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult? Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult? Function(_OpenCustomerDetailFailed value)?
        openCustomerDetailFailed,
    TResult? Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult? Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult? Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult? Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult? Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult? Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult? Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult? Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
  }) {
    return deleteCustomerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchCustomerDataSuccess value)? fetchCustomerDataSuccess,
    TResult Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult Function(_OpenCustomerDetailFailed value)? openCustomerDetailFailed,
    TResult Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
    required TResult orElse(),
  }) {
    if (deleteCustomerSuccess != null) {
      return deleteCustomerSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteCustomerSuccess extends CustomerState {
  const factory _DeleteCustomerSuccess(
      {required final CustomerModelState data}) = _$_DeleteCustomerSuccess;
  const _DeleteCustomerSuccess._() : super._();

  @override
  CustomerModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteCustomerSuccessCopyWith<_$_DeleteCustomerSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCustomerFailedCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$_DeleteCustomerFailedCopyWith(_$_DeleteCustomerFailed value,
          $Res Function(_$_DeleteCustomerFailed) then) =
      __$$_DeleteCustomerFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerModelState data, String message});

  @override
  $CustomerModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_DeleteCustomerFailedCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_DeleteCustomerFailed>
    implements _$$_DeleteCustomerFailedCopyWith<$Res> {
  __$$_DeleteCustomerFailedCopyWithImpl(_$_DeleteCustomerFailed _value,
      $Res Function(_$_DeleteCustomerFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_DeleteCustomerFailed(
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

class _$_DeleteCustomerFailed extends _DeleteCustomerFailed {
  const _$_DeleteCustomerFailed({required this.data, required this.message})
      : super._();

  @override
  final CustomerModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'CustomerState.deleteCustomerFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteCustomerFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteCustomerFailedCopyWith<_$_DeleteCustomerFailed> get copyWith =>
      __$$_DeleteCustomerFailedCopyWithImpl<_$_DeleteCustomerFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerModelState data) initial,
    required TResult Function(CustomerModelState data, int loadingField)
        loading,
    required TResult Function(CustomerModelState data) fetchCustomerDataSuccess,
    required TResult Function(CustomerModelState data, String message)
        fetchCustomerDataFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        openCustomerDetailSuccess,
    required TResult Function(CustomerModelState data, String message)
        openCustomerDetailFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        selectCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        selectCustomerFailed,
    required TResult Function(CustomerModelState data) deleteCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        deleteCustomerFailed,
    required TResult Function(CustomerModelState data)
        getPaymentOfCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        getPaymentOfCustomerFailed,
    required TResult Function(CustomerModelState data, String message)
        openCustomerAddEditPage,
    required TResult Function(CustomerModelState data) updateCustomerSuccess,
  }) {
    return deleteCustomerFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerModelState data)? initial,
    TResult? Function(CustomerModelState data, int loadingField)? loading,
    TResult? Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult? Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult? Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult? Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult? Function(CustomerModelState data)? updateCustomerSuccess,
  }) {
    return deleteCustomerFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerModelState data)? initial,
    TResult Function(CustomerModelState data, int loadingField)? loading,
    TResult Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult Function(CustomerModelState data)? updateCustomerSuccess,
    required TResult orElse(),
  }) {
    if (deleteCustomerFailed != null) {
      return deleteCustomerFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchCustomerDataSuccess value)
        fetchCustomerDataSuccess,
    required TResult Function(_FetchCustomerDataFailed value)
        fetchCustomerDataFailed,
    required TResult Function(_OpenCustomerDetailSuccess value)
        openCustomerDetailSuccess,
    required TResult Function(_OpenCustomerDetailFailed value)
        openCustomerDetailFailed,
    required TResult Function(_SelectCustomerSuccess value)
        selectCustomerSuccess,
    required TResult Function(_SelectCustomerFailed value) selectCustomerFailed,
    required TResult Function(_DeleteCustomerSuccess value)
        deleteCustomerSuccess,
    required TResult Function(_DeleteCustomerFailed value) deleteCustomerFailed,
    required TResult Function(_GetPaymentOfCustomerSuccess value)
        getPaymentOfCustomerSuccess,
    required TResult Function(_GetPaymentOfCustomerFailed value)
        getPaymentOfCustomerFailed,
    required TResult Function(_OpenCustomerAddEditPage value)
        openCustomerAddEditPage,
    required TResult Function(_UpdateCustomerSuccess value)
        updateCustomerSuccess,
  }) {
    return deleteCustomerFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchCustomerDataSuccess value)?
        fetchCustomerDataSuccess,
    TResult? Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult? Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult? Function(_OpenCustomerDetailFailed value)?
        openCustomerDetailFailed,
    TResult? Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult? Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult? Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult? Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult? Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult? Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult? Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult? Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
  }) {
    return deleteCustomerFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchCustomerDataSuccess value)? fetchCustomerDataSuccess,
    TResult Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult Function(_OpenCustomerDetailFailed value)? openCustomerDetailFailed,
    TResult Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
    required TResult orElse(),
  }) {
    if (deleteCustomerFailed != null) {
      return deleteCustomerFailed(this);
    }
    return orElse();
  }
}

abstract class _DeleteCustomerFailed extends CustomerState {
  const factory _DeleteCustomerFailed(
      {required final CustomerModelState data,
      required final String message}) = _$_DeleteCustomerFailed;
  const _DeleteCustomerFailed._() : super._();

  @override
  CustomerModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteCustomerFailedCopyWith<_$_DeleteCustomerFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetPaymentOfCustomerSuccessCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$_GetPaymentOfCustomerSuccessCopyWith(
          _$_GetPaymentOfCustomerSuccess value,
          $Res Function(_$_GetPaymentOfCustomerSuccess) then) =
      __$$_GetPaymentOfCustomerSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerModelState data});

  @override
  $CustomerModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetPaymentOfCustomerSuccessCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_GetPaymentOfCustomerSuccess>
    implements _$$_GetPaymentOfCustomerSuccessCopyWith<$Res> {
  __$$_GetPaymentOfCustomerSuccessCopyWithImpl(
      _$_GetPaymentOfCustomerSuccess _value,
      $Res Function(_$_GetPaymentOfCustomerSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetPaymentOfCustomerSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerModelState,
    ));
  }
}

/// @nodoc

class _$_GetPaymentOfCustomerSuccess extends _GetPaymentOfCustomerSuccess {
  const _$_GetPaymentOfCustomerSuccess({required this.data}) : super._();

  @override
  final CustomerModelState data;

  @override
  String toString() {
    return 'CustomerState.getPaymentOfCustomerSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPaymentOfCustomerSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPaymentOfCustomerSuccessCopyWith<_$_GetPaymentOfCustomerSuccess>
      get copyWith => __$$_GetPaymentOfCustomerSuccessCopyWithImpl<
          _$_GetPaymentOfCustomerSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerModelState data) initial,
    required TResult Function(CustomerModelState data, int loadingField)
        loading,
    required TResult Function(CustomerModelState data) fetchCustomerDataSuccess,
    required TResult Function(CustomerModelState data, String message)
        fetchCustomerDataFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        openCustomerDetailSuccess,
    required TResult Function(CustomerModelState data, String message)
        openCustomerDetailFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        selectCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        selectCustomerFailed,
    required TResult Function(CustomerModelState data) deleteCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        deleteCustomerFailed,
    required TResult Function(CustomerModelState data)
        getPaymentOfCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        getPaymentOfCustomerFailed,
    required TResult Function(CustomerModelState data, String message)
        openCustomerAddEditPage,
    required TResult Function(CustomerModelState data) updateCustomerSuccess,
  }) {
    return getPaymentOfCustomerSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerModelState data)? initial,
    TResult? Function(CustomerModelState data, int loadingField)? loading,
    TResult? Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult? Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult? Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult? Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult? Function(CustomerModelState data)? updateCustomerSuccess,
  }) {
    return getPaymentOfCustomerSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerModelState data)? initial,
    TResult Function(CustomerModelState data, int loadingField)? loading,
    TResult Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult Function(CustomerModelState data)? updateCustomerSuccess,
    required TResult orElse(),
  }) {
    if (getPaymentOfCustomerSuccess != null) {
      return getPaymentOfCustomerSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchCustomerDataSuccess value)
        fetchCustomerDataSuccess,
    required TResult Function(_FetchCustomerDataFailed value)
        fetchCustomerDataFailed,
    required TResult Function(_OpenCustomerDetailSuccess value)
        openCustomerDetailSuccess,
    required TResult Function(_OpenCustomerDetailFailed value)
        openCustomerDetailFailed,
    required TResult Function(_SelectCustomerSuccess value)
        selectCustomerSuccess,
    required TResult Function(_SelectCustomerFailed value) selectCustomerFailed,
    required TResult Function(_DeleteCustomerSuccess value)
        deleteCustomerSuccess,
    required TResult Function(_DeleteCustomerFailed value) deleteCustomerFailed,
    required TResult Function(_GetPaymentOfCustomerSuccess value)
        getPaymentOfCustomerSuccess,
    required TResult Function(_GetPaymentOfCustomerFailed value)
        getPaymentOfCustomerFailed,
    required TResult Function(_OpenCustomerAddEditPage value)
        openCustomerAddEditPage,
    required TResult Function(_UpdateCustomerSuccess value)
        updateCustomerSuccess,
  }) {
    return getPaymentOfCustomerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchCustomerDataSuccess value)?
        fetchCustomerDataSuccess,
    TResult? Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult? Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult? Function(_OpenCustomerDetailFailed value)?
        openCustomerDetailFailed,
    TResult? Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult? Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult? Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult? Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult? Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult? Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult? Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult? Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
  }) {
    return getPaymentOfCustomerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchCustomerDataSuccess value)? fetchCustomerDataSuccess,
    TResult Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult Function(_OpenCustomerDetailFailed value)? openCustomerDetailFailed,
    TResult Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
    required TResult orElse(),
  }) {
    if (getPaymentOfCustomerSuccess != null) {
      return getPaymentOfCustomerSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentOfCustomerSuccess extends CustomerState {
  const factory _GetPaymentOfCustomerSuccess(
          {required final CustomerModelState data}) =
      _$_GetPaymentOfCustomerSuccess;
  const _GetPaymentOfCustomerSuccess._() : super._();

  @override
  CustomerModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetPaymentOfCustomerSuccessCopyWith<_$_GetPaymentOfCustomerSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetPaymentOfCustomerFailedCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$_GetPaymentOfCustomerFailedCopyWith(
          _$_GetPaymentOfCustomerFailed value,
          $Res Function(_$_GetPaymentOfCustomerFailed) then) =
      __$$_GetPaymentOfCustomerFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerModelState data, String message});

  @override
  $CustomerModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetPaymentOfCustomerFailedCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_GetPaymentOfCustomerFailed>
    implements _$$_GetPaymentOfCustomerFailedCopyWith<$Res> {
  __$$_GetPaymentOfCustomerFailedCopyWithImpl(
      _$_GetPaymentOfCustomerFailed _value,
      $Res Function(_$_GetPaymentOfCustomerFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetPaymentOfCustomerFailed(
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

class _$_GetPaymentOfCustomerFailed extends _GetPaymentOfCustomerFailed {
  const _$_GetPaymentOfCustomerFailed(
      {required this.data, required this.message})
      : super._();

  @override
  final CustomerModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'CustomerState.getPaymentOfCustomerFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPaymentOfCustomerFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPaymentOfCustomerFailedCopyWith<_$_GetPaymentOfCustomerFailed>
      get copyWith => __$$_GetPaymentOfCustomerFailedCopyWithImpl<
          _$_GetPaymentOfCustomerFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerModelState data) initial,
    required TResult Function(CustomerModelState data, int loadingField)
        loading,
    required TResult Function(CustomerModelState data) fetchCustomerDataSuccess,
    required TResult Function(CustomerModelState data, String message)
        fetchCustomerDataFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        openCustomerDetailSuccess,
    required TResult Function(CustomerModelState data, String message)
        openCustomerDetailFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        selectCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        selectCustomerFailed,
    required TResult Function(CustomerModelState data) deleteCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        deleteCustomerFailed,
    required TResult Function(CustomerModelState data)
        getPaymentOfCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        getPaymentOfCustomerFailed,
    required TResult Function(CustomerModelState data, String message)
        openCustomerAddEditPage,
    required TResult Function(CustomerModelState data) updateCustomerSuccess,
  }) {
    return getPaymentOfCustomerFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerModelState data)? initial,
    TResult? Function(CustomerModelState data, int loadingField)? loading,
    TResult? Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult? Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult? Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult? Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult? Function(CustomerModelState data)? updateCustomerSuccess,
  }) {
    return getPaymentOfCustomerFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerModelState data)? initial,
    TResult Function(CustomerModelState data, int loadingField)? loading,
    TResult Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult Function(CustomerModelState data)? updateCustomerSuccess,
    required TResult orElse(),
  }) {
    if (getPaymentOfCustomerFailed != null) {
      return getPaymentOfCustomerFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchCustomerDataSuccess value)
        fetchCustomerDataSuccess,
    required TResult Function(_FetchCustomerDataFailed value)
        fetchCustomerDataFailed,
    required TResult Function(_OpenCustomerDetailSuccess value)
        openCustomerDetailSuccess,
    required TResult Function(_OpenCustomerDetailFailed value)
        openCustomerDetailFailed,
    required TResult Function(_SelectCustomerSuccess value)
        selectCustomerSuccess,
    required TResult Function(_SelectCustomerFailed value) selectCustomerFailed,
    required TResult Function(_DeleteCustomerSuccess value)
        deleteCustomerSuccess,
    required TResult Function(_DeleteCustomerFailed value) deleteCustomerFailed,
    required TResult Function(_GetPaymentOfCustomerSuccess value)
        getPaymentOfCustomerSuccess,
    required TResult Function(_GetPaymentOfCustomerFailed value)
        getPaymentOfCustomerFailed,
    required TResult Function(_OpenCustomerAddEditPage value)
        openCustomerAddEditPage,
    required TResult Function(_UpdateCustomerSuccess value)
        updateCustomerSuccess,
  }) {
    return getPaymentOfCustomerFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchCustomerDataSuccess value)?
        fetchCustomerDataSuccess,
    TResult? Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult? Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult? Function(_OpenCustomerDetailFailed value)?
        openCustomerDetailFailed,
    TResult? Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult? Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult? Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult? Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult? Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult? Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult? Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult? Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
  }) {
    return getPaymentOfCustomerFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchCustomerDataSuccess value)? fetchCustomerDataSuccess,
    TResult Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult Function(_OpenCustomerDetailFailed value)? openCustomerDetailFailed,
    TResult Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
    required TResult orElse(),
  }) {
    if (getPaymentOfCustomerFailed != null) {
      return getPaymentOfCustomerFailed(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentOfCustomerFailed extends CustomerState {
  const factory _GetPaymentOfCustomerFailed(
      {required final CustomerModelState data,
      required final String message}) = _$_GetPaymentOfCustomerFailed;
  const _GetPaymentOfCustomerFailed._() : super._();

  @override
  CustomerModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetPaymentOfCustomerFailedCopyWith<_$_GetPaymentOfCustomerFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OpenCustomerAddEditPageCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$_OpenCustomerAddEditPageCopyWith(_$_OpenCustomerAddEditPage value,
          $Res Function(_$_OpenCustomerAddEditPage) then) =
      __$$_OpenCustomerAddEditPageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerModelState data, String message});

  @override
  $CustomerModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_OpenCustomerAddEditPageCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_OpenCustomerAddEditPage>
    implements _$$_OpenCustomerAddEditPageCopyWith<$Res> {
  __$$_OpenCustomerAddEditPageCopyWithImpl(_$_OpenCustomerAddEditPage _value,
      $Res Function(_$_OpenCustomerAddEditPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_OpenCustomerAddEditPage(
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

class _$_OpenCustomerAddEditPage extends _OpenCustomerAddEditPage {
  const _$_OpenCustomerAddEditPage({required this.data, required this.message})
      : super._();

  @override
  final CustomerModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'CustomerState.openCustomerAddEditPage(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenCustomerAddEditPage &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenCustomerAddEditPageCopyWith<_$_OpenCustomerAddEditPage>
      get copyWith =>
          __$$_OpenCustomerAddEditPageCopyWithImpl<_$_OpenCustomerAddEditPage>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerModelState data) initial,
    required TResult Function(CustomerModelState data, int loadingField)
        loading,
    required TResult Function(CustomerModelState data) fetchCustomerDataSuccess,
    required TResult Function(CustomerModelState data, String message)
        fetchCustomerDataFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        openCustomerDetailSuccess,
    required TResult Function(CustomerModelState data, String message)
        openCustomerDetailFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        selectCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        selectCustomerFailed,
    required TResult Function(CustomerModelState data) deleteCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        deleteCustomerFailed,
    required TResult Function(CustomerModelState data)
        getPaymentOfCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        getPaymentOfCustomerFailed,
    required TResult Function(CustomerModelState data, String message)
        openCustomerAddEditPage,
    required TResult Function(CustomerModelState data) updateCustomerSuccess,
  }) {
    return openCustomerAddEditPage(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerModelState data)? initial,
    TResult? Function(CustomerModelState data, int loadingField)? loading,
    TResult? Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult? Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult? Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult? Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult? Function(CustomerModelState data)? updateCustomerSuccess,
  }) {
    return openCustomerAddEditPage?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerModelState data)? initial,
    TResult Function(CustomerModelState data, int loadingField)? loading,
    TResult Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult Function(CustomerModelState data)? updateCustomerSuccess,
    required TResult orElse(),
  }) {
    if (openCustomerAddEditPage != null) {
      return openCustomerAddEditPage(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchCustomerDataSuccess value)
        fetchCustomerDataSuccess,
    required TResult Function(_FetchCustomerDataFailed value)
        fetchCustomerDataFailed,
    required TResult Function(_OpenCustomerDetailSuccess value)
        openCustomerDetailSuccess,
    required TResult Function(_OpenCustomerDetailFailed value)
        openCustomerDetailFailed,
    required TResult Function(_SelectCustomerSuccess value)
        selectCustomerSuccess,
    required TResult Function(_SelectCustomerFailed value) selectCustomerFailed,
    required TResult Function(_DeleteCustomerSuccess value)
        deleteCustomerSuccess,
    required TResult Function(_DeleteCustomerFailed value) deleteCustomerFailed,
    required TResult Function(_GetPaymentOfCustomerSuccess value)
        getPaymentOfCustomerSuccess,
    required TResult Function(_GetPaymentOfCustomerFailed value)
        getPaymentOfCustomerFailed,
    required TResult Function(_OpenCustomerAddEditPage value)
        openCustomerAddEditPage,
    required TResult Function(_UpdateCustomerSuccess value)
        updateCustomerSuccess,
  }) {
    return openCustomerAddEditPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchCustomerDataSuccess value)?
        fetchCustomerDataSuccess,
    TResult? Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult? Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult? Function(_OpenCustomerDetailFailed value)?
        openCustomerDetailFailed,
    TResult? Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult? Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult? Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult? Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult? Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult? Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult? Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult? Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
  }) {
    return openCustomerAddEditPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchCustomerDataSuccess value)? fetchCustomerDataSuccess,
    TResult Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult Function(_OpenCustomerDetailFailed value)? openCustomerDetailFailed,
    TResult Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
    required TResult orElse(),
  }) {
    if (openCustomerAddEditPage != null) {
      return openCustomerAddEditPage(this);
    }
    return orElse();
  }
}

abstract class _OpenCustomerAddEditPage extends CustomerState {
  const factory _OpenCustomerAddEditPage(
      {required final CustomerModelState data,
      required final String message}) = _$_OpenCustomerAddEditPage;
  const _OpenCustomerAddEditPage._() : super._();

  @override
  CustomerModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_OpenCustomerAddEditPageCopyWith<_$_OpenCustomerAddEditPage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateCustomerSuccessCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$_UpdateCustomerSuccessCopyWith(_$_UpdateCustomerSuccess value,
          $Res Function(_$_UpdateCustomerSuccess) then) =
      __$$_UpdateCustomerSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerModelState data});

  @override
  $CustomerModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_UpdateCustomerSuccessCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_UpdateCustomerSuccess>
    implements _$$_UpdateCustomerSuccessCopyWith<$Res> {
  __$$_UpdateCustomerSuccessCopyWithImpl(_$_UpdateCustomerSuccess _value,
      $Res Function(_$_UpdateCustomerSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_UpdateCustomerSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerModelState,
    ));
  }
}

/// @nodoc

class _$_UpdateCustomerSuccess extends _UpdateCustomerSuccess {
  const _$_UpdateCustomerSuccess({required this.data}) : super._();

  @override
  final CustomerModelState data;

  @override
  String toString() {
    return 'CustomerState.updateCustomerSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateCustomerSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCustomerSuccessCopyWith<_$_UpdateCustomerSuccess> get copyWith =>
      __$$_UpdateCustomerSuccessCopyWithImpl<_$_UpdateCustomerSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerModelState data) initial,
    required TResult Function(CustomerModelState data, int loadingField)
        loading,
    required TResult Function(CustomerModelState data) fetchCustomerDataSuccess,
    required TResult Function(CustomerModelState data, String message)
        fetchCustomerDataFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        openCustomerDetailSuccess,
    required TResult Function(CustomerModelState data, String message)
        openCustomerDetailFailed,
    required TResult Function(CustomerModelState data, Customer customer)
        selectCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        selectCustomerFailed,
    required TResult Function(CustomerModelState data) deleteCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        deleteCustomerFailed,
    required TResult Function(CustomerModelState data)
        getPaymentOfCustomerSuccess,
    required TResult Function(CustomerModelState data, String message)
        getPaymentOfCustomerFailed,
    required TResult Function(CustomerModelState data, String message)
        openCustomerAddEditPage,
    required TResult Function(CustomerModelState data) updateCustomerSuccess,
  }) {
    return updateCustomerSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerModelState data)? initial,
    TResult? Function(CustomerModelState data, int loadingField)? loading,
    TResult? Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult? Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult? Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult? Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult? Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult? Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult? Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult? Function(CustomerModelState data)? updateCustomerSuccess,
  }) {
    return updateCustomerSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerModelState data)? initial,
    TResult Function(CustomerModelState data, int loadingField)? loading,
    TResult Function(CustomerModelState data)? fetchCustomerDataSuccess,
    TResult Function(CustomerModelState data, String message)?
        fetchCustomerDataFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        openCustomerDetailSuccess,
    TResult Function(CustomerModelState data, String message)?
        openCustomerDetailFailed,
    TResult Function(CustomerModelState data, Customer customer)?
        selectCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        selectCustomerFailed,
    TResult Function(CustomerModelState data)? deleteCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        deleteCustomerFailed,
    TResult Function(CustomerModelState data)? getPaymentOfCustomerSuccess,
    TResult Function(CustomerModelState data, String message)?
        getPaymentOfCustomerFailed,
    TResult Function(CustomerModelState data, String message)?
        openCustomerAddEditPage,
    TResult Function(CustomerModelState data)? updateCustomerSuccess,
    required TResult orElse(),
  }) {
    if (updateCustomerSuccess != null) {
      return updateCustomerSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchCustomerDataSuccess value)
        fetchCustomerDataSuccess,
    required TResult Function(_FetchCustomerDataFailed value)
        fetchCustomerDataFailed,
    required TResult Function(_OpenCustomerDetailSuccess value)
        openCustomerDetailSuccess,
    required TResult Function(_OpenCustomerDetailFailed value)
        openCustomerDetailFailed,
    required TResult Function(_SelectCustomerSuccess value)
        selectCustomerSuccess,
    required TResult Function(_SelectCustomerFailed value) selectCustomerFailed,
    required TResult Function(_DeleteCustomerSuccess value)
        deleteCustomerSuccess,
    required TResult Function(_DeleteCustomerFailed value) deleteCustomerFailed,
    required TResult Function(_GetPaymentOfCustomerSuccess value)
        getPaymentOfCustomerSuccess,
    required TResult Function(_GetPaymentOfCustomerFailed value)
        getPaymentOfCustomerFailed,
    required TResult Function(_OpenCustomerAddEditPage value)
        openCustomerAddEditPage,
    required TResult Function(_UpdateCustomerSuccess value)
        updateCustomerSuccess,
  }) {
    return updateCustomerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchCustomerDataSuccess value)?
        fetchCustomerDataSuccess,
    TResult? Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult? Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult? Function(_OpenCustomerDetailFailed value)?
        openCustomerDetailFailed,
    TResult? Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult? Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult? Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult? Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult? Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult? Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult? Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult? Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
  }) {
    return updateCustomerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchCustomerDataSuccess value)? fetchCustomerDataSuccess,
    TResult Function(_FetchCustomerDataFailed value)? fetchCustomerDataFailed,
    TResult Function(_OpenCustomerDetailSuccess value)?
        openCustomerDetailSuccess,
    TResult Function(_OpenCustomerDetailFailed value)? openCustomerDetailFailed,
    TResult Function(_SelectCustomerSuccess value)? selectCustomerSuccess,
    TResult Function(_SelectCustomerFailed value)? selectCustomerFailed,
    TResult Function(_DeleteCustomerSuccess value)? deleteCustomerSuccess,
    TResult Function(_DeleteCustomerFailed value)? deleteCustomerFailed,
    TResult Function(_GetPaymentOfCustomerSuccess value)?
        getPaymentOfCustomerSuccess,
    TResult Function(_GetPaymentOfCustomerFailed value)?
        getPaymentOfCustomerFailed,
    TResult Function(_OpenCustomerAddEditPage value)? openCustomerAddEditPage,
    TResult Function(_UpdateCustomerSuccess value)? updateCustomerSuccess,
    required TResult orElse(),
  }) {
    if (updateCustomerSuccess != null) {
      return updateCustomerSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateCustomerSuccess extends CustomerState {
  const factory _UpdateCustomerSuccess(
      {required final CustomerModelState data}) = _$_UpdateCustomerSuccess;
  const _UpdateCustomerSuccess._() : super._();

  @override
  CustomerModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateCustomerSuccessCopyWith<_$_UpdateCustomerSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
