import 'package:flight_booking/data/models/data_state.dart';
import 'package:flight_booking/data/models/user/authenticate_response_model.dart';

import '../entities/user/user.dart';

abstract class UserRepository {
  Future<DataState<AuthenticateResponse>> login(
      String username, String password);
  Future<void> logout();
  Future<User> getUser();
  Future<User> updateUserInfo(User user);
}
