import 'package:dio/dio.dart';
import 'package:flight_booking/core/components/configurations/configurations.dart';
import 'package:injectable/injectable.dart';

import '../../app_core_factory.dart';

@module
abstract class DataSourceModule {
  @prod
  Dio dioProd() => AppCoreFactory.createDio(
        Configurations.baseUrl,
        // appStorage, sharepreferencess
      );
}
