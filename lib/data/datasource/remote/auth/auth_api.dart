import 'package:dio/dio.dart';
import 'package:flight_booking/data/models/user/authenticate_response_model.dart';
import 'package:flight_booking/data/models/user/user_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api.g.dart';

@injectable
@RestApi()
abstract class AuthApi {
  static const String branch = "/api/v1";
  static const String loginApi = "$branch/auth/authenticate";
  static const String register = "$branch/auth/register";

  @factoryMethod
  factory AuthApi(Dio dio) = _AuthApi;

  @POST(loginApi)
  Future<HttpResponse<AuthenticateResponse>> login(
      {@Body() required Map<String, dynamic> body});
}
