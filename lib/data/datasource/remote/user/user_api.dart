import 'package:dio/dio.dart';
import 'package:flight_booking/data/models/user/user_model.dart';
import 'package:flight_booking/domain/entities/user/user.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
part 'user_api.g.dart';

class UserEndPoint {
  static const branch = '/api/v1/user';
  static const getUser = "$branch/get";
  static const updateUser = "$branch/update";
  static const changePassword = '$branch/changePassword';
}

@RestApi()
@injectable
abstract class UserApi {
  @factoryMethod
  factory UserApi(Dio dio) = _UserApi;

  @GET(UserEndPoint.getUser)
  Future<HttpResponse<UserModel?>> getUserByToken(
      {@Query("token") required String token});

  @PUT(UserEndPoint.updateUser)
  Future<HttpResponse<UserModel?>> updateUser({
    @Query("token") required String token,
    @Body() required User user,
  });

  @PUT(UserEndPoint.changePassword)
  Future<HttpResponse<UserModel?>> changePassword({
    @Query("token") required String token,
    @Query("oldPassword") required String oldPassword,
    @Query("newPassword") required String newPassword,
  });
}
