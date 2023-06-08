import 'package:dio/dio.dart';

abstract class DataState<T> {
  final T? data;
  final DioError? dioError;

  const DataState({
    this.data,
    this.dioError,
  });
}

class DataSuccess<T> extends DataState<T> {
  DataSuccess({required super.data});
}

class DataFailed<T> extends DataState<T> {
  const DataFailed({required super.dioError});
}
