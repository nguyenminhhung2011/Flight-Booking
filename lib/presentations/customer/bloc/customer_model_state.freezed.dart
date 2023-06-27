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
  List<Customer> get customers => throw _privateConstructorUsedError;
  Payment? get paymentSelected => throw _privateConstructorUsedError;
  Customer? get customerSelected => throw _privateConstructorUsedError;
  int? get currentIndex => throw _privateConstructorUsedError;
  Map<int, TicketInformation>? get ticInformation =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerModelStateCopyWith<CustomerModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerModelStateCopyWith<$Res> {
  factory $CustomerModelStateCopyWith(
          CustomerModelState value, $Res Function(CustomerModelState) then) =
      _$CustomerModelStateCopyWithImpl<$Res, CustomerModelState>;
  @useResult
  $Res call(
      {List<Customer> customers,
      Payment? paymentSelected,
      Customer? customerSelected,
      int? currentIndex,
      Map<int, TicketInformation>? ticInformation});

  $PaymentCopyWith<$Res>? get paymentSelected;
  $CustomerCopyWith<$Res>? get customerSelected;
}

/// @nodoc
class _$CustomerModelStateCopyWithImpl<$Res, $Val extends CustomerModelState>
    implements $CustomerModelStateCopyWith<$Res> {
  _$CustomerModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
    Object? paymentSelected = freezed,
    Object? customerSelected = freezed,
    Object? currentIndex = freezed,
    Object? ticInformation = freezed,
  }) {
    return _then(_value.copyWith(
      customers: null == customers
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
      paymentSelected: freezed == paymentSelected
          ? _value.paymentSelected
          : paymentSelected // ignore: cast_nullable_to_non_nullable
              as Payment?,
      customerSelected: freezed == customerSelected
          ? _value.customerSelected
          : customerSelected // ignore: cast_nullable_to_non_nullable
              as Customer?,
      currentIndex: freezed == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      ticInformation: freezed == ticInformation
          ? _value.ticInformation
          : ticInformation // ignore: cast_nullable_to_non_nullable
              as Map<int, TicketInformation>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentCopyWith<$Res>? get paymentSelected {
    if (_value.paymentSelected == null) {
      return null;
    }

    return $PaymentCopyWith<$Res>(_value.paymentSelected!, (value) {
      return _then(_value.copyWith(paymentSelected: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res>? get customerSelected {
    if (_value.customerSelected == null) {
      return null;
    }

    return $CustomerCopyWith<$Res>(_value.customerSelected!, (value) {
      return _then(_value.copyWith(customerSelected: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CustomerModelStateCopyWith<$Res>
    implements $CustomerModelStateCopyWith<$Res> {
  factory _$$_CustomerModelStateCopyWith(_$_CustomerModelState value,
          $Res Function(_$_CustomerModelState) then) =
      __$$_CustomerModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Customer> customers,
      Payment? paymentSelected,
      Customer? customerSelected,
      int? currentIndex,
      Map<int, TicketInformation>? ticInformation});

  @override
  $PaymentCopyWith<$Res>? get paymentSelected;
  @override
  $CustomerCopyWith<$Res>? get customerSelected;
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
    Object? paymentSelected = freezed,
    Object? customerSelected = freezed,
    Object? currentIndex = freezed,
    Object? ticInformation = freezed,
  }) {
    return _then(_$_CustomerModelState(
      customers: null == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
      paymentSelected: freezed == paymentSelected
          ? _value.paymentSelected
          : paymentSelected // ignore: cast_nullable_to_non_nullable
              as Payment?,
      customerSelected: freezed == customerSelected
          ? _value.customerSelected
          : customerSelected // ignore: cast_nullable_to_non_nullable
              as Customer?,
      currentIndex: freezed == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      ticInformation: freezed == ticInformation
          ? _value._ticInformation
          : ticInformation // ignore: cast_nullable_to_non_nullable
              as Map<int, TicketInformation>?,
    ));
  }
}

/// @nodoc

class _$_CustomerModelState implements _CustomerModelState {
  const _$_CustomerModelState(
      {required final List<Customer> customers,
      this.paymentSelected,
      this.customerSelected,
      this.currentIndex,
      final Map<int, TicketInformation>? ticInformation})
      : _customers = customers,
        _ticInformation = ticInformation;

  final List<Customer> _customers;
  @override
  List<Customer> get customers {
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customers);
  }

  @override
  final Payment? paymentSelected;
  @override
  final Customer? customerSelected;
  @override
  final int? currentIndex;
  final Map<int, TicketInformation>? _ticInformation;
  @override
  Map<int, TicketInformation>? get ticInformation {
    final value = _ticInformation;
    if (value == null) return null;
    if (_ticInformation is EqualUnmodifiableMapView) return _ticInformation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'CustomerModelState(customers: $customers, paymentSelected: $paymentSelected, customerSelected: $customerSelected, currentIndex: $currentIndex, ticInformation: $ticInformation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerModelState &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers) &&
            (identical(other.paymentSelected, paymentSelected) ||
                other.paymentSelected == paymentSelected) &&
            (identical(other.customerSelected, customerSelected) ||
                other.customerSelected == customerSelected) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            const DeepCollectionEquality()
                .equals(other._ticInformation, _ticInformation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_customers),
      paymentSelected,
      customerSelected,
      currentIndex,
      const DeepCollectionEquality().hash(_ticInformation));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerModelStateCopyWith<_$_CustomerModelState> get copyWith =>
      __$$_CustomerModelStateCopyWithImpl<_$_CustomerModelState>(
          this, _$identity);
}

abstract class _CustomerModelState implements CustomerModelState {
  const factory _CustomerModelState(
          {required final List<Customer> customers,
          final Payment? paymentSelected,
          final Customer? customerSelected,
          final int? currentIndex,
          final Map<int, TicketInformation>? ticInformation}) =
      _$_CustomerModelState;

  @override
  List<Customer> get customers;
  @override
  Payment? get paymentSelected;
  @override
  Customer? get customerSelected;
  @override
  int? get currentIndex;
  @override
  Map<int, TicketInformation>? get ticInformation;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerModelStateCopyWith<_$_CustomerModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
