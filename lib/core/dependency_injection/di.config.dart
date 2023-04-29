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

import '../../data/datasource/remote/rest_api/rest_api.dart' as _i6;
import '../../data/repositories/list_flight_repository_impl.dart' as _i8;
import '../../data/repositories/list_ticket_repository_impl.dart' as _i11;
import '../../domain/repositories/list_flight_repository.dart' as _i7;
import '../../domain/repositories/list_ticket_repository.dart' as _i10;
import '../../domain/usecase/list_flight_usecase.dart' as _i9;
import '../../domain/usecase/list_ticket_usecase.dart' as _i12;
import '../../presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart'
    as _i3;
import '../../presentations/dashboard/bloc/dashboard_bloc.dart' as _i4;
import '../../presentations/flight_detail/bloc/flight_detail_bloc.dart' as _i5;
import '../../presentations/list_flight/bloc/list_flight_bloc.dart' as _i13;
import '../../presentations/list_ticket/bloc/list_ticket_bloc.dart' as _i14;

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
  gh.factory<_i3.AddEditFlightBloc>(() => _i3.AddEditFlightBloc());
  gh.factory<_i4.DashboardBloc>(() => _i4.DashboardBloc());
  gh.factory<_i5.FlightDetailBloc>(() => _i5.FlightDetailBloc());
  gh.factory<_i6.RestApi>(() => _i6.RestApi());
  gh.factory<_i7.ListFlightRepository>(
      () => _i8.ListFlightRepositoryImpl(gh<_i6.RestApi>()));
  gh.factory<_i9.ListFlightsUsecase>(
      () => _i9.ListFlightsUsecase(gh<_i7.ListFlightRepository>()));
  gh.factory<_i10.ListTicketRepository>(
      () => _i11.ListTicketRepositoryImpl(gh<_i6.RestApi>()));
  gh.factory<_i12.ListTicketUsecase>(
      () => _i12.ListTicketUsecase(gh<_i10.ListTicketRepository>()));
  gh.factory<_i13.ListFlightBloc>(
      () => _i13.ListFlightBloc(gh<_i9.ListFlightsUsecase>()));
  gh.factory<_i14.ListTicketBloc>(
      () => _i14.ListTicketBloc(gh<_i12.ListTicketUsecase>()));
  return getIt;
}
