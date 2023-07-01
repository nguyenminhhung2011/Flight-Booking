// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_setting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountSettingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(User user) addNewUser,
    required TResult Function() fetchUserData,
    required TResult Function(String oldPassword, String newPassword)
        changePassword,
    required TResult Function(User user) updateUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(User user)? addNewUser,
    TResult? Function()? fetchUserData,
    TResult? Function(String oldPassword, String newPassword)? changePassword,
    TResult? Function(User user)? updateUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(User user)? addNewUser,
    TResult Function()? fetchUserData,
    TResult Function(String oldPassword, String newPassword)? changePassword,
    TResult Function(User user)? updateUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_AddNewUser value) addNewUser,
    required TResult Function(_FetchUserData value) fetchUserData,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_UpdateUserData value) updateUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_AddNewUser value)? addNewUser,
    TResult? Function(_FetchUserData value)? fetchUserData,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_UpdateUserData value)? updateUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_AddNewUser value)? addNewUser,
    TResult Function(_FetchUserData value)? fetchUserData,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_UpdateUserData value)? updateUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSettingEventCopyWith<$Res> {
  factory $AccountSettingEventCopyWith(
          AccountSettingEvent value, $Res Function(AccountSettingEvent) then) =
      _$AccountSettingEventCopyWithImpl<$Res, AccountSettingEvent>;
}

/// @nodoc
class _$AccountSettingEventCopyWithImpl<$Res, $Val extends AccountSettingEvent>
    implements $AccountSettingEventCopyWith<$Res> {
  _$AccountSettingEventCopyWithImpl(this._value, this._then);

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
    extends _$AccountSettingEventCopyWithImpl<$Res, _$_OnStarted>
    implements _$$_OnStartedCopyWith<$Res> {
  __$$_OnStartedCopyWithImpl(
      _$_OnStarted _value, $Res Function(_$_OnStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnStarted extends _OnStarted {
  const _$_OnStarted() : super._();

  @override
  String toString() {
    return 'AccountSettingEvent.onStarted()';
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
    required TResult Function(User user) addNewUser,
    required TResult Function() fetchUserData,
    required TResult Function(String oldPassword, String newPassword)
        changePassword,
    required TResult Function(User user) updateUserData,
  }) {
    return onStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(User user)? addNewUser,
    TResult? Function()? fetchUserData,
    TResult? Function(String oldPassword, String newPassword)? changePassword,
    TResult? Function(User user)? updateUserData,
  }) {
    return onStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(User user)? addNewUser,
    TResult Function()? fetchUserData,
    TResult Function(String oldPassword, String newPassword)? changePassword,
    TResult Function(User user)? updateUserData,
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
    required TResult Function(_AddNewUser value) addNewUser,
    required TResult Function(_FetchUserData value) fetchUserData,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_UpdateUserData value) updateUserData,
  }) {
    return onStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_AddNewUser value)? addNewUser,
    TResult? Function(_FetchUserData value)? fetchUserData,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_UpdateUserData value)? updateUserData,
  }) {
    return onStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_AddNewUser value)? addNewUser,
    TResult Function(_FetchUserData value)? fetchUserData,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_UpdateUserData value)? updateUserData,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(this);
    }
    return orElse();
  }
}

abstract class _OnStarted extends AccountSettingEvent {
  const factory _OnStarted() = _$_OnStarted;
  const _OnStarted._() : super._();
}

/// @nodoc
abstract class _$$_AddNewUserCopyWith<$Res> {
  factory _$$_AddNewUserCopyWith(
          _$_AddNewUser value, $Res Function(_$_AddNewUser) then) =
      __$$_AddNewUserCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AddNewUserCopyWithImpl<$Res>
    extends _$AccountSettingEventCopyWithImpl<$Res, _$_AddNewUser>
    implements _$$_AddNewUserCopyWith<$Res> {
  __$$_AddNewUserCopyWithImpl(
      _$_AddNewUser _value, $Res Function(_$_AddNewUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_AddNewUser(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_AddNewUser extends _AddNewUser {
  const _$_AddNewUser({required this.user}) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'AccountSettingEvent.addNewUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddNewUser &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddNewUserCopyWith<_$_AddNewUser> get copyWith =>
      __$$_AddNewUserCopyWithImpl<_$_AddNewUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(User user) addNewUser,
    required TResult Function() fetchUserData,
    required TResult Function(String oldPassword, String newPassword)
        changePassword,
    required TResult Function(User user) updateUserData,
  }) {
    return addNewUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(User user)? addNewUser,
    TResult? Function()? fetchUserData,
    TResult? Function(String oldPassword, String newPassword)? changePassword,
    TResult? Function(User user)? updateUserData,
  }) {
    return addNewUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(User user)? addNewUser,
    TResult Function()? fetchUserData,
    TResult Function(String oldPassword, String newPassword)? changePassword,
    TResult Function(User user)? updateUserData,
    required TResult orElse(),
  }) {
    if (addNewUser != null) {
      return addNewUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_AddNewUser value) addNewUser,
    required TResult Function(_FetchUserData value) fetchUserData,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_UpdateUserData value) updateUserData,
  }) {
    return addNewUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_AddNewUser value)? addNewUser,
    TResult? Function(_FetchUserData value)? fetchUserData,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_UpdateUserData value)? updateUserData,
  }) {
    return addNewUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_AddNewUser value)? addNewUser,
    TResult Function(_FetchUserData value)? fetchUserData,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_UpdateUserData value)? updateUserData,
    required TResult orElse(),
  }) {
    if (addNewUser != null) {
      return addNewUser(this);
    }
    return orElse();
  }
}

abstract class _AddNewUser extends AccountSettingEvent {
  const factory _AddNewUser({required final User user}) = _$_AddNewUser;
  const _AddNewUser._() : super._();

  User get user;
  @JsonKey(ignore: true)
  _$$_AddNewUserCopyWith<_$_AddNewUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchUserDataCopyWith<$Res> {
  factory _$$_FetchUserDataCopyWith(
          _$_FetchUserData value, $Res Function(_$_FetchUserData) then) =
      __$$_FetchUserDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchUserDataCopyWithImpl<$Res>
    extends _$AccountSettingEventCopyWithImpl<$Res, _$_FetchUserData>
    implements _$$_FetchUserDataCopyWith<$Res> {
  __$$_FetchUserDataCopyWithImpl(
      _$_FetchUserData _value, $Res Function(_$_FetchUserData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchUserData extends _FetchUserData {
  const _$_FetchUserData() : super._();

  @override
  String toString() {
    return 'AccountSettingEvent.fetchUserData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchUserData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(User user) addNewUser,
    required TResult Function() fetchUserData,
    required TResult Function(String oldPassword, String newPassword)
        changePassword,
    required TResult Function(User user) updateUserData,
  }) {
    return fetchUserData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(User user)? addNewUser,
    TResult? Function()? fetchUserData,
    TResult? Function(String oldPassword, String newPassword)? changePassword,
    TResult? Function(User user)? updateUserData,
  }) {
    return fetchUserData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(User user)? addNewUser,
    TResult Function()? fetchUserData,
    TResult Function(String oldPassword, String newPassword)? changePassword,
    TResult Function(User user)? updateUserData,
    required TResult orElse(),
  }) {
    if (fetchUserData != null) {
      return fetchUserData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_AddNewUser value) addNewUser,
    required TResult Function(_FetchUserData value) fetchUserData,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_UpdateUserData value) updateUserData,
  }) {
    return fetchUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_AddNewUser value)? addNewUser,
    TResult? Function(_FetchUserData value)? fetchUserData,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_UpdateUserData value)? updateUserData,
  }) {
    return fetchUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_AddNewUser value)? addNewUser,
    TResult Function(_FetchUserData value)? fetchUserData,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_UpdateUserData value)? updateUserData,
    required TResult orElse(),
  }) {
    if (fetchUserData != null) {
      return fetchUserData(this);
    }
    return orElse();
  }
}

abstract class _FetchUserData extends AccountSettingEvent {
  const factory _FetchUserData() = _$_FetchUserData;
  const _FetchUserData._() : super._();
}

/// @nodoc
abstract class _$$_ChangePasswordCopyWith<$Res> {
  factory _$$_ChangePasswordCopyWith(
          _$_ChangePassword value, $Res Function(_$_ChangePassword) then) =
      __$$_ChangePasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String oldPassword, String newPassword});
}

/// @nodoc
class __$$_ChangePasswordCopyWithImpl<$Res>
    extends _$AccountSettingEventCopyWithImpl<$Res, _$_ChangePassword>
    implements _$$_ChangePasswordCopyWith<$Res> {
  __$$_ChangePasswordCopyWithImpl(
      _$_ChangePassword _value, $Res Function(_$_ChangePassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_$_ChangePassword(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangePassword extends _ChangePassword {
  const _$_ChangePassword(
      {required this.oldPassword, required this.newPassword})
      : super._();

  @override
  final String oldPassword;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'AccountSettingEvent.changePassword(oldPassword: $oldPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePassword &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldPassword, newPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePasswordCopyWith<_$_ChangePassword> get copyWith =>
      __$$_ChangePasswordCopyWithImpl<_$_ChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(User user) addNewUser,
    required TResult Function() fetchUserData,
    required TResult Function(String oldPassword, String newPassword)
        changePassword,
    required TResult Function(User user) updateUserData,
  }) {
    return changePassword(oldPassword, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(User user)? addNewUser,
    TResult? Function()? fetchUserData,
    TResult? Function(String oldPassword, String newPassword)? changePassword,
    TResult? Function(User user)? updateUserData,
  }) {
    return changePassword?.call(oldPassword, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(User user)? addNewUser,
    TResult Function()? fetchUserData,
    TResult Function(String oldPassword, String newPassword)? changePassword,
    TResult Function(User user)? updateUserData,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(oldPassword, newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_AddNewUser value) addNewUser,
    required TResult Function(_FetchUserData value) fetchUserData,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_UpdateUserData value) updateUserData,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_AddNewUser value)? addNewUser,
    TResult? Function(_FetchUserData value)? fetchUserData,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_UpdateUserData value)? updateUserData,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_AddNewUser value)? addNewUser,
    TResult Function(_FetchUserData value)? fetchUserData,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_UpdateUserData value)? updateUserData,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword extends AccountSettingEvent {
  const factory _ChangePassword(
      {required final String oldPassword,
      required final String newPassword}) = _$_ChangePassword;
  const _ChangePassword._() : super._();

  String get oldPassword;
  String get newPassword;
  @JsonKey(ignore: true)
  _$$_ChangePasswordCopyWith<_$_ChangePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateUserDataCopyWith<$Res> {
  factory _$$_UpdateUserDataCopyWith(
          _$_UpdateUserData value, $Res Function(_$_UpdateUserData) then) =
      __$$_UpdateUserDataCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UpdateUserDataCopyWithImpl<$Res>
    extends _$AccountSettingEventCopyWithImpl<$Res, _$_UpdateUserData>
    implements _$$_UpdateUserDataCopyWith<$Res> {
  __$$_UpdateUserDataCopyWithImpl(
      _$_UpdateUserData _value, $Res Function(_$_UpdateUserData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_UpdateUserData(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_UpdateUserData extends _UpdateUserData {
  const _$_UpdateUserData({required this.user}) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'AccountSettingEvent.updateUserData(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUserData &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateUserDataCopyWith<_$_UpdateUserData> get copyWith =>
      __$$_UpdateUserDataCopyWithImpl<_$_UpdateUserData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(User user) addNewUser,
    required TResult Function() fetchUserData,
    required TResult Function(String oldPassword, String newPassword)
        changePassword,
    required TResult Function(User user) updateUserData,
  }) {
    return updateUserData(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(User user)? addNewUser,
    TResult? Function()? fetchUserData,
    TResult? Function(String oldPassword, String newPassword)? changePassword,
    TResult? Function(User user)? updateUserData,
  }) {
    return updateUserData?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(User user)? addNewUser,
    TResult Function()? fetchUserData,
    TResult Function(String oldPassword, String newPassword)? changePassword,
    TResult Function(User user)? updateUserData,
    required TResult orElse(),
  }) {
    if (updateUserData != null) {
      return updateUserData(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_AddNewUser value) addNewUser,
    required TResult Function(_FetchUserData value) fetchUserData,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_UpdateUserData value) updateUserData,
  }) {
    return updateUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_AddNewUser value)? addNewUser,
    TResult? Function(_FetchUserData value)? fetchUserData,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_UpdateUserData value)? updateUserData,
  }) {
    return updateUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_AddNewUser value)? addNewUser,
    TResult Function(_FetchUserData value)? fetchUserData,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_UpdateUserData value)? updateUserData,
    required TResult orElse(),
  }) {
    if (updateUserData != null) {
      return updateUserData(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserData extends AccountSettingEvent {
  const factory _UpdateUserData({required final User user}) = _$_UpdateUserData;
  const _UpdateUserData._() : super._();

  User get user;
  @JsonKey(ignore: true)
  _$$_UpdateUserDataCopyWith<_$_UpdateUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountSettingState {
  AccountSettingModelState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountSettingModelState data) initial,
    required TResult Function(AccountSettingModelState data) loading,
    required TResult Function(AccountSettingModelState data) addingUser,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        fetchUserDataFailed,
    required TResult Function(AccountSettingModelState data) addNewUserSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        addNewUserFailed,
    required TResult Function(AccountSettingModelState data)
        updateUserDataSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        updateUserDataFailed,
    required TResult Function(AccountSettingModelState data)
        changePasswordSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        changePasswordFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountSettingModelState data)? initial,
    TResult? Function(AccountSettingModelState data)? loading,
    TResult? Function(AccountSettingModelState data)? addingUser,
    TResult? Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        fetchUserDataFailed,
    TResult? Function(AccountSettingModelState data)? addNewUserSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        addNewUserFailed,
    TResult? Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        updateUserDataFailed,
    TResult? Function(AccountSettingModelState data)? changePasswordSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        changePasswordFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountSettingModelState data)? initial,
    TResult Function(AccountSettingModelState data)? loading,
    TResult Function(AccountSettingModelState data)? addingUser,
    TResult Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        fetchUserDataFailed,
    TResult Function(AccountSettingModelState data)? addNewUserSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        addNewUserFailed,
    TResult Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        updateUserDataFailed,
    TResult Function(AccountSettingModelState data)? changePasswordSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        changePasswordFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddingUser value) addingUser,
    required TResult Function(_FetchUserDataSuccess value) fetchUserDataSuccess,
    required TResult Function(_FetchUserDataFailed value) fetchUserDataFailed,
    required TResult Function(_AddNewUserSuccess value) addNewUserSuccess,
    required TResult Function(_AddNewUserFailed value) addNewUserFailed,
    required TResult Function(_UpdateUserDataSuccess value)
        updateUserDataSuccess,
    required TResult Function(_UpdateUserDataFailed value) updateUserDataFailed,
    required TResult Function(_ChangePasswordSuccess value)
        changePasswordSuccess,
    required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddingUser value)? addingUser,
    TResult? Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult? Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult? Function(_AddNewUserSuccess value)? addNewUserSuccess,
    TResult? Function(_AddNewUserFailed value)? addNewUserFailed,
    TResult? Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult? Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    TResult? Function(_ChangePasswordSuccess value)? changePasswordSuccess,
    TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddingUser value)? addingUser,
    TResult Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult Function(_AddNewUserSuccess value)? addNewUserSuccess,
    TResult Function(_AddNewUserFailed value)? addNewUserFailed,
    TResult Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    TResult Function(_ChangePasswordSuccess value)? changePasswordSuccess,
    TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountSettingStateCopyWith<AccountSettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSettingStateCopyWith<$Res> {
  factory $AccountSettingStateCopyWith(
          AccountSettingState value, $Res Function(AccountSettingState) then) =
      _$AccountSettingStateCopyWithImpl<$Res, AccountSettingState>;
  @useResult
  $Res call({AccountSettingModelState data});

  $AccountSettingModelStateCopyWith<$Res> get data;
}

/// @nodoc
class _$AccountSettingStateCopyWithImpl<$Res, $Val extends AccountSettingState>
    implements $AccountSettingStateCopyWith<$Res> {
  _$AccountSettingStateCopyWithImpl(this._value, this._then);

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
              as AccountSettingModelState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountSettingModelStateCopyWith<$Res> get data {
    return $AccountSettingModelStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $AccountSettingStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountSettingModelState data});

  @override
  $AccountSettingModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AccountSettingStateCopyWithImpl<$Res, _$_Initial>
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
              as AccountSettingModelState,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final AccountSettingModelState data;

  @override
  String toString() {
    return 'AccountSettingState.initial(data: $data)';
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
    required TResult Function(AccountSettingModelState data) initial,
    required TResult Function(AccountSettingModelState data) loading,
    required TResult Function(AccountSettingModelState data) addingUser,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        fetchUserDataFailed,
    required TResult Function(AccountSettingModelState data) addNewUserSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        addNewUserFailed,
    required TResult Function(AccountSettingModelState data)
        updateUserDataSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        updateUserDataFailed,
    required TResult Function(AccountSettingModelState data)
        changePasswordSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        changePasswordFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountSettingModelState data)? initial,
    TResult? Function(AccountSettingModelState data)? loading,
    TResult? Function(AccountSettingModelState data)? addingUser,
    TResult? Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        fetchUserDataFailed,
    TResult? Function(AccountSettingModelState data)? addNewUserSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        addNewUserFailed,
    TResult? Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        updateUserDataFailed,
    TResult? Function(AccountSettingModelState data)? changePasswordSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        changePasswordFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountSettingModelState data)? initial,
    TResult Function(AccountSettingModelState data)? loading,
    TResult Function(AccountSettingModelState data)? addingUser,
    TResult Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        fetchUserDataFailed,
    TResult Function(AccountSettingModelState data)? addNewUserSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        addNewUserFailed,
    TResult Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        updateUserDataFailed,
    TResult Function(AccountSettingModelState data)? changePasswordSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        changePasswordFailed,
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
    required TResult Function(_AddingUser value) addingUser,
    required TResult Function(_FetchUserDataSuccess value) fetchUserDataSuccess,
    required TResult Function(_FetchUserDataFailed value) fetchUserDataFailed,
    required TResult Function(_AddNewUserSuccess value) addNewUserSuccess,
    required TResult Function(_AddNewUserFailed value) addNewUserFailed,
    required TResult Function(_UpdateUserDataSuccess value)
        updateUserDataSuccess,
    required TResult Function(_UpdateUserDataFailed value) updateUserDataFailed,
    required TResult Function(_ChangePasswordSuccess value)
        changePasswordSuccess,
    required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddingUser value)? addingUser,
    TResult? Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult? Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult? Function(_AddNewUserSuccess value)? addNewUserSuccess,
    TResult? Function(_AddNewUserFailed value)? addNewUserFailed,
    TResult? Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult? Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    TResult? Function(_ChangePasswordSuccess value)? changePasswordSuccess,
    TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddingUser value)? addingUser,
    TResult Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult Function(_AddNewUserSuccess value)? addNewUserSuccess,
    TResult Function(_AddNewUserFailed value)? addNewUserFailed,
    TResult Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    TResult Function(_ChangePasswordSuccess value)? changePasswordSuccess,
    TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends AccountSettingState {
  const factory _Initial({required final AccountSettingModelState data}) =
      _$_Initial;
  const _Initial._() : super._();

  @override
  AccountSettingModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $AccountSettingStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountSettingModelState data});

  @override
  $AccountSettingModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AccountSettingStateCopyWithImpl<$Res, _$_Loading>
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
              as AccountSettingModelState,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final AccountSettingModelState data;

  @override
  String toString() {
    return 'AccountSettingState.loading(data: $data)';
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
    required TResult Function(AccountSettingModelState data) initial,
    required TResult Function(AccountSettingModelState data) loading,
    required TResult Function(AccountSettingModelState data) addingUser,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        fetchUserDataFailed,
    required TResult Function(AccountSettingModelState data) addNewUserSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        addNewUserFailed,
    required TResult Function(AccountSettingModelState data)
        updateUserDataSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        updateUserDataFailed,
    required TResult Function(AccountSettingModelState data)
        changePasswordSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        changePasswordFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountSettingModelState data)? initial,
    TResult? Function(AccountSettingModelState data)? loading,
    TResult? Function(AccountSettingModelState data)? addingUser,
    TResult? Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        fetchUserDataFailed,
    TResult? Function(AccountSettingModelState data)? addNewUserSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        addNewUserFailed,
    TResult? Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        updateUserDataFailed,
    TResult? Function(AccountSettingModelState data)? changePasswordSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        changePasswordFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountSettingModelState data)? initial,
    TResult Function(AccountSettingModelState data)? loading,
    TResult Function(AccountSettingModelState data)? addingUser,
    TResult Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        fetchUserDataFailed,
    TResult Function(AccountSettingModelState data)? addNewUserSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        addNewUserFailed,
    TResult Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        updateUserDataFailed,
    TResult Function(AccountSettingModelState data)? changePasswordSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        changePasswordFailed,
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
    required TResult Function(_AddingUser value) addingUser,
    required TResult Function(_FetchUserDataSuccess value) fetchUserDataSuccess,
    required TResult Function(_FetchUserDataFailed value) fetchUserDataFailed,
    required TResult Function(_AddNewUserSuccess value) addNewUserSuccess,
    required TResult Function(_AddNewUserFailed value) addNewUserFailed,
    required TResult Function(_UpdateUserDataSuccess value)
        updateUserDataSuccess,
    required TResult Function(_UpdateUserDataFailed value) updateUserDataFailed,
    required TResult Function(_ChangePasswordSuccess value)
        changePasswordSuccess,
    required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddingUser value)? addingUser,
    TResult? Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult? Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult? Function(_AddNewUserSuccess value)? addNewUserSuccess,
    TResult? Function(_AddNewUserFailed value)? addNewUserFailed,
    TResult? Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult? Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    TResult? Function(_ChangePasswordSuccess value)? changePasswordSuccess,
    TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddingUser value)? addingUser,
    TResult Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult Function(_AddNewUserSuccess value)? addNewUserSuccess,
    TResult Function(_AddNewUserFailed value)? addNewUserFailed,
    TResult Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    TResult Function(_ChangePasswordSuccess value)? changePasswordSuccess,
    TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends AccountSettingState {
  const factory _Loading({required final AccountSettingModelState data}) =
      _$_Loading;
  const _Loading._() : super._();

  @override
  AccountSettingModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddingUserCopyWith<$Res>
    implements $AccountSettingStateCopyWith<$Res> {
  factory _$$_AddingUserCopyWith(
          _$_AddingUser value, $Res Function(_$_AddingUser) then) =
      __$$_AddingUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountSettingModelState data});

  @override
  $AccountSettingModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_AddingUserCopyWithImpl<$Res>
    extends _$AccountSettingStateCopyWithImpl<$Res, _$_AddingUser>
    implements _$$_AddingUserCopyWith<$Res> {
  __$$_AddingUserCopyWithImpl(
      _$_AddingUser _value, $Res Function(_$_AddingUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_AddingUser(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AccountSettingModelState,
    ));
  }
}

/// @nodoc

class _$_AddingUser extends _AddingUser {
  const _$_AddingUser({required this.data}) : super._();

  @override
  final AccountSettingModelState data;

  @override
  String toString() {
    return 'AccountSettingState.addingUser(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddingUser &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddingUserCopyWith<_$_AddingUser> get copyWith =>
      __$$_AddingUserCopyWithImpl<_$_AddingUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountSettingModelState data) initial,
    required TResult Function(AccountSettingModelState data) loading,
    required TResult Function(AccountSettingModelState data) addingUser,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        fetchUserDataFailed,
    required TResult Function(AccountSettingModelState data) addNewUserSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        addNewUserFailed,
    required TResult Function(AccountSettingModelState data)
        updateUserDataSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        updateUserDataFailed,
    required TResult Function(AccountSettingModelState data)
        changePasswordSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        changePasswordFailed,
  }) {
    return addingUser(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountSettingModelState data)? initial,
    TResult? Function(AccountSettingModelState data)? loading,
    TResult? Function(AccountSettingModelState data)? addingUser,
    TResult? Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        fetchUserDataFailed,
    TResult? Function(AccountSettingModelState data)? addNewUserSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        addNewUserFailed,
    TResult? Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        updateUserDataFailed,
    TResult? Function(AccountSettingModelState data)? changePasswordSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        changePasswordFailed,
  }) {
    return addingUser?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountSettingModelState data)? initial,
    TResult Function(AccountSettingModelState data)? loading,
    TResult Function(AccountSettingModelState data)? addingUser,
    TResult Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        fetchUserDataFailed,
    TResult Function(AccountSettingModelState data)? addNewUserSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        addNewUserFailed,
    TResult Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        updateUserDataFailed,
    TResult Function(AccountSettingModelState data)? changePasswordSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        changePasswordFailed,
    required TResult orElse(),
  }) {
    if (addingUser != null) {
      return addingUser(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddingUser value) addingUser,
    required TResult Function(_FetchUserDataSuccess value) fetchUserDataSuccess,
    required TResult Function(_FetchUserDataFailed value) fetchUserDataFailed,
    required TResult Function(_AddNewUserSuccess value) addNewUserSuccess,
    required TResult Function(_AddNewUserFailed value) addNewUserFailed,
    required TResult Function(_UpdateUserDataSuccess value)
        updateUserDataSuccess,
    required TResult Function(_UpdateUserDataFailed value) updateUserDataFailed,
    required TResult Function(_ChangePasswordSuccess value)
        changePasswordSuccess,
    required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
  }) {
    return addingUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddingUser value)? addingUser,
    TResult? Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult? Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult? Function(_AddNewUserSuccess value)? addNewUserSuccess,
    TResult? Function(_AddNewUserFailed value)? addNewUserFailed,
    TResult? Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult? Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    TResult? Function(_ChangePasswordSuccess value)? changePasswordSuccess,
    TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
  }) {
    return addingUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddingUser value)? addingUser,
    TResult Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult Function(_AddNewUserSuccess value)? addNewUserSuccess,
    TResult Function(_AddNewUserFailed value)? addNewUserFailed,
    TResult Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    TResult Function(_ChangePasswordSuccess value)? changePasswordSuccess,
    TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
    required TResult orElse(),
  }) {
    if (addingUser != null) {
      return addingUser(this);
    }
    return orElse();
  }
}

abstract class _AddingUser extends AccountSettingState {
  const factory _AddingUser({required final AccountSettingModelState data}) =
      _$_AddingUser;
  const _AddingUser._() : super._();

  @override
  AccountSettingModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_AddingUserCopyWith<_$_AddingUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchUserDataSuccessCopyWith<$Res>
    implements $AccountSettingStateCopyWith<$Res> {
  factory _$$_FetchUserDataSuccessCopyWith(_$_FetchUserDataSuccess value,
          $Res Function(_$_FetchUserDataSuccess) then) =
      __$$_FetchUserDataSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountSettingModelState data});

  @override
  $AccountSettingModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FetchUserDataSuccessCopyWithImpl<$Res>
    extends _$AccountSettingStateCopyWithImpl<$Res, _$_FetchUserDataSuccess>
    implements _$$_FetchUserDataSuccessCopyWith<$Res> {
  __$$_FetchUserDataSuccessCopyWithImpl(_$_FetchUserDataSuccess _value,
      $Res Function(_$_FetchUserDataSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_FetchUserDataSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AccountSettingModelState,
    ));
  }
}

/// @nodoc

class _$_FetchUserDataSuccess extends _FetchUserDataSuccess {
  const _$_FetchUserDataSuccess({required this.data}) : super._();

  @override
  final AccountSettingModelState data;

  @override
  String toString() {
    return 'AccountSettingState.fetchUserDataSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchUserDataSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchUserDataSuccessCopyWith<_$_FetchUserDataSuccess> get copyWith =>
      __$$_FetchUserDataSuccessCopyWithImpl<_$_FetchUserDataSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountSettingModelState data) initial,
    required TResult Function(AccountSettingModelState data) loading,
    required TResult Function(AccountSettingModelState data) addingUser,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        fetchUserDataFailed,
    required TResult Function(AccountSettingModelState data) addNewUserSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        addNewUserFailed,
    required TResult Function(AccountSettingModelState data)
        updateUserDataSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        updateUserDataFailed,
    required TResult Function(AccountSettingModelState data)
        changePasswordSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        changePasswordFailed,
  }) {
    return fetchUserDataSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountSettingModelState data)? initial,
    TResult? Function(AccountSettingModelState data)? loading,
    TResult? Function(AccountSettingModelState data)? addingUser,
    TResult? Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        fetchUserDataFailed,
    TResult? Function(AccountSettingModelState data)? addNewUserSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        addNewUserFailed,
    TResult? Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        updateUserDataFailed,
    TResult? Function(AccountSettingModelState data)? changePasswordSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        changePasswordFailed,
  }) {
    return fetchUserDataSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountSettingModelState data)? initial,
    TResult Function(AccountSettingModelState data)? loading,
    TResult Function(AccountSettingModelState data)? addingUser,
    TResult Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        fetchUserDataFailed,
    TResult Function(AccountSettingModelState data)? addNewUserSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        addNewUserFailed,
    TResult Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        updateUserDataFailed,
    TResult Function(AccountSettingModelState data)? changePasswordSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        changePasswordFailed,
    required TResult orElse(),
  }) {
    if (fetchUserDataSuccess != null) {
      return fetchUserDataSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddingUser value) addingUser,
    required TResult Function(_FetchUserDataSuccess value) fetchUserDataSuccess,
    required TResult Function(_FetchUserDataFailed value) fetchUserDataFailed,
    required TResult Function(_AddNewUserSuccess value) addNewUserSuccess,
    required TResult Function(_AddNewUserFailed value) addNewUserFailed,
    required TResult Function(_UpdateUserDataSuccess value)
        updateUserDataSuccess,
    required TResult Function(_UpdateUserDataFailed value) updateUserDataFailed,
    required TResult Function(_ChangePasswordSuccess value)
        changePasswordSuccess,
    required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
  }) {
    return fetchUserDataSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddingUser value)? addingUser,
    TResult? Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult? Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult? Function(_AddNewUserSuccess value)? addNewUserSuccess,
    TResult? Function(_AddNewUserFailed value)? addNewUserFailed,
    TResult? Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult? Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    TResult? Function(_ChangePasswordSuccess value)? changePasswordSuccess,
    TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
  }) {
    return fetchUserDataSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddingUser value)? addingUser,
    TResult Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult Function(_AddNewUserSuccess value)? addNewUserSuccess,
    TResult Function(_AddNewUserFailed value)? addNewUserFailed,
    TResult Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    TResult Function(_ChangePasswordSuccess value)? changePasswordSuccess,
    TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
    required TResult orElse(),
  }) {
    if (fetchUserDataSuccess != null) {
      return fetchUserDataSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchUserDataSuccess extends AccountSettingState {
  const factory _FetchUserDataSuccess(
      {required final AccountSettingModelState data}) = _$_FetchUserDataSuccess;
  const _FetchUserDataSuccess._() : super._();

  @override
  AccountSettingModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_FetchUserDataSuccessCopyWith<_$_FetchUserDataSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchUserDataFailedCopyWith<$Res>
    implements $AccountSettingStateCopyWith<$Res> {
  factory _$$_FetchUserDataFailedCopyWith(_$_FetchUserDataFailed value,
          $Res Function(_$_FetchUserDataFailed) then) =
      __$$_FetchUserDataFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountSettingModelState data, String message});

  @override
  $AccountSettingModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FetchUserDataFailedCopyWithImpl<$Res>
    extends _$AccountSettingStateCopyWithImpl<$Res, _$_FetchUserDataFailed>
    implements _$$_FetchUserDataFailedCopyWith<$Res> {
  __$$_FetchUserDataFailedCopyWithImpl(_$_FetchUserDataFailed _value,
      $Res Function(_$_FetchUserDataFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_FetchUserDataFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AccountSettingModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchUserDataFailed extends _FetchUserDataFailed {
  const _$_FetchUserDataFailed({required this.data, required this.message})
      : super._();

  @override
  final AccountSettingModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'AccountSettingState.fetchUserDataFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchUserDataFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchUserDataFailedCopyWith<_$_FetchUserDataFailed> get copyWith =>
      __$$_FetchUserDataFailedCopyWithImpl<_$_FetchUserDataFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountSettingModelState data) initial,
    required TResult Function(AccountSettingModelState data) loading,
    required TResult Function(AccountSettingModelState data) addingUser,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        fetchUserDataFailed,
    required TResult Function(AccountSettingModelState data) addNewUserSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        addNewUserFailed,
    required TResult Function(AccountSettingModelState data)
        updateUserDataSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        updateUserDataFailed,
    required TResult Function(AccountSettingModelState data)
        changePasswordSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        changePasswordFailed,
  }) {
    return fetchUserDataFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountSettingModelState data)? initial,
    TResult? Function(AccountSettingModelState data)? loading,
    TResult? Function(AccountSettingModelState data)? addingUser,
    TResult? Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        fetchUserDataFailed,
    TResult? Function(AccountSettingModelState data)? addNewUserSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        addNewUserFailed,
    TResult? Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        updateUserDataFailed,
    TResult? Function(AccountSettingModelState data)? changePasswordSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        changePasswordFailed,
  }) {
    return fetchUserDataFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountSettingModelState data)? initial,
    TResult Function(AccountSettingModelState data)? loading,
    TResult Function(AccountSettingModelState data)? addingUser,
    TResult Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        fetchUserDataFailed,
    TResult Function(AccountSettingModelState data)? addNewUserSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        addNewUserFailed,
    TResult Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        updateUserDataFailed,
    TResult Function(AccountSettingModelState data)? changePasswordSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        changePasswordFailed,
    required TResult orElse(),
  }) {
    if (fetchUserDataFailed != null) {
      return fetchUserDataFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddingUser value) addingUser,
    required TResult Function(_FetchUserDataSuccess value) fetchUserDataSuccess,
    required TResult Function(_FetchUserDataFailed value) fetchUserDataFailed,
    required TResult Function(_AddNewUserSuccess value) addNewUserSuccess,
    required TResult Function(_AddNewUserFailed value) addNewUserFailed,
    required TResult Function(_UpdateUserDataSuccess value)
        updateUserDataSuccess,
    required TResult Function(_UpdateUserDataFailed value) updateUserDataFailed,
    required TResult Function(_ChangePasswordSuccess value)
        changePasswordSuccess,
    required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
  }) {
    return fetchUserDataFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddingUser value)? addingUser,
    TResult? Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult? Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult? Function(_AddNewUserSuccess value)? addNewUserSuccess,
    TResult? Function(_AddNewUserFailed value)? addNewUserFailed,
    TResult? Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult? Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    TResult? Function(_ChangePasswordSuccess value)? changePasswordSuccess,
    TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
  }) {
    return fetchUserDataFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddingUser value)? addingUser,
    TResult Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult Function(_AddNewUserSuccess value)? addNewUserSuccess,
    TResult Function(_AddNewUserFailed value)? addNewUserFailed,
    TResult Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    TResult Function(_ChangePasswordSuccess value)? changePasswordSuccess,
    TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
    required TResult orElse(),
  }) {
    if (fetchUserDataFailed != null) {
      return fetchUserDataFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchUserDataFailed extends AccountSettingState {
  const factory _FetchUserDataFailed(
      {required final AccountSettingModelState data,
      required final String message}) = _$_FetchUserDataFailed;
  const _FetchUserDataFailed._() : super._();

  @override
  AccountSettingModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_FetchUserDataFailedCopyWith<_$_FetchUserDataFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddNewUserSuccessCopyWith<$Res>
    implements $AccountSettingStateCopyWith<$Res> {
  factory _$$_AddNewUserSuccessCopyWith(_$_AddNewUserSuccess value,
          $Res Function(_$_AddNewUserSuccess) then) =
      __$$_AddNewUserSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountSettingModelState data});

  @override
  $AccountSettingModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_AddNewUserSuccessCopyWithImpl<$Res>
    extends _$AccountSettingStateCopyWithImpl<$Res, _$_AddNewUserSuccess>
    implements _$$_AddNewUserSuccessCopyWith<$Res> {
  __$$_AddNewUserSuccessCopyWithImpl(
      _$_AddNewUserSuccess _value, $Res Function(_$_AddNewUserSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_AddNewUserSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AccountSettingModelState,
    ));
  }
}

/// @nodoc

class _$_AddNewUserSuccess extends _AddNewUserSuccess {
  const _$_AddNewUserSuccess({required this.data}) : super._();

  @override
  final AccountSettingModelState data;

  @override
  String toString() {
    return 'AccountSettingState.addNewUserSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddNewUserSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddNewUserSuccessCopyWith<_$_AddNewUserSuccess> get copyWith =>
      __$$_AddNewUserSuccessCopyWithImpl<_$_AddNewUserSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountSettingModelState data) initial,
    required TResult Function(AccountSettingModelState data) loading,
    required TResult Function(AccountSettingModelState data) addingUser,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        fetchUserDataFailed,
    required TResult Function(AccountSettingModelState data) addNewUserSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        addNewUserFailed,
    required TResult Function(AccountSettingModelState data)
        updateUserDataSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        updateUserDataFailed,
    required TResult Function(AccountSettingModelState data)
        changePasswordSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        changePasswordFailed,
  }) {
    return addNewUserSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountSettingModelState data)? initial,
    TResult? Function(AccountSettingModelState data)? loading,
    TResult? Function(AccountSettingModelState data)? addingUser,
    TResult? Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        fetchUserDataFailed,
    TResult? Function(AccountSettingModelState data)? addNewUserSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        addNewUserFailed,
    TResult? Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        updateUserDataFailed,
    TResult? Function(AccountSettingModelState data)? changePasswordSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        changePasswordFailed,
  }) {
    return addNewUserSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountSettingModelState data)? initial,
    TResult Function(AccountSettingModelState data)? loading,
    TResult Function(AccountSettingModelState data)? addingUser,
    TResult Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        fetchUserDataFailed,
    TResult Function(AccountSettingModelState data)? addNewUserSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        addNewUserFailed,
    TResult Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        updateUserDataFailed,
    TResult Function(AccountSettingModelState data)? changePasswordSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        changePasswordFailed,
    required TResult orElse(),
  }) {
    if (addNewUserSuccess != null) {
      return addNewUserSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddingUser value) addingUser,
    required TResult Function(_FetchUserDataSuccess value) fetchUserDataSuccess,
    required TResult Function(_FetchUserDataFailed value) fetchUserDataFailed,
    required TResult Function(_AddNewUserSuccess value) addNewUserSuccess,
    required TResult Function(_AddNewUserFailed value) addNewUserFailed,
    required TResult Function(_UpdateUserDataSuccess value)
        updateUserDataSuccess,
    required TResult Function(_UpdateUserDataFailed value) updateUserDataFailed,
    required TResult Function(_ChangePasswordSuccess value)
        changePasswordSuccess,
    required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
  }) {
    return addNewUserSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddingUser value)? addingUser,
    TResult? Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult? Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult? Function(_AddNewUserSuccess value)? addNewUserSuccess,
    TResult? Function(_AddNewUserFailed value)? addNewUserFailed,
    TResult? Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult? Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    TResult? Function(_ChangePasswordSuccess value)? changePasswordSuccess,
    TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
  }) {
    return addNewUserSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddingUser value)? addingUser,
    TResult Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult Function(_AddNewUserSuccess value)? addNewUserSuccess,
    TResult Function(_AddNewUserFailed value)? addNewUserFailed,
    TResult Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    TResult Function(_ChangePasswordSuccess value)? changePasswordSuccess,
    TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
    required TResult orElse(),
  }) {
    if (addNewUserSuccess != null) {
      return addNewUserSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddNewUserSuccess extends AccountSettingState {
  const factory _AddNewUserSuccess(
      {required final AccountSettingModelState data}) = _$_AddNewUserSuccess;
  const _AddNewUserSuccess._() : super._();

  @override
  AccountSettingModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_AddNewUserSuccessCopyWith<_$_AddNewUserSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddNewUserFailedCopyWith<$Res>
    implements $AccountSettingStateCopyWith<$Res> {
  factory _$$_AddNewUserFailedCopyWith(
          _$_AddNewUserFailed value, $Res Function(_$_AddNewUserFailed) then) =
      __$$_AddNewUserFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountSettingModelState data, String message});

  @override
  $AccountSettingModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_AddNewUserFailedCopyWithImpl<$Res>
    extends _$AccountSettingStateCopyWithImpl<$Res, _$_AddNewUserFailed>
    implements _$$_AddNewUserFailedCopyWith<$Res> {
  __$$_AddNewUserFailedCopyWithImpl(
      _$_AddNewUserFailed _value, $Res Function(_$_AddNewUserFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_AddNewUserFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AccountSettingModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddNewUserFailed extends _AddNewUserFailed {
  const _$_AddNewUserFailed({required this.data, required this.message})
      : super._();

  @override
  final AccountSettingModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'AccountSettingState.addNewUserFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddNewUserFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddNewUserFailedCopyWith<_$_AddNewUserFailed> get copyWith =>
      __$$_AddNewUserFailedCopyWithImpl<_$_AddNewUserFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountSettingModelState data) initial,
    required TResult Function(AccountSettingModelState data) loading,
    required TResult Function(AccountSettingModelState data) addingUser,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        fetchUserDataFailed,
    required TResult Function(AccountSettingModelState data) addNewUserSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        addNewUserFailed,
    required TResult Function(AccountSettingModelState data)
        updateUserDataSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        updateUserDataFailed,
    required TResult Function(AccountSettingModelState data)
        changePasswordSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        changePasswordFailed,
  }) {
    return addNewUserFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountSettingModelState data)? initial,
    TResult? Function(AccountSettingModelState data)? loading,
    TResult? Function(AccountSettingModelState data)? addingUser,
    TResult? Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        fetchUserDataFailed,
    TResult? Function(AccountSettingModelState data)? addNewUserSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        addNewUserFailed,
    TResult? Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        updateUserDataFailed,
    TResult? Function(AccountSettingModelState data)? changePasswordSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        changePasswordFailed,
  }) {
    return addNewUserFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountSettingModelState data)? initial,
    TResult Function(AccountSettingModelState data)? loading,
    TResult Function(AccountSettingModelState data)? addingUser,
    TResult Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        fetchUserDataFailed,
    TResult Function(AccountSettingModelState data)? addNewUserSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        addNewUserFailed,
    TResult Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        updateUserDataFailed,
    TResult Function(AccountSettingModelState data)? changePasswordSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        changePasswordFailed,
    required TResult orElse(),
  }) {
    if (addNewUserFailed != null) {
      return addNewUserFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddingUser value) addingUser,
    required TResult Function(_FetchUserDataSuccess value) fetchUserDataSuccess,
    required TResult Function(_FetchUserDataFailed value) fetchUserDataFailed,
    required TResult Function(_AddNewUserSuccess value) addNewUserSuccess,
    required TResult Function(_AddNewUserFailed value) addNewUserFailed,
    required TResult Function(_UpdateUserDataSuccess value)
        updateUserDataSuccess,
    required TResult Function(_UpdateUserDataFailed value) updateUserDataFailed,
    required TResult Function(_ChangePasswordSuccess value)
        changePasswordSuccess,
    required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
  }) {
    return addNewUserFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddingUser value)? addingUser,
    TResult? Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult? Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult? Function(_AddNewUserSuccess value)? addNewUserSuccess,
    TResult? Function(_AddNewUserFailed value)? addNewUserFailed,
    TResult? Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult? Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    TResult? Function(_ChangePasswordSuccess value)? changePasswordSuccess,
    TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
  }) {
    return addNewUserFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddingUser value)? addingUser,
    TResult Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult Function(_AddNewUserSuccess value)? addNewUserSuccess,
    TResult Function(_AddNewUserFailed value)? addNewUserFailed,
    TResult Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    TResult Function(_ChangePasswordSuccess value)? changePasswordSuccess,
    TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
    required TResult orElse(),
  }) {
    if (addNewUserFailed != null) {
      return addNewUserFailed(this);
    }
    return orElse();
  }
}

abstract class _AddNewUserFailed extends AccountSettingState {
  const factory _AddNewUserFailed(
      {required final AccountSettingModelState data,
      required final String message}) = _$_AddNewUserFailed;
  const _AddNewUserFailed._() : super._();

  @override
  AccountSettingModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_AddNewUserFailedCopyWith<_$_AddNewUserFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateUserDataSuccessCopyWith<$Res>
    implements $AccountSettingStateCopyWith<$Res> {
  factory _$$_UpdateUserDataSuccessCopyWith(_$_UpdateUserDataSuccess value,
          $Res Function(_$_UpdateUserDataSuccess) then) =
      __$$_UpdateUserDataSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountSettingModelState data});

  @override
  $AccountSettingModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_UpdateUserDataSuccessCopyWithImpl<$Res>
    extends _$AccountSettingStateCopyWithImpl<$Res, _$_UpdateUserDataSuccess>
    implements _$$_UpdateUserDataSuccessCopyWith<$Res> {
  __$$_UpdateUserDataSuccessCopyWithImpl(_$_UpdateUserDataSuccess _value,
      $Res Function(_$_UpdateUserDataSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_UpdateUserDataSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AccountSettingModelState,
    ));
  }
}

/// @nodoc

class _$_UpdateUserDataSuccess extends _UpdateUserDataSuccess {
  const _$_UpdateUserDataSuccess({required this.data}) : super._();

  @override
  final AccountSettingModelState data;

  @override
  String toString() {
    return 'AccountSettingState.updateUserDataSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUserDataSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateUserDataSuccessCopyWith<_$_UpdateUserDataSuccess> get copyWith =>
      __$$_UpdateUserDataSuccessCopyWithImpl<_$_UpdateUserDataSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountSettingModelState data) initial,
    required TResult Function(AccountSettingModelState data) loading,
    required TResult Function(AccountSettingModelState data) addingUser,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        fetchUserDataFailed,
    required TResult Function(AccountSettingModelState data) addNewUserSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        addNewUserFailed,
    required TResult Function(AccountSettingModelState data)
        updateUserDataSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        updateUserDataFailed,
    required TResult Function(AccountSettingModelState data)
        changePasswordSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        changePasswordFailed,
  }) {
    return updateUserDataSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountSettingModelState data)? initial,
    TResult? Function(AccountSettingModelState data)? loading,
    TResult? Function(AccountSettingModelState data)? addingUser,
    TResult? Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        fetchUserDataFailed,
    TResult? Function(AccountSettingModelState data)? addNewUserSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        addNewUserFailed,
    TResult? Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        updateUserDataFailed,
    TResult? Function(AccountSettingModelState data)? changePasswordSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        changePasswordFailed,
  }) {
    return updateUserDataSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountSettingModelState data)? initial,
    TResult Function(AccountSettingModelState data)? loading,
    TResult Function(AccountSettingModelState data)? addingUser,
    TResult Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        fetchUserDataFailed,
    TResult Function(AccountSettingModelState data)? addNewUserSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        addNewUserFailed,
    TResult Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        updateUserDataFailed,
    TResult Function(AccountSettingModelState data)? changePasswordSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        changePasswordFailed,
    required TResult orElse(),
  }) {
    if (updateUserDataSuccess != null) {
      return updateUserDataSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddingUser value) addingUser,
    required TResult Function(_FetchUserDataSuccess value) fetchUserDataSuccess,
    required TResult Function(_FetchUserDataFailed value) fetchUserDataFailed,
    required TResult Function(_AddNewUserSuccess value) addNewUserSuccess,
    required TResult Function(_AddNewUserFailed value) addNewUserFailed,
    required TResult Function(_UpdateUserDataSuccess value)
        updateUserDataSuccess,
    required TResult Function(_UpdateUserDataFailed value) updateUserDataFailed,
    required TResult Function(_ChangePasswordSuccess value)
        changePasswordSuccess,
    required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
  }) {
    return updateUserDataSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddingUser value)? addingUser,
    TResult? Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult? Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult? Function(_AddNewUserSuccess value)? addNewUserSuccess,
    TResult? Function(_AddNewUserFailed value)? addNewUserFailed,
    TResult? Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult? Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    TResult? Function(_ChangePasswordSuccess value)? changePasswordSuccess,
    TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
  }) {
    return updateUserDataSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddingUser value)? addingUser,
    TResult Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult Function(_AddNewUserSuccess value)? addNewUserSuccess,
    TResult Function(_AddNewUserFailed value)? addNewUserFailed,
    TResult Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    TResult Function(_ChangePasswordSuccess value)? changePasswordSuccess,
    TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
    required TResult orElse(),
  }) {
    if (updateUserDataSuccess != null) {
      return updateUserDataSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserDataSuccess extends AccountSettingState {
  const factory _UpdateUserDataSuccess(
          {required final AccountSettingModelState data}) =
      _$_UpdateUserDataSuccess;
  const _UpdateUserDataSuccess._() : super._();

  @override
  AccountSettingModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateUserDataSuccessCopyWith<_$_UpdateUserDataSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateUserDataFailedCopyWith<$Res>
    implements $AccountSettingStateCopyWith<$Res> {
  factory _$$_UpdateUserDataFailedCopyWith(_$_UpdateUserDataFailed value,
          $Res Function(_$_UpdateUserDataFailed) then) =
      __$$_UpdateUserDataFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountSettingModelState data, String message});

  @override
  $AccountSettingModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_UpdateUserDataFailedCopyWithImpl<$Res>
    extends _$AccountSettingStateCopyWithImpl<$Res, _$_UpdateUserDataFailed>
    implements _$$_UpdateUserDataFailedCopyWith<$Res> {
  __$$_UpdateUserDataFailedCopyWithImpl(_$_UpdateUserDataFailed _value,
      $Res Function(_$_UpdateUserDataFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_UpdateUserDataFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AccountSettingModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateUserDataFailed extends _UpdateUserDataFailed {
  const _$_UpdateUserDataFailed({required this.data, required this.message})
      : super._();

  @override
  final AccountSettingModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'AccountSettingState.updateUserDataFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUserDataFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateUserDataFailedCopyWith<_$_UpdateUserDataFailed> get copyWith =>
      __$$_UpdateUserDataFailedCopyWithImpl<_$_UpdateUserDataFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountSettingModelState data) initial,
    required TResult Function(AccountSettingModelState data) loading,
    required TResult Function(AccountSettingModelState data) addingUser,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        fetchUserDataFailed,
    required TResult Function(AccountSettingModelState data) addNewUserSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        addNewUserFailed,
    required TResult Function(AccountSettingModelState data)
        updateUserDataSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        updateUserDataFailed,
    required TResult Function(AccountSettingModelState data)
        changePasswordSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        changePasswordFailed,
  }) {
    return updateUserDataFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountSettingModelState data)? initial,
    TResult? Function(AccountSettingModelState data)? loading,
    TResult? Function(AccountSettingModelState data)? addingUser,
    TResult? Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        fetchUserDataFailed,
    TResult? Function(AccountSettingModelState data)? addNewUserSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        addNewUserFailed,
    TResult? Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        updateUserDataFailed,
    TResult? Function(AccountSettingModelState data)? changePasswordSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        changePasswordFailed,
  }) {
    return updateUserDataFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountSettingModelState data)? initial,
    TResult Function(AccountSettingModelState data)? loading,
    TResult Function(AccountSettingModelState data)? addingUser,
    TResult Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        fetchUserDataFailed,
    TResult Function(AccountSettingModelState data)? addNewUserSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        addNewUserFailed,
    TResult Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        updateUserDataFailed,
    TResult Function(AccountSettingModelState data)? changePasswordSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        changePasswordFailed,
    required TResult orElse(),
  }) {
    if (updateUserDataFailed != null) {
      return updateUserDataFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddingUser value) addingUser,
    required TResult Function(_FetchUserDataSuccess value) fetchUserDataSuccess,
    required TResult Function(_FetchUserDataFailed value) fetchUserDataFailed,
    required TResult Function(_AddNewUserSuccess value) addNewUserSuccess,
    required TResult Function(_AddNewUserFailed value) addNewUserFailed,
    required TResult Function(_UpdateUserDataSuccess value)
        updateUserDataSuccess,
    required TResult Function(_UpdateUserDataFailed value) updateUserDataFailed,
    required TResult Function(_ChangePasswordSuccess value)
        changePasswordSuccess,
    required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
  }) {
    return updateUserDataFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddingUser value)? addingUser,
    TResult? Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult? Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult? Function(_AddNewUserSuccess value)? addNewUserSuccess,
    TResult? Function(_AddNewUserFailed value)? addNewUserFailed,
    TResult? Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult? Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    TResult? Function(_ChangePasswordSuccess value)? changePasswordSuccess,
    TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
  }) {
    return updateUserDataFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddingUser value)? addingUser,
    TResult Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult Function(_AddNewUserSuccess value)? addNewUserSuccess,
    TResult Function(_AddNewUserFailed value)? addNewUserFailed,
    TResult Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    TResult Function(_ChangePasswordSuccess value)? changePasswordSuccess,
    TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
    required TResult orElse(),
  }) {
    if (updateUserDataFailed != null) {
      return updateUserDataFailed(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserDataFailed extends AccountSettingState {
  const factory _UpdateUserDataFailed(
      {required final AccountSettingModelState data,
      required final String message}) = _$_UpdateUserDataFailed;
  const _UpdateUserDataFailed._() : super._();

  @override
  AccountSettingModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateUserDataFailedCopyWith<_$_UpdateUserDataFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangePasswordSuccessCopyWith<$Res>
    implements $AccountSettingStateCopyWith<$Res> {
  factory _$$_ChangePasswordSuccessCopyWith(_$_ChangePasswordSuccess value,
          $Res Function(_$_ChangePasswordSuccess) then) =
      __$$_ChangePasswordSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountSettingModelState data});

  @override
  $AccountSettingModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ChangePasswordSuccessCopyWithImpl<$Res>
    extends _$AccountSettingStateCopyWithImpl<$Res, _$_ChangePasswordSuccess>
    implements _$$_ChangePasswordSuccessCopyWith<$Res> {
  __$$_ChangePasswordSuccessCopyWithImpl(_$_ChangePasswordSuccess _value,
      $Res Function(_$_ChangePasswordSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ChangePasswordSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AccountSettingModelState,
    ));
  }
}

/// @nodoc

class _$_ChangePasswordSuccess extends _ChangePasswordSuccess {
  const _$_ChangePasswordSuccess({required this.data}) : super._();

  @override
  final AccountSettingModelState data;

  @override
  String toString() {
    return 'AccountSettingState.changePasswordSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePasswordSuccessCopyWith<_$_ChangePasswordSuccess> get copyWith =>
      __$$_ChangePasswordSuccessCopyWithImpl<_$_ChangePasswordSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountSettingModelState data) initial,
    required TResult Function(AccountSettingModelState data) loading,
    required TResult Function(AccountSettingModelState data) addingUser,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        fetchUserDataFailed,
    required TResult Function(AccountSettingModelState data) addNewUserSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        addNewUserFailed,
    required TResult Function(AccountSettingModelState data)
        updateUserDataSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        updateUserDataFailed,
    required TResult Function(AccountSettingModelState data)
        changePasswordSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        changePasswordFailed,
  }) {
    return changePasswordSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountSettingModelState data)? initial,
    TResult? Function(AccountSettingModelState data)? loading,
    TResult? Function(AccountSettingModelState data)? addingUser,
    TResult? Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        fetchUserDataFailed,
    TResult? Function(AccountSettingModelState data)? addNewUserSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        addNewUserFailed,
    TResult? Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        updateUserDataFailed,
    TResult? Function(AccountSettingModelState data)? changePasswordSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        changePasswordFailed,
  }) {
    return changePasswordSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountSettingModelState data)? initial,
    TResult Function(AccountSettingModelState data)? loading,
    TResult Function(AccountSettingModelState data)? addingUser,
    TResult Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        fetchUserDataFailed,
    TResult Function(AccountSettingModelState data)? addNewUserSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        addNewUserFailed,
    TResult Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        updateUserDataFailed,
    TResult Function(AccountSettingModelState data)? changePasswordSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        changePasswordFailed,
    required TResult orElse(),
  }) {
    if (changePasswordSuccess != null) {
      return changePasswordSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddingUser value) addingUser,
    required TResult Function(_FetchUserDataSuccess value) fetchUserDataSuccess,
    required TResult Function(_FetchUserDataFailed value) fetchUserDataFailed,
    required TResult Function(_AddNewUserSuccess value) addNewUserSuccess,
    required TResult Function(_AddNewUserFailed value) addNewUserFailed,
    required TResult Function(_UpdateUserDataSuccess value)
        updateUserDataSuccess,
    required TResult Function(_UpdateUserDataFailed value) updateUserDataFailed,
    required TResult Function(_ChangePasswordSuccess value)
        changePasswordSuccess,
    required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
  }) {
    return changePasswordSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddingUser value)? addingUser,
    TResult? Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult? Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult? Function(_AddNewUserSuccess value)? addNewUserSuccess,
    TResult? Function(_AddNewUserFailed value)? addNewUserFailed,
    TResult? Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult? Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    TResult? Function(_ChangePasswordSuccess value)? changePasswordSuccess,
    TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
  }) {
    return changePasswordSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddingUser value)? addingUser,
    TResult Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult Function(_AddNewUserSuccess value)? addNewUserSuccess,
    TResult Function(_AddNewUserFailed value)? addNewUserFailed,
    TResult Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    TResult Function(_ChangePasswordSuccess value)? changePasswordSuccess,
    TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
    required TResult orElse(),
  }) {
    if (changePasswordSuccess != null) {
      return changePasswordSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChangePasswordSuccess extends AccountSettingState {
  const factory _ChangePasswordSuccess(
          {required final AccountSettingModelState data}) =
      _$_ChangePasswordSuccess;
  const _ChangePasswordSuccess._() : super._();

  @override
  AccountSettingModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePasswordSuccessCopyWith<_$_ChangePasswordSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangePasswordFailedCopyWith<$Res>
    implements $AccountSettingStateCopyWith<$Res> {
  factory _$$_ChangePasswordFailedCopyWith(_$_ChangePasswordFailed value,
          $Res Function(_$_ChangePasswordFailed) then) =
      __$$_ChangePasswordFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountSettingModelState data, String message});

  @override
  $AccountSettingModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ChangePasswordFailedCopyWithImpl<$Res>
    extends _$AccountSettingStateCopyWithImpl<$Res, _$_ChangePasswordFailed>
    implements _$$_ChangePasswordFailedCopyWith<$Res> {
  __$$_ChangePasswordFailedCopyWithImpl(_$_ChangePasswordFailed _value,
      $Res Function(_$_ChangePasswordFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_ChangePasswordFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AccountSettingModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangePasswordFailed extends _ChangePasswordFailed {
  const _$_ChangePasswordFailed({required this.data, required this.message})
      : super._();

  @override
  final AccountSettingModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'AccountSettingState.changePasswordFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePasswordFailedCopyWith<_$_ChangePasswordFailed> get copyWith =>
      __$$_ChangePasswordFailedCopyWithImpl<_$_ChangePasswordFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountSettingModelState data) initial,
    required TResult Function(AccountSettingModelState data) loading,
    required TResult Function(AccountSettingModelState data) addingUser,
    required TResult Function(AccountSettingModelState data)
        fetchUserDataSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        fetchUserDataFailed,
    required TResult Function(AccountSettingModelState data) addNewUserSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        addNewUserFailed,
    required TResult Function(AccountSettingModelState data)
        updateUserDataSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        updateUserDataFailed,
    required TResult Function(AccountSettingModelState data)
        changePasswordSuccess,
    required TResult Function(AccountSettingModelState data, String message)
        changePasswordFailed,
  }) {
    return changePasswordFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountSettingModelState data)? initial,
    TResult? Function(AccountSettingModelState data)? loading,
    TResult? Function(AccountSettingModelState data)? addingUser,
    TResult? Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        fetchUserDataFailed,
    TResult? Function(AccountSettingModelState data)? addNewUserSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        addNewUserFailed,
    TResult? Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        updateUserDataFailed,
    TResult? Function(AccountSettingModelState data)? changePasswordSuccess,
    TResult? Function(AccountSettingModelState data, String message)?
        changePasswordFailed,
  }) {
    return changePasswordFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountSettingModelState data)? initial,
    TResult Function(AccountSettingModelState data)? loading,
    TResult Function(AccountSettingModelState data)? addingUser,
    TResult Function(AccountSettingModelState data)? fetchUserDataSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        fetchUserDataFailed,
    TResult Function(AccountSettingModelState data)? addNewUserSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        addNewUserFailed,
    TResult Function(AccountSettingModelState data)? updateUserDataSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        updateUserDataFailed,
    TResult Function(AccountSettingModelState data)? changePasswordSuccess,
    TResult Function(AccountSettingModelState data, String message)?
        changePasswordFailed,
    required TResult orElse(),
  }) {
    if (changePasswordFailed != null) {
      return changePasswordFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddingUser value) addingUser,
    required TResult Function(_FetchUserDataSuccess value) fetchUserDataSuccess,
    required TResult Function(_FetchUserDataFailed value) fetchUserDataFailed,
    required TResult Function(_AddNewUserSuccess value) addNewUserSuccess,
    required TResult Function(_AddNewUserFailed value) addNewUserFailed,
    required TResult Function(_UpdateUserDataSuccess value)
        updateUserDataSuccess,
    required TResult Function(_UpdateUserDataFailed value) updateUserDataFailed,
    required TResult Function(_ChangePasswordSuccess value)
        changePasswordSuccess,
    required TResult Function(_ChangePasswordFailed value) changePasswordFailed,
  }) {
    return changePasswordFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddingUser value)? addingUser,
    TResult? Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult? Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult? Function(_AddNewUserSuccess value)? addNewUserSuccess,
    TResult? Function(_AddNewUserFailed value)? addNewUserFailed,
    TResult? Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult? Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    TResult? Function(_ChangePasswordSuccess value)? changePasswordSuccess,
    TResult? Function(_ChangePasswordFailed value)? changePasswordFailed,
  }) {
    return changePasswordFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddingUser value)? addingUser,
    TResult Function(_FetchUserDataSuccess value)? fetchUserDataSuccess,
    TResult Function(_FetchUserDataFailed value)? fetchUserDataFailed,
    TResult Function(_AddNewUserSuccess value)? addNewUserSuccess,
    TResult Function(_AddNewUserFailed value)? addNewUserFailed,
    TResult Function(_UpdateUserDataSuccess value)? updateUserDataSuccess,
    TResult Function(_UpdateUserDataFailed value)? updateUserDataFailed,
    TResult Function(_ChangePasswordSuccess value)? changePasswordSuccess,
    TResult Function(_ChangePasswordFailed value)? changePasswordFailed,
    required TResult orElse(),
  }) {
    if (changePasswordFailed != null) {
      return changePasswordFailed(this);
    }
    return orElse();
  }
}

abstract class _ChangePasswordFailed extends AccountSettingState {
  const factory _ChangePasswordFailed(
      {required final AccountSettingModelState data,
      required final String message}) = _$_ChangePasswordFailed;
  const _ChangePasswordFailed._() : super._();

  @override
  AccountSettingModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePasswordFailedCopyWith<_$_ChangePasswordFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
