import 'package:flight_booking/core/components/utils/preferences.dart';
import 'package:flight_booking/data/datasource/remote/user/user_api.dart';
import 'package:flight_booking/data/models/data_state.dart';
import 'package:flight_booking/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

import '../entities/user/user.dart';

@injectable
class UserUseCase {
  final UserApi userApi;
  final UserRepository _userRepository;

  const UserUseCase(this.userApi, this._userRepository);

  Future<User?> getUserData() async {
    try {
      final token = CommonAppSettingPref.getAccessToken();
      print(token);
      final response = await userApi.getUserByToken(token: token);
      if (response.response.statusCode == 200) {
        return response.data?.toEntity();
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<User?> updateUserInfo(User user) async {
    try {
      final token = CommonAppSettingPref.getAccessToken();
      final response = await userApi.updateUser(token: token, user: user);

      if (response.response.statusCode == 200) {
        return response.data?.toEntity();
      }
      throw Exception(response.response.statusMessage);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<User?> changePassword(String oldPassword, String newPassword) async {
    try {
      final token = CommonAppSettingPref.getAccessToken();
      final response = await userApi.changePassword(
          token: token, oldPassword: oldPassword, newPassword: newPassword);

      if (response.response.statusCode == 200) {
        return response.data?.toEntity();
      }
      throw Exception(response.response.statusMessage);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<bool> addNewEmployee(User user) async {
    try {
      final response = await userApi.addNewEmployee(user: user);

      print(response.data);

      if (response.response.statusCode == 200) {
        return true;
      }
      throw Exception(response.response.statusMessage);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<String?> login(String username, String password) async {
    try {
      final result = await _userRepository.login(username, password);
      if (result is DataSuccess &&
          result.data != null &&
          result.data!.isSuccess) {
        await CommonAppSettingPref.setExpiredTime(result.data!.expiredTime);
        await CommonAppSettingPref.setAccessToken(result.data!.accessToken);
        await CommonAppSettingPref.setRefreshToken(result.data!.refreshToken);
        await CommonAppSettingPref.setUserRole(result.data!.role);

        return result.data?.accessToken;
      }

      throw Exception(result.dioError);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<bool> logout() async {
    return await _userRepository.logout();
  }
}
