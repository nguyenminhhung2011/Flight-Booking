import 'dart:convert';
import 'dart:io';
import 'dart:js_interop';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flight_booking/core/components/utils/preferences.dart';
import 'package:flight_booking/data/datasource/remote/auth/auth_api.dart';
import 'package:flight_booking/data/models/base_api.dart';
import 'package:flight_booking/data/models/data_state.dart';
import 'package:flight_booking/data/models/user/authenticate_response_model.dart';
import 'package:flight_booking/data/models/user/user_model.dart';
import 'package:flight_booking/domain/entities/user/user.dart';
import 'package:flight_booking/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl extends BaseApi implements UserRepository {
  final AuthApi _authApi;

  UserRepositoryImpl(this._authApi);
  @override
  Future<User> getUser() async {
    throw NoSuchMethodError;
  }

  @override
  Future<User> updateUserInfo(User user) {
    return Future(
      () {
        UserModel userModel = UserModel(
          id: user.id,
          username: user.username,
          password: user.password,
          name: user.name,
          birthday: user.birthday?.millisecondsSinceEpoch ?? 0,
          email: user.email,
        );

        return userModel.toEntity();
      },
    );
  }

  @override
  Future<DataState<AuthenticateResponse>> login(
      String username, String password) async {
    final response = await getStateOf<AuthenticateResponse>(
      request: () async => await _authApi.login(
        body: {
          "username": username,
          "password": password,
        },
      ),
    );
    print(response.data?.toJson());
    return response;
  }

  @override
  Future<bool> logout() async {
    return true;

    final response = await _authApi.logout();

    if (response.response.statusCode == HttpStatus.ok) {
      return true;
    }
  }
}
