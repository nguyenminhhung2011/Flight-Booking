// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasource/remote/airport/airport_api.dart' as _i25;
import '../../data/datasource/remote/flight/flight_api.dart' as _i10;
import '../../data/datasource/remote/http/rest_api_impl.dart' as _i18;
import '../../data/datasource/remote/rest_api/rest_api.dart' as _i17;
import '../../data/datasource/remote/ticket/ticket_api.dart' as _i20;
import '../../data/repositories/airport_repository_impl.dart' as _i27;
import '../../data/repositories/customer_repository_impl.dart' as _i6;
import '../../data/repositories/flight_repository_impl.dart' as _i13;
import '../../data/repositories/ticket_repository_impl.dart' as _i22;
import '../../domain/repositories/airport_repository.dart' as _i26;
import '../../domain/repositories/customer_repository.dart' as _i5;
import '../../domain/repositories/flight_repository.dart' as _i12;
import '../../domain/repositories/ticket_repository.dart' as _i21;
import '../../domain/usecase/airport_usecase.dart' as _i28;
import '../../domain/usecase/customer_usecase.dart' as _i7;
import '../../domain/usecase/flight_usecase.dart' as _i14;
import '../../domain/usecase/ticket_usecase.dart' as _i23;
import '../../presentations/add_edit_airport/bloc/add_edit_airport_bloc.dart'
    as _i30;
import '../../presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart'
    as _i24;
import '../../presentations/airport/bloc/airport_bloc.dart' as _i31;
import '../../presentations/customer/bloc/customer_bloc.dart' as _i4;
import '../../presentations/dashboard/bloc/dashboard_bloc.dart' as _i8;
import '../../presentations/flight_detail/bloc/flight_detail_bloc.dart' as _i11;
import '../../presentations/list_flight/bloc/list_flight_bloc.dart' as _i16;
import '../../presentations/list_ticket/bloc/list_ticket_bloc.dart' as _i29;
import '../../presentations/settings/bloc/setting_bloc.dart' as _i19;
import '../services/cloundinary_service.dart' as _i3;
import '../services/image_pic_service.dart' as _i15;
import 'modules/data_source_module.dart' as _i32;

const String _prod = 'prod';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dataSourceModule = _$DataSourceModule();
  gh.factory<_i3.CloundinaryService>(() => _i3.CloundinaryService());
  gh.factory<_i4.CustomerBloc>(() => _i4.CustomerBloc());
  gh.factory<_i5.CustomerRepository>(() => _i6.CustomerRepositoryImpl());
  gh.factory<_i7.CustomerUseCase>(
      () => _i7.CustomerUseCase(gh<_i5.CustomerRepository>()));
  gh.factory<_i8.DashboardBloc>(() => _i8.DashboardBloc());
  gh.factory<_i9.Dio>(
    () => dataSourceModule.dioProd(),
    registerFor: {_prod},
  );
  gh.factory<_i10.FlightApi>(() => _i10.FlightApi(gh<_i9.Dio>()));
  gh.factory<_i11.FlightDetailBloc>(() => _i11.FlightDetailBloc());
  gh.factory<_i12.FlightRepository>(
      () => _i13.FlightRepositoryImpl(gh<_i10.FlightApi>()));
  gh.factory<_i14.FlightsUsecase>(
      () => _i14.FlightsUsecase(gh<_i12.FlightRepository>()));
  gh.factory<_i15.ImagePicService>(() => _i15.ImagePicService());
  gh.factory<_i16.ListFlightBloc>(
      () => _i16.ListFlightBloc(gh<_i14.FlightsUsecase>()));
  gh.factory<_i17.RestApi>(() => _i18.RestApiImpl());
  gh.factory<_i19.SettingBloc>(() => _i19.SettingBloc());
  gh.factory<_i20.TicketApi>(() => _i20.TicketApi(gh<_i9.Dio>()));
  gh.factory<_i21.TicketRepository>(
      () => _i22.TicketRepositoryImpl(gh<_i20.TicketApi>()));
  gh.factory<_i23.TicketUsecase>(
      () => _i23.TicketUsecase(gh<_i21.TicketRepository>()));
  gh.factoryParam<_i24.AddEditFlightBloc, String, dynamic>((
    flightId,
    _,
  ) =>
      _i24.AddEditFlightBloc(
        flightId,
        gh<_i14.FlightsUsecase>(),
      ));
  gh.factory<_i25.AirportApi>(() => _i25.AirportApi(gh<_i9.Dio>()));
  gh.factory<_i26.AirportRepository>(
      () => _i27.AirportRepositoryImpl(gh<_i25.AirportApi>()));
  gh.factory<_i28.AirportUsecase>(
      () => _i28.AirportUsecase(gh<_i26.AirportRepository>()));
  gh.factory<_i29.ListTicketBloc>(
      () => _i29.ListTicketBloc(gh<_i23.TicketUsecase>()));
  gh.factoryParam<_i30.AddEditAirportBloc, String, dynamic>((
    airportId,
    _,
  ) =>
      _i30.AddEditAirportBloc(
        airportId,
        gh<_i28.AirportUsecase>(),
        gh<_i3.CloundinaryService>(),
        gh<_i15.ImagePicService>(),
      ));
  gh.factory<_i31.AirportBloc>(
      () => _i31.AirportBloc(gh<_i28.AirportUsecase>()));
  return getIt;
}

class _$DataSourceModule extends _i32.DataSourceModule {}
