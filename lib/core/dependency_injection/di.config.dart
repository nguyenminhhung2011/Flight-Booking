// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasource/remote/airport/airport_api.dart' as _i27;
import '../../data/datasource/remote/flight/flight_api.dart' as _i12;
import '../../data/datasource/remote/http/rest_api_impl.dart' as _i20;
import '../../data/datasource/remote/rest_api/rest_api.dart' as _i19;
import '../../data/datasource/remote/ticket/ticket_api.dart' as _i22;
import '../../data/repositories/airport_repository_impl.dart' as _i29;
import '../../data/repositories/customer_repository_impl.dart' as _i7;
import '../../data/repositories/flight_repository_impl.dart' as _i15;
import '../../data/repositories/ticket_repository_impl.dart' as _i24;
import '../../domain/repositories/airport_repository.dart' as _i28;
import '../../domain/repositories/customer_repository.dart' as _i6;
import '../../domain/repositories/flight_repository.dart' as _i14;
import '../../domain/repositories/ticket_repository.dart' as _i23;
import '../../domain/usecase/airport_usecase.dart' as _i30;
import '../../domain/usecase/customer_usecase.dart' as _i8;
import '../../domain/usecase/flight_usecase.dart' as _i16;
import '../../domain/usecase/ticket_usecase.dart' as _i25;
import '../../presentations/add_edit_airport/bloc/add_edit_airport_bloc.dart'
    as _i32;
import '../../presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart'
    as _i26;
import '../../presentations/airport/bloc/airport_bloc.dart' as _i33;
import '../../presentations/customer/bloc/customer_bloc.dart' as _i5;
import '../../presentations/dashboard/bloc/dashboard_bloc.dart' as _i9;
import '../../presentations/flight_detail/bloc/flight_detail_bloc.dart' as _i13;
import '../../presentations/list_flight/bloc/list_flight_bloc.dart' as _i18;
import '../../presentations/list_ticket/bloc/list_ticket_bloc.dart' as _i31;
import '../../presentations/settings/bloc/setting_bloc.dart' as _i21;
import '../../presentations_mobile/airport_detail_mobile/bloc/airport_detail_mobile_bloc.dart'
    as _i3;
import '../../presentations_mobile/dashboard_mobile/bloc/dashboard_mobile_bloc.dart'
    as _i10;
import '../services/cloundinary_service.dart' as _i4;
import '../services/image_pic_service.dart' as _i17;
import 'modules/data_source_module.dart' as _i34;

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
  gh.factory<_i3.AirportDetailMobileBloc>(() => _i3.AirportDetailMobileBloc());
  gh.factory<_i4.CloundinaryService>(() => _i4.CloundinaryService());
  gh.factory<_i5.CustomerBloc>(() => _i5.CustomerBloc());
  gh.factory<_i6.CustomerRepository>(() => _i7.CustomerRepositoryImpl());
  gh.factory<_i8.CustomerUseCase>(
      () => _i8.CustomerUseCase(gh<_i6.CustomerRepository>()));
  gh.factory<_i9.DashboardBloc>(() => _i9.DashboardBloc());
  gh.factory<_i10.DashboardMobileBloc>(() => _i10.DashboardMobileBloc());
  gh.factory<_i11.Dio>(
    () => dataSourceModule.dioProd(),
    registerFor: {_prod},
  );
  gh.factory<_i12.FlightApi>(() => _i12.FlightApi(gh<_i11.Dio>()));
  gh.factory<_i13.FlightDetailBloc>(() => _i13.FlightDetailBloc());
  gh.factory<_i14.FlightRepository>(
      () => _i15.FlightRepositoryImpl(gh<_i12.FlightApi>()));
  gh.factory<_i16.FlightsUsecase>(
      () => _i16.FlightsUsecase(gh<_i14.FlightRepository>()));
  gh.factory<_i17.ImagePicService>(() => _i17.ImagePicService());
  gh.factory<_i18.ListFlightBloc>(
      () => _i18.ListFlightBloc(gh<_i16.FlightsUsecase>()));
  gh.factory<_i19.RestApi>(() => _i20.RestApiImpl());
  gh.factory<_i21.SettingBloc>(() => _i21.SettingBloc());
  gh.factory<_i22.TicketApi>(() => _i22.TicketApi(gh<_i11.Dio>()));
  gh.factory<_i23.TicketRepository>(
      () => _i24.TicketRepositoryImpl(gh<_i22.TicketApi>()));
  gh.factory<_i25.TicketUsecase>(
      () => _i25.TicketUsecase(gh<_i23.TicketRepository>()));
  gh.factoryParam<_i26.AddEditFlightBloc, String, dynamic>((
    flightId,
    _,
  ) =>
      _i26.AddEditFlightBloc(
        flightId,
        gh<_i16.FlightsUsecase>(),
      ));
  gh.factory<_i27.AirportApi>(() => _i27.AirportApi(gh<_i11.Dio>()));
  gh.factory<_i28.AirportRepository>(
      () => _i29.AirportRepositoryImpl(gh<_i27.AirportApi>()));
  gh.factory<_i30.AirportUsecase>(
      () => _i30.AirportUsecase(gh<_i28.AirportRepository>()));
  gh.factory<_i31.ListTicketBloc>(
      () => _i31.ListTicketBloc(gh<_i25.TicketUsecase>()));
  gh.factoryParam<_i32.AddEditAirportBloc, String, dynamic>((
    airportId,
    _,
  ) =>
      _i32.AddEditAirportBloc(
        airportId,
        gh<_i30.AirportUsecase>(),
        gh<_i4.CloundinaryService>(),
        gh<_i17.ImagePicService>(),
      ));
  gh.factory<_i33.AirportBloc>(
      () => _i33.AirportBloc(gh<_i30.AirportUsecase>()));
  return getIt;
}

class _$DataSourceModule extends _i34.DataSourceModule {}
