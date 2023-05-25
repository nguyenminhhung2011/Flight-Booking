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
}
