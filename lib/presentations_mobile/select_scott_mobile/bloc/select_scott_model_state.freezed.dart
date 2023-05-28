// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_scott_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectScottModelState {
  int get tab => throw _privateConstructorUsedError;
  List<Customer> get listCustomer => throw _privateConstructorUsedError;
  int get selectCustomer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectScottModelStateCopyWith<SelectScottModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectScottModelStateCopyWith<$Res> {
  factory $SelectScottModelStateCopyWith(SelectScottModelState value,
          $Res Function(SelectScottModelState) then) =
      _$SelectScottModelStateCopyWithImpl<$Res, SelectScottModelState>;
  @useResult
  $Res call({int tab, List<Customer> listCustomer, int selectCustomer});
}

/// @nodoc
class _$SelectScottModelStateCopyWithImpl<$Res,
        $Val extends SelectScottModelState>
    implements $SelectScottModelStateCopyWith<$Res> {
  _$SelectScottModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = null,
    Object? listCustomer = null,
    Object? selectCustomer = null,
  }) {
    return _then(_value.copyWith(
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as int,
      listCustomer: null == listCustomer
          ? _value.listCustomer
          : listCustomer // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
      selectCustomer: null == selectCustomer
          ? _value.selectCustomer
          : selectCustomer // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SelectScottModelStateCopyWith<$Res>
    implements $SelectScottModelStateCopyWith<$Res> {
  factory _$$_SelectScottModelStateCopyWith(_$_SelectScottModelState value,
          $Res Function(_$_SelectScottModelState) then) =
      __$$_SelectScottModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tab, List<Customer> listCustomer, int selectCustomer});
}

/// @nodoc
class __$$_SelectScottModelStateCopyWithImpl<$Res>
    extends _$SelectScottModelStateCopyWithImpl<$Res, _$_SelectScottModelState>
    implements _$$_SelectScottModelStateCopyWith<$Res> {
  __$$_SelectScottModelStateCopyWithImpl(_$_SelectScottModelState _value,
      $Res Function(_$_SelectScottModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = null,
    Object? listCustomer = null,
    Object? selectCustomer = null,
  }) {
    return _then(_$_SelectScottModelState(
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as int,
      listCustomer: null == listCustomer
          ? _value._listCustomer
          : listCustomer // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
      selectCustomer: null == selectCustomer
          ? _value.selectCustomer
          : selectCustomer // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectScottModelState implements _SelectScottModelState {
  const _$_SelectScottModelState(
      {required this.tab,
      required final List<Customer> listCustomer,
      required this.selectCustomer})
      : _listCustomer = listCustomer;

  @override
  final int tab;
  final List<Customer> _listCustomer;
  @override
  List<Customer> get listCustomer {
    if (_listCustomer is EqualUnmodifiableListView) return _listCustomer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listCustomer);
  }

  @override
  final int selectCustomer;

  @override
  String toString() {
    return 'SelectScottModelState(tab: $tab, listCustomer: $listCustomer, selectCustomer: $selectCustomer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectScottModelState &&
            (identical(other.tab, tab) || other.tab == tab) &&
            const DeepCollectionEquality()
                .equals(other._listCustomer, _listCustomer) &&
            (identical(other.selectCustomer, selectCustomer) ||
                other.selectCustomer == selectCustomer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tab,
      const DeepCollectionEquality().hash(_listCustomer), selectCustomer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectScottModelStateCopyWith<_$_SelectScottModelState> get copyWith =>
      __$$_SelectScottModelStateCopyWithImpl<_$_SelectScottModelState>(
          this, _$identity);
}

abstract class _SelectScottModelState implements SelectScottModelState {
  const factory _SelectScottModelState(
      {required final int tab,
      required final List<Customer> listCustomer,
      required final int selectCustomer}) = _$_SelectScottModelState;

  @override
  int get tab;
  @override
  List<Customer> get listCustomer;
  @override
  int get selectCustomer;
  @override
  @JsonKey(ignore: true)
  _$$_SelectScottModelStateCopyWith<_$_SelectScottModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
