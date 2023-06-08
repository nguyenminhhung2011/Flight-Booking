import 'package:dio/dio.dart';
import 'package:flight_booking/data/models/api_response/api_response.dart';
import 'package:flight_booking/data/models/user/user_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api.g.dart';

@injectable
@RestApi(baseUrl: 'http://localhost:8080/api/v1/')
abstract class AuthApi {
  static const String loginApi = "account/login";

  @factoryMethod
  factory AuthApi(Dio dio) = _AuthApi;

  @POST(loginApi)
  Future<ApiResponse<UserModel?>> login({
    @Body() required Map<String, dynamic> body,
  });
}
