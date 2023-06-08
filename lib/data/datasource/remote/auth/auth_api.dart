import 'package:dio/dio.dart';
import 'package:flight_booking/data/models/api_response/api_response.dart';
import 'package:flight_booking/data/models/base_api.dart';
import 'package:flight_booking/data/models/user/user_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api.g.dart';

@injectable
@RestApi()
abstract class AuthApi {
  static const String branch = "/api/v1";
  static const String loginApi = "$branch/account/login";

  @factoryMethod
  factory AuthApi(Dio dio) = _AuthApi;

  @POST(loginApi)
  Future<HttpResponse<UserModel?>> login(
      {@Body() required Map<String, dynamic> body});
}
