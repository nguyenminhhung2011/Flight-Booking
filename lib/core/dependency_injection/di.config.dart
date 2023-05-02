// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasource/remote/http/rest_api_impl.dart' as _i7;
import '../../data/datasource/remote/rest_api/rest_api.dart' as _i6;
import '../../data/repositories/airport_repository_impl.dart' as _i12;
import '../../data/repositories/flight_repository_impl.dart' as _i14;
import '../../data/repositories/ticket_repository_impl.dart' as _i10;
import '../../domain/repositories/airport_repository.dart' as _i11;
import '../../domain/repositories/flight_repository.dart' as _i13;
import '../../domain/repositories/ticket_repository.dart' as _i9;
import '../../domain/usecase/flight_usecase.dart' as _i15;
import '../../domain/usecase/list_ticket_usecase.dart' as _i17;
import '../../presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart'
    as _i18;
import '../../presentations/customer/bloc/customer_bloc.dart' as _i3;
import '../../presentations/dashboard/bloc/dashboard_bloc.dart' as _i4;
import '../../presentations/flight_detail/bloc/flight_detail_bloc.dart' as _i5;
import '../../presentations/list_flight/bloc/list_flight_bloc.dart' as _i16;
import '../../presentations/list_ticket/bloc/list_ticket_bloc.dart' as _i19;
import '../../presentations/settings/bloc/setting_bloc.dart' as _i8;

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
  gh.factory<_i3.CustomerBloc>(() => _i3.CustomerBloc());
  gh.factory<_i4.DashboardBloc>(() => _i4.DashboardBloc());
  gh.factory<_i5.FlightDetailBloc>(() => _i5.FlightDetailBloc());
  gh.factory<_i6.RestApi>(() => _i7.RestApiImpl());
  gh.factory<_i8.SettingBloc>(() => _i8.SettingBloc());
  gh.factory<_i9.TicketRepository>(
      () => _i10.TicketRepositoryImpl(gh<_i6.RestApi>()));
  gh.factory<_i11.AirportRepository>(
      () => _i12.AirportRepositoryImpl(gh<_i6.RestApi>()));
  gh.factory<_i13.FlightRepository>(
      () => _i14.FlightRepositoryImpl(gh<_i6.RestApi>()));
  gh.factory<_i15.FlightsUsecase>(
      () => _i15.FlightsUsecase(gh<_i13.FlightRepository>()));
  gh.factory<_i16.ListFlightBloc>(
      () => _i16.ListFlightBloc(gh<_i15.FlightsUsecase>()));
  gh.factory<_i17.ListTicketUsecase>(
      () => _i17.ListTicketUsecase(gh<_i9.TicketRepository>()));
  gh.factoryParam<_i18.AddEditFlightBloc, String, dynamic>((
    flightId,
    _,
  ) =>
      _i18.AddEditFlightBloc(
        flightId,
        gh<_i15.FlightsUsecase>(),
      ));
  gh.factory<_i19.ListTicketBloc>(
      () => _i19.ListTicketBloc(gh<_i17.ListTicketUsecase>()));
  return getIt;
}
