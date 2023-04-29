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

import '../../data/datasource/remote/rest_api/rest_api.dart' as _i5;
import '../../data/repositories/list_flight_repository_impl.dart' as _i7;
import '../../data/repositories/list_ticket_repository_impl.dart' as _i10;
import '../../domain/repositories/list_flight_repository.dart' as _i6;
import '../../domain/repositories/list_ticket_repository.dart' as _i9;
import '../../domain/usecase/list_flight_usecase.dart' as _i8;
import '../../domain/usecase/list_ticket_usecase.dart' as _i11;
import '../../presentations/dashboard/bloc/dashboard_bloc.dart' as _i3;
import '../../presentations/flight_detail/bloc/flight_detail_bloc.dart' as _i4;
import '../../presentations/list_flight/bloc/list_flight_bloc.dart' as _i12;
import '../../presentations/list_ticket/bloc/list_ticket_bloc.dart' as _i13;

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
  gh.factory<_i3.DashboardBloc>(() => _i3.DashboardBloc());
  gh.factory<_i4.FlightDetailBloc>(() => _i4.FlightDetailBloc());
  gh.factory<_i5.RestApi>(() => _i5.RestApi());
  gh.factory<_i6.ListFlightRepository>(
      () => _i7.ListFlightRepositoryImpl(gh<_i5.RestApi>()));
  gh.factory<_i8.ListFlightsUsecase>(
      () => _i8.ListFlightsUsecase(gh<_i6.ListFlightRepository>()));
  gh.factory<_i9.ListTicketRepository>(
      () => _i10.ListTicketRepositoryImpl(gh<_i5.RestApi>()));
  gh.factory<_i11.ListTicketUsecase>(
      () => _i11.ListTicketUsecase(gh<_i9.ListTicketRepository>()));
  gh.factory<_i12.ListFlightBloc>(
      () => _i12.ListFlightBloc(gh<_i8.ListFlightsUsecase>()));
  gh.factory<_i13.ListTicketBloc>(
      () => _i13.ListTicketBloc(gh<_i11.ListTicketUsecase>()));
  return getIt;
}
