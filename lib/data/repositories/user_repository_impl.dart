import 'package:flight_booking/data/datasource/remote/auth/auth_api.dart';
import 'package:flight_booking/data/models/user/user_model.dart';
import 'package:flight_booking/domain/entities/user/user.dart';
import 'package:flight_booking/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl extends UserRepository {
  final AuthApi _authApi;

  UserRepositoryImpl(this._authApi);
  @override
  Future<User> getUser() async {
    return User(
      id: "id",
      username: "username",
      password: "password",
      name: "name",
      email: "email",
      phone: "phone",
      birthday: DateTime.now().subtract(const Duration(days: 365 * 22)),
    );
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
          phone: user.phone,
        );

        return userModel.toEntity();
      },
    );
  }

  @override
  Future<User?> login(String username, String password) async {
    final response = await _authApi.login(body: {
      "username": username,
      "password": password,
    });
    print(response.toJson((value) => value.toString()));
    if (response.success) {
      return response.data?.toEntity();
    }
    return User.empty;
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
