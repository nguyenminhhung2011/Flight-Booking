import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flight_booking/core/components/utils/preferences.dart';
import 'package:flight_booking/core/dependency_injection/di.dart';
import 'package:flight_booking/data/datasource/remote/auth/auth_api.dart';
import 'package:flight_booking/data/models/user/authenticate_response_model.dart';
import 'package:flutter/foundation.dart';

class AppCoreFactory {
  static Dio createDio(String baseUrl) {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        headers: {
          "content-type": "application/json",
          "Accept": "*/*",
        },
      ),
    )
      ..interceptors.add(TokenInterceptor())
      ..interceptors.add(LogInterceptor());
    if (!kIsWeb) {
      (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
    }
    return dio;
  }
}

class TokenInterceptor implements Interceptor {
  // final AuthApi _authApi = injector.get<AuthApi>();

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    return handler.next(err);
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    String accessToken = CommonAppSettingPref.getAccessToken();
    String refreshToken = CommonAppSettingPref.getRefreshToken();
    int expiredTime = CommonAppSettingPref.getExpiredTime();

    if (accessToken.isEmpty || refreshToken.isEmpty || expiredTime == -1) {
      return handler.next(options);
    }

    final expiredTimeParsed = DateTime.fromMillisecondsSinceEpoch(expiredTime);
    final isExpired = DateTime.now().isAfter(expiredTimeParsed);

    if (isExpired) {
      try {
        final response = await injector.get<AuthApi>().refreshToken();
        if (response.response.statusCode == HttpStatus.ok &&
            response.data is AuthenticateResponse &&
            (response.data as AuthenticateResponse).isSuccess) {
          final responseData = response.data as AuthenticateResponse;
          options.headers["Authorization"] =
              "Bearer ${responseData.accessToken}";
          await CommonAppSettingPref.setAccessToken(responseData.accessToken);
          await CommonAppSettingPref.setRefreshToken(responseData.refreshToken);
          await CommonAppSettingPref.setExpiredTime(responseData.expiredTime);
        } else {
          log("Logging out");
        }
      } catch (e) {
        log(e.toString());
        return;
      }
    } else {
      options.headers["Authorization"] = "Bearer $accessToken";
      return handler.next(options);
    }
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    return handler.next(response);
  }
}
