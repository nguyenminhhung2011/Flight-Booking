// ignore_for_file: non_constant_identifier_names

class AppException implements Exception {
  final String message;
  final int? code;
  final int? s;
  AppException({required this.message, this.code, this.s});
}

class HttpStatusCode {
  static get CREATED => 201;
  static get NO_CONTENT => 204;
  static get NOT_FOUND => 404;
  static get OK => 200;
  static get RESET_CONTENT => 205;
}
