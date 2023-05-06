// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasource/remote/airport/airport_api.dart' as _i21;
import '../../data/datasource/remote/flight/flight_api.dart' as _i7;
import '../../data/datasource/remote/http/rest_api_impl.dart' as _i14;
import '../../data/datasource/remote/rest_api/rest_api.dart' as _i13;
import '../../data/datasource/remote/ticket/ticket_api.dart' as _i16;
import '../../data/repositories/airport_repository_impl.dart' as _i23;
import '../../data/repositories/flight_repository_impl.dart' as _i10;
import '../../data/repositories/ticket_repository_impl.dart' as _i18;
import '../../domain/repositories/airport_repository.dart' as _i22;
import '../../domain/repositories/flight_repository.dart' as _i9;
import '../../domain/repositories/ticket_repository.dart' as _i17;
import '../../domain/usecase/airport_usecase.dart' as _i24;
import '../../domain/usecase/flight_usecase.dart' as _i11;
import '../../domain/usecase/ticket_usecase.dart' as _i19;
import '../../presentations/add_edit_airport/bloc/add_edit_airport_bloc.dart'
    as _i26;
import '../../presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart'
    as _i20;
import '../../presentations/airport/bloc/airport_bloc.dart' as _i27;
import '../../presentations/customer/bloc/customer_bloc.dart' as _i4;
import '../../presentations/dashboard/bloc/dashboard_bloc.dart' as _i5;
import '../../presentations/flight_detail/bloc/flight_detail_bloc.dart' as _i8;
import '../../presentations/list_flight/bloc/list_flight_bloc.dart' as _i12;
import '../../presentations/list_ticket/bloc/list_ticket_bloc.dart' as _i25;
import '../../presentations/settings/bloc/setting_bloc.dart' as _i15;
import '../services/cloundinary_service.dart' as _i3;
import 'modules/data_source_module.dart' as _i28;

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
  gh.factory<_i5.DashboardBloc>(() => _i5.DashboardBloc());
  gh.factory<_i6.Dio>(
    () => dataSourceModule.dioProd(),
    registerFor: {_prod},
  );
  gh.factory<_i7.FlightApi>(() => _i7.FlightApi(gh<_i6.Dio>()));
  gh.factory<_i8.FlightDetailBloc>(() => _i8.FlightDetailBloc());
  gh.factory<_i9.FlightRepository>(
      () => _i10.FlightRepositoryImpl(gh<_i7.FlightApi>()));
  gh.factory<_i11.FlightsUsecase>(
      () => _i11.FlightsUsecase(gh<_i9.FlightRepository>()));
  gh.factory<_i12.ListFlightBloc>(
      () => _i12.ListFlightBloc(gh<_i11.FlightsUsecase>()));
  gh.factory<_i13.RestApi>(() => _i14.RestApiImpl());
  gh.factory<_i15.SettingBloc>(() => _i15.SettingBloc());
  gh.factory<_i16.TicketApi>(() => _i16.TicketApi(gh<_i6.Dio>()));
  gh.factory<_i17.TicketRepository>(
      () => _i18.TicketRepositoryImpl(gh<_i16.TicketApi>()));
  gh.factory<_i19.TicketUsecase>(
      () => _i19.TicketUsecase(gh<_i17.TicketRepository>()));
  gh.factoryParam<_i20.AddEditFlightBloc, String, dynamic>((
    flightId,
    _,
  ) =>
      _i20.AddEditFlightBloc(
        flightId,
        gh<_i11.FlightsUsecase>(),
      ));
  gh.factory<_i21.AirportApi>(() => _i21.AirportApi(gh<_i6.Dio>()));
  gh.factory<_i22.AirportRepository>(
      () => _i23.AirportRepositoryImpl(gh<_i21.AirportApi>()));
  gh.factory<_i24.AirportUsecase>(
      () => _i24.AirportUsecase(gh<_i22.AirportRepository>()));
  gh.factory<_i25.ListTicketBloc>(
      () => _i25.ListTicketBloc(gh<_i19.TicketUsecase>()));
  gh.factoryParam<_i26.AddEditAirportBloc, String, dynamic>((
    airportId,
    _,
  ) =>
      _i26.AddEditAirportBloc(
        airportId,
        gh<_i24.AirportUsecase>(),
        gh<_i3.CloundinaryService>(),
      ));
  gh.factory<_i27.AirportBloc>(
      () => _i27.AirportBloc(gh<_i24.AirportUsecase>()));
  return getIt;
}

class _$DataSourceModule extends _i28.DataSourceModule {}
