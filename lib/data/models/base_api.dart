import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flight_booking/data/models/data_state.dart';
import 'package:retrofit/dio.dart';

abstract class BaseApi {
  Future<DataState<T>> getStateOf<T>({
    required Future<HttpResponse<T?>> Function() request,
  }) async {
    try {
      final httpResponse = await request();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(data: httpResponse.data);
      } else {
        throw DioError(
          requestOptions: httpResponse.response.requestOptions,
          response: httpResponse.response,
        );
      }
    } on DioError catch (error) {
      return DataFailed(dioError: error);
    }
  }
}
