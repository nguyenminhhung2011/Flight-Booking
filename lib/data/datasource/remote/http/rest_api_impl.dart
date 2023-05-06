import 'dart:convert';
import 'dart:io';

import 'package:flight_booking/data/datasource/remote/error_handling.dart';
import 'package:flight_booking/data/datasource/remote/rest_api/rest_api.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

import '../../../../core/components/network/app_exception.dart';

@Injectable(as: RestApi)
class RestApiImpl implements RestApi {
  @override
  Future<dynamic> delete(String url, body, Map<String, String> headers) async {
    dynamic responseBody;
    try {
      final response = await http.delete(
        Uri.parse(url),
        body: jsonEncode(body),
        headers: headers,
      );
      httpErrorHandle(
        response: response,
        onSuccess: () {
          responseBody = jsonDecode(response.body);
        },
      );
    } on SocketException {
      // throw FetchDataException('');
    }
    return responseBody;
  }

  @override
  Future<dynamic> get(String url, Map<String, String> headers) async {
    dynamic responseBody;
    try {
      final response = await http.get(
        Uri.parse(url),
        headers: headers,
      );
      httpErrorHandle(
        response: response,
        onSuccess: () {
          responseBody = jsonDecode(response.body);
        },
      );
    } on SocketException {
      // throw FetchDataException('');
    }
    return responseBody;
  }

  @override
  Future<dynamic> post(String url, body, Map<String, String> headers) async {
    dynamic responseBody;
    try {
      final response = await http.post(
        Uri.parse(url),
        body: jsonEncode(body),
        headers: headers,
      );
      httpErrorHandle(
        response: response,
        onSuccess: () {
          responseBody = jsonDecode(response.body);
        },
      );
    } on SocketException {
      // throw FetchDataException('');
    }
    return responseBody;
  }

  @override
  Future<dynamic> put(String url, body, Map<String, String> headers) async {
    dynamic responseBody;
    try {
      final response = await http.put(
        Uri.parse(url),
        body: jsonEncode(body),
        headers: headers,
      );
      httpErrorHandle(
        response: response,
        onSuccess: () {
          responseBody = jsonDecode(response.body);
        },
      );
    } on SocketException {
      // throw FetchDataException('');
    }
    return responseBody;
  }
}
