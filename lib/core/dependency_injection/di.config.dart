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
import '../../data/repositories/flight_repository_impl.dart' as _i7;
import '../../data/repositories/list_ticket_repository_impl.dart' as _i11;
import '../../domain/repositories/flight_repository.dart' as _i6;
import '../../domain/repositories/list_ticket_repository.dart' as _i10;
import '../../domain/usecase/flight_usecase.dart' as _i8;
import '../../domain/usecase/list_ticket_usecase.dart' as _i12;
import '../../presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart'
    as _i13;
import '../../presentations/dashboard/bloc/dashboard_bloc.dart' as _i3;
import '../../presentations/flight_detail/bloc/flight_detail_bloc.dart' as _i4;
import '../../presentations/list_flight/bloc/list_flight_bloc.dart' as _i9;
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
  gh.factory<_i3.DashboardBloc>(() => _i3.DashboardBloc());
  gh.factory<_i4.FlightDetailBloc>(() => _i4.FlightDetailBloc());
  gh.factory<_i5.RestApi>(() => _i5.RestApi());
  gh.factory<_i6.FlightRepository>(
      () => _i7.FlightRepositoryImpl(gh<_i5.RestApi>()));
  gh.factory<_i8.FlightsUsecase>(
      () => _i8.FlightsUsecase(gh<_i6.FlightRepository>()));
  gh.factory<_i9.ListFlightBloc>(
      () => _i9.ListFlightBloc(gh<_i8.FlightsUsecase>()));
  gh.factory<_i10.ListTicketRepository>(
      () => _i11.ListTicketRepositoryImpl(gh<_i5.RestApi>()));
  gh.factory<_i12.ListTicketUsecase>(
      () => _i12.ListTicketUsecase(gh<_i10.ListTicketRepository>()));
  gh.factoryParam<_i13.AddEditFlightBloc, String, dynamic>((
    flightId,
    _,
  ) =>
      _i13.AddEditFlightBloc(
        flightId,
        gh<_i8.FlightsUsecase>(),
      ));
  gh.factory<_i14.ListTicketBloc>(
      () => _i14.ListTicketBloc(gh<_i12.ListTicketUsecase>()));
  return getIt;
}
