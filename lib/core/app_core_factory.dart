import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';

class AppCoreFactory {
  static Dio createDio(
    String baseUrl,
    // share preferences
    // app storage
  ) {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization':
              'Bearer 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',
        },
      ),
    )..interceptors.add(
        InterceptorsWrapper(
          onResponse: (options, handler) {
            handler.next(options);
          },
          onRequest: (options, handler) {
            if (options.path.contains('http')) {
              handler.next(options);
              //do nothing
            }
          },
          onError: (error, handler) {
            if (error.response?.statusCode == 401) {
              log(error.message!);
            }
            handler.next(error);
          },
        ),
      );
    if (!kIsWeb) {
      (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
    }

    log("Dio add");
    // return dio;
    return dio;
  }
}
