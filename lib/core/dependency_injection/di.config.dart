// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasource/remote/airport/airport_api.dart' as _i28;
import '../../data/datasource/remote/flight/flight_api.dart' as _i13;
import '../../data/datasource/remote/http/rest_api_impl.dart' as _i21;
import '../../data/datasource/remote/rest_api/rest_api.dart' as _i20;
import '../../data/datasource/remote/ticket/ticket_api.dart' as _i23;
import '../../data/repositories/airport_repository_impl.dart' as _i30;
import '../../data/repositories/customer_repository_impl.dart' as _i8;
import '../../data/repositories/flight_repository_impl.dart' as _i16;
import '../../data/repositories/ticket_repository_impl.dart' as _i25;
import '../../domain/repositories/airport_repository.dart' as _i29;
import '../../domain/repositories/customer_repository.dart' as _i7;
import '../../domain/repositories/flight_repository.dart' as _i15;
import '../../domain/repositories/ticket_repository.dart' as _i24;
import '../../domain/usecase/airport_usecase.dart' as _i31;
import '../../domain/usecase/customer_usecase.dart' as _i9;
import '../../domain/usecase/flight_usecase.dart' as _i17;
import '../../domain/usecase/ticket_usecase.dart' as _i26;
import '../../presentations/add_edit_airport/bloc/add_edit_airport_bloc.dart'
    as _i35;
import '../../presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart'
    as _i27;
import '../../presentations/airport/bloc/airport_bloc.dart' as _i36;
import '../../presentations/customer/bloc/customer_bloc.dart' as _i6;
import '../../presentations/dashboard/bloc/dashboard_bloc.dart' as _i10;
import '../../presentations/flight_detail/bloc/flight_detail_bloc.dart' as _i14;
import '../../presentations/list_flight/bloc/list_flight_bloc.dart' as _i19;
import '../../presentations/list_ticket/bloc/list_ticket_bloc.dart' as _i32;
import '../../presentations/settings/bloc/setting_bloc.dart' as _i22;
import '../../presentations_mobile/airport_detail_mobile/bloc/airport_detail_mobile_bloc.dart'
    as _i3;
import '../../presentations_mobile/auth/bloc/auth_bloc.dart' as _i4;
import '../../presentations_mobile/dashboard_mobile/bloc/dashboard_mobile_bloc.dart'
    as _i11;
import '../../presentations_mobile/search_mobile/bloc/search_mobile_bloc.dart'
    as _i33;
import '../components/enum/search_enum.dart' as _i34;
import '../services/cloundinary_service.dart' as _i5;
import '../services/image_pic_service.dart' as _i18;
import 'modules/data_source_module.dart' as _i37;

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
  gh.factory<_i4.AuthBloc>(() => _i4.AuthBloc());
  gh.factory<_i5.CloundinaryService>(() => _i5.CloundinaryService());
  gh.factory<_i6.CustomerBloc>(() => _i6.CustomerBloc());
  gh.factory<_i7.CustomerRepository>(() => _i8.CustomerRepositoryImpl());
  gh.factory<_i9.CustomerUseCase>(
      () => _i9.CustomerUseCase(gh<_i7.CustomerRepository>()));
  gh.factory<_i10.DashboardBloc>(() => _i10.DashboardBloc());
  gh.factory<_i11.DashboardMobileBloc>(() => _i11.DashboardMobileBloc());
  gh.factory<_i12.Dio>(
    () => dataSourceModule.dioProd(),
    registerFor: {_prod},
  );
  gh.factory<_i13.FlightApi>(() => _i13.FlightApi(gh<_i12.Dio>()));
  gh.factory<_i14.FlightDetailBloc>(() => _i14.FlightDetailBloc());
  gh.factory<_i15.FlightRepository>(
      () => _i16.FlightRepositoryImpl(gh<_i13.FlightApi>()));
  gh.factory<_i17.FlightsUsecase>(
      () => _i17.FlightsUsecase(gh<_i15.FlightRepository>()));
  gh.factory<_i18.ImagePicService>(() => _i18.ImagePicService());
  gh.factory<_i19.ListFlightBloc>(
      () => _i19.ListFlightBloc(gh<_i17.FlightsUsecase>()));
  gh.factory<_i20.RestApi>(() => _i21.RestApiImpl());
  gh.factory<_i22.SettingBloc>(() => _i22.SettingBloc());
  gh.factory<_i23.TicketApi>(() => _i23.TicketApi(gh<_i12.Dio>()));
  gh.factory<_i24.TicketRepository>(
      () => _i25.TicketRepositoryImpl(gh<_i23.TicketApi>()));
  gh.factory<_i26.TicketUsecase>(
      () => _i26.TicketUsecase(gh<_i24.TicketRepository>()));
  gh.factoryParam<_i27.AddEditFlightBloc, String, dynamic>((
    flightId,
    _,
  ) =>
      _i27.AddEditFlightBloc(
        flightId,
        gh<_i17.FlightsUsecase>(),
      ));
  gh.factory<_i28.AirportApi>(() => _i28.AirportApi(gh<_i12.Dio>()));
  gh.factory<_i29.AirportRepository>(
      () => _i30.AirportRepositoryImpl(gh<_i28.AirportApi>()));
  gh.factory<_i31.AirportUsecase>(
      () => _i31.AirportUsecase(gh<_i29.AirportRepository>()));
  gh.factory<_i32.ListTicketBloc>(
      () => _i32.ListTicketBloc(gh<_i26.TicketUsecase>()));
  gh.factoryParam<_i33.SearchMobileBloc, _i34.SearchEnum?, dynamic>((
    searchType,
    _,
  ) =>
      _i33.SearchMobileBloc(
        searchType,
        gh<_i31.AirportUsecase>(),
        gh<_i17.FlightsUsecase>(),
      ));
  gh.factoryParam<_i35.AddEditAirportBloc, String, dynamic>((
    airportId,
    _,
  ) =>
      _i35.AddEditAirportBloc(
        airportId,
        gh<_i31.AirportUsecase>(),
        gh<_i5.CloundinaryService>(),
        gh<_i18.ImagePicService>(),
      ));
  gh.factory<_i36.AirportBloc>(
      () => _i36.AirportBloc(gh<_i31.AirportUsecase>()));
  return getIt;
}

class _$DataSourceModule extends _i37.DataSourceModule {}
