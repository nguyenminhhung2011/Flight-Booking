// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasource/remote/airport/airport_api.dart' as _i26;
import '../../data/datasource/remote/flight/flight_api.dart' as _i11;
import '../../data/datasource/remote/http/rest_api_impl.dart' as _i19;
import '../../data/datasource/remote/rest_api/rest_api.dart' as _i18;
import '../../data/datasource/remote/ticket/ticket_api.dart' as _i21;
import '../../data/repositories/airport_repository_impl.dart' as _i28;
import '../../data/repositories/customer_repository_impl.dart' as _i6;
import '../../data/repositories/flight_repository_impl.dart' as _i14;
import '../../data/repositories/ticket_repository_impl.dart' as _i23;
import '../../domain/repositories/airport_repository.dart' as _i27;
import '../../domain/repositories/customer_repository.dart' as _i5;
import '../../domain/repositories/flight_repository.dart' as _i13;
import '../../domain/repositories/ticket_repository.dart' as _i22;
import '../../domain/usecase/airport_usecase.dart' as _i29;
import '../../domain/usecase/customer_usecase.dart' as _i7;
import '../../domain/usecase/flight_usecase.dart' as _i15;
import '../../domain/usecase/ticket_usecase.dart' as _i24;
import '../../presentations/add_edit_airport/bloc/add_edit_airport_bloc.dart'
    as _i31;
import '../../presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart'
    as _i25;
import '../../presentations/airport/bloc/airport_bloc.dart' as _i32;
import '../../presentations/customer/bloc/customer_bloc.dart' as _i4;
import '../../presentations/dashboard/bloc/dashboard_bloc.dart' as _i8;
import '../../presentations/flight_detail/bloc/flight_detail_bloc.dart' as _i12;
import '../../presentations/list_flight/bloc/list_flight_bloc.dart' as _i17;
import '../../presentations/list_ticket/bloc/list_ticket_bloc.dart' as _i30;
import '../../presentations/settings/bloc/setting_bloc.dart' as _i20;
import '../../presentations_mobile/dashboard_mobile/bloc/dashboard_mobile_bloc.dart'
    as _i9;
import '../services/cloundinary_service.dart' as _i3;
import '../services/image_pic_service.dart' as _i16;
import 'modules/data_source_module.dart' as _i33;

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
  gh.factory<_i9.DashboardMobileBloc>(() => _i9.DashboardMobileBloc());
  gh.factory<_i10.Dio>(
    () => dataSourceModule.dioProd(),
    registerFor: {_prod},
  );
  gh.factory<_i11.FlightApi>(() => _i11.FlightApi(gh<_i10.Dio>()));
  gh.factory<_i12.FlightDetailBloc>(() => _i12.FlightDetailBloc());
  gh.factory<_i13.FlightRepository>(
      () => _i14.FlightRepositoryImpl(gh<_i11.FlightApi>()));
  gh.factory<_i15.FlightsUsecase>(
      () => _i15.FlightsUsecase(gh<_i13.FlightRepository>()));
  gh.factory<_i16.ImagePicService>(() => _i16.ImagePicService());
  gh.factory<_i17.ListFlightBloc>(
      () => _i17.ListFlightBloc(gh<_i15.FlightsUsecase>()));
  gh.factory<_i18.RestApi>(() => _i19.RestApiImpl());
  gh.factory<_i20.SettingBloc>(() => _i20.SettingBloc());
  gh.factory<_i21.TicketApi>(() => _i21.TicketApi(gh<_i10.Dio>()));
  gh.factory<_i22.TicketRepository>(
      () => _i23.TicketRepositoryImpl(gh<_i21.TicketApi>()));
  gh.factory<_i24.TicketUsecase>(
      () => _i24.TicketUsecase(gh<_i22.TicketRepository>()));
  gh.factoryParam<_i25.AddEditFlightBloc, String, dynamic>((
    flightId,
    _,
  ) =>
      _i25.AddEditFlightBloc(
        flightId,
        gh<_i15.FlightsUsecase>(),
      ));
  gh.factory<_i26.AirportApi>(() => _i26.AirportApi(gh<_i10.Dio>()));
  gh.factory<_i27.AirportRepository>(
      () => _i28.AirportRepositoryImpl(gh<_i26.AirportApi>()));
  gh.factory<_i29.AirportUsecase>(
      () => _i29.AirportUsecase(gh<_i27.AirportRepository>()));
  gh.factory<_i30.ListTicketBloc>(
      () => _i30.ListTicketBloc(gh<_i24.TicketUsecase>()));
  gh.factoryParam<_i31.AddEditAirportBloc, String, dynamic>((
    airportId,
    _,
  ) =>
      _i31.AddEditAirportBloc(
        airportId,
        gh<_i29.AirportUsecase>(),
        gh<_i3.CloundinaryService>(),
        gh<_i16.ImagePicService>(),
      ));
  gh.factory<_i32.AirportBloc>(
      () => _i32.AirportBloc(gh<_i29.AirportUsecase>()));
  return getIt;
}

class _$DataSourceModule extends _i33.DataSourceModule {}
