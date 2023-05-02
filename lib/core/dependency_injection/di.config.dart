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
import '../../data/repositories/flight_repository_impl.dart' as _i12;
import '../../data/repositories/ticket_repository_impl.dart' as _i10;
import '../../domain/repositories/flight_repository.dart' as _i11;
import '../../domain/repositories/ticket_repository.dart' as _i9;
import '../../domain/usecase/flight_usecase.dart' as _i13;
import '../../domain/usecase/list_ticket_usecase.dart' as _i15;
import '../../presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart'
    as _i16;
import '../../presentations/customer/bloc/customer_bloc.dart' as _i3;
import '../../presentations/dashboard/bloc/dashboard_bloc.dart' as _i4;
import '../../presentations/flight_detail/bloc/flight_detail_bloc.dart' as _i5;
import '../../presentations/list_flight/bloc/list_flight_bloc.dart' as _i14;
import '../../presentations/list_ticket/bloc/list_ticket_bloc.dart' as _i17;
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
  gh.factory<_i11.FlightRepository>(
      () => _i12.FlightRepositoryImpl(gh<_i6.RestApi>()));
  gh.factory<_i13.FlightsUsecase>(
      () => _i13.FlightsUsecase(gh<_i11.FlightRepository>()));
  gh.factory<_i14.ListFlightBloc>(
      () => _i14.ListFlightBloc(gh<_i13.FlightsUsecase>()));
  gh.factory<_i15.ListTicketUsecase>(
      () => _i15.ListTicketUsecase(gh<_i9.TicketRepository>()));
  gh.factoryParam<_i16.AddEditFlightBloc, String, dynamic>((
    flightId,
    _,
  ) =>
      _i16.AddEditFlightBloc(
        flightId,
        gh<_i13.FlightsUsecase>(),
      ));
  gh.factory<_i17.ListTicketBloc>(
      () => _i17.ListTicketBloc(gh<_i15.ListTicketUsecase>()));
  return getIt;
}
