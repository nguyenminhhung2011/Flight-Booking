import '../entities/user/user.dart';

abstract class UserRepository {
  Future<User?> login(String username, String password);
  Future<void> logout();
  Future<User> getUser();
  Future<User> updateUserInfo(User user);
}
