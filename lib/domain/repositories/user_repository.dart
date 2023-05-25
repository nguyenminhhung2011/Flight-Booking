import '../entities/user/user.dart';

abstract class UserRepository {
  Future<User> getUser();
  Future<User> updateUserInfo(User user);
}
