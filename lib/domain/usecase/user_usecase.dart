import 'dart:convert';

import 'package:flight_booking/core/components/utils/preferences.dart';
import 'package:flight_booking/data/models/data_state.dart';
import 'package:flight_booking/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

import '../entities/user/user.dart';

@injectable
class UserUseCase {
  final UserRepository _userRepository;

  const UserUseCase(this._userRepository);

  Future<User?> getUserData() async {
    return await _userRepository.getUser();
  }

  Future<User?> updateUserInfo(User user) async {
    return await _userRepository.updateUserInfo(user);
  }

  Future<String?> login(String username, String password) async {
    final result = await _userRepository.login(username, password);
    if (result is DataSuccess &&
        result.data != null &&
        result.data!.isSuccess) {
      print(result.data!.expiredTime);
      print(result.data!.accessToken);
      print(result.data!.refreshToken);

      await CommonAppSettingPref.setExpiredTime(result.data!.expiredTime);
      await CommonAppSettingPref.setAccessToken(result.data!.accessToken);
      await CommonAppSettingPref.setRefreshToken(result.data!.refreshToken);
      return result.data?.accessToken;
    }

    return null;
  }

  Future<bool> logout() async {
    return await _userRepository.logout();
  }
}
