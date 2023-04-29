// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerModelState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Customer> customers) $default, {
    required TResult Function(Customer customer) detailCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<Customer> customers)? $default, {
    TResult? Function(Customer customer)? detailCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Customer> customers)? $default, {
    TResult Function(Customer customer)? detailCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CustomerModelState value) $default, {
    required TResult Function(_DetailCustomer value) detailCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CustomerModelState value)? $default, {
    TResult? Function(_DetailCustomer value)? detailCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CustomerModelState value)? $default, {
    TResult Function(_DetailCustomer value)? detailCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerModelStateCopyWith<$Res> {
  factory $CustomerModelStateCopyWith(
          CustomerModelState value, $Res Function(CustomerModelState) then) =
      _$CustomerModelStateCopyWithImpl<$Res, CustomerModelState>;
}

/// @nodoc
class _$CustomerModelStateCopyWithImpl<$Res, $Val extends CustomerModelState>
    implements $CustomerModelStateCopyWith<$Res> {
  _$CustomerModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CustomerModelStateCopyWith<$Res> {
  factory _$$_CustomerModelStateCopyWith(_$_CustomerModelState value,
          $Res Function(_$_CustomerModelState) then) =
      __$$_CustomerModelStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Customer> customers});
}

/// @nodoc
class __$$_CustomerModelStateCopyWithImpl<$Res>
    extends _$CustomerModelStateCopyWithImpl<$Res, _$_CustomerModelState>
    implements _$$_CustomerModelStateCopyWith<$Res> {
  __$$_CustomerModelStateCopyWithImpl(
      _$_CustomerModelState _value, $Res Function(_$_CustomerModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
  }) {
    return _then(_$_CustomerModelState(
      customers: null == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
    ));
  }
}

/// @nodoc

class _$_CustomerModelState implements _CustomerModelState {
  const _$_CustomerModelState({required final List<Customer> customers})
      : _customers = customers;

  final List<Customer> _customers;
  @override
  List<Customer> get customers {
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customers);
  }

  @override
  String toString() {
    return 'CustomerModelState(customers: $customers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerModelState &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_customers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerModelStateCopyWith<_$_CustomerModelState> get copyWith =>
      __$$_CustomerModelStateCopyWithImpl<_$_CustomerModelState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Customer> customers) $default, {
    required TResult Function(Customer customer) detailCustomer,
  }) {
    return $default(customers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<Customer> customers)? $default, {
    TResult? Function(Customer customer)? detailCustomer,
  }) {
    return $default?.call(customers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Customer> customers)? $default, {
    TResult Function(Customer customer)? detailCustomer,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(customers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CustomerModelState value) $default, {
    required TResult Function(_DetailCustomer value) detailCustomer,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CustomerModelState value)? $default, {
    TResult? Function(_DetailCustomer value)? detailCustomer,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CustomerModelState value)? $default, {
    TResult Function(_DetailCustomer value)? detailCustomer,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _CustomerModelState implements CustomerModelState {
  const factory _CustomerModelState({required final List<Customer> customers}) =
      _$_CustomerModelState;

  List<Customer> get customers;
  @JsonKey(ignore: true)
  _$$_CustomerModelStateCopyWith<_$_CustomerModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DetailCustomerCopyWith<$Res> {
  factory _$$_DetailCustomerCopyWith(
          _$_DetailCustomer value, $Res Function(_$_DetailCustomer) then) =
      __$$_DetailCustomerCopyWithImpl<$Res>;
  @useResult
  $Res call({Customer customer});

  $CustomerCopyWith<$Res> get customer;
}

/// @nodoc
class __$$_DetailCustomerCopyWithImpl<$Res>
    extends _$CustomerModelStateCopyWithImpl<$Res, _$_DetailCustomer>
    implements _$$_DetailCustomerCopyWith<$Res> {
  __$$_DetailCustomerCopyWithImpl(
      _$_DetailCustomer _value, $Res Function(_$_DetailCustomer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
  }) {
    return _then(_$_DetailCustomer(
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

class _$_DetailCustomer implements _DetailCustomer {
  const _$_DetailCustomer({required this.customer});

  @override
  final Customer customer;

  @override
  String toString() {
    return 'CustomerModelState.detailCustomer(customer: $customer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailCustomer &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailCustomerCopyWith<_$_DetailCustomer> get copyWith =>
      __$$_DetailCustomerCopyWithImpl<_$_DetailCustomer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Customer> customers) $default, {
    required TResult Function(Customer customer) detailCustomer,
  }) {
    return detailCustomer(customer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<Customer> customers)? $default, {
    TResult? Function(Customer customer)? detailCustomer,
  }) {
    return detailCustomer?.call(customer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Customer> customers)? $default, {
    TResult Function(Customer customer)? detailCustomer,
    required TResult orElse(),
  }) {
    if (detailCustomer != null) {
      return detailCustomer(customer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CustomerModelState value) $default, {
    required TResult Function(_DetailCustomer value) detailCustomer,
  }) {
    return detailCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CustomerModelState value)? $default, {
    TResult? Function(_DetailCustomer value)? detailCustomer,
  }) {
    return detailCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CustomerModelState value)? $default, {
    TResult Function(_DetailCustomer value)? detailCustomer,
    required TResult orElse(),
  }) {
    if (detailCustomer != null) {
      return detailCustomer(this);
    }
    return orElse();
  }
}

abstract class _DetailCustomer implements CustomerModelState {
  const factory _DetailCustomer({required final Customer customer}) =
      _$_DetailCustomer;

  Customer get customer;
  @JsonKey(ignore: true)
  _$$_DetailCustomerCopyWith<_$_DetailCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}
