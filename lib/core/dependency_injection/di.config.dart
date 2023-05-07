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

import '../../data/datasource/remote/http/rest_api_impl.dart' as _i10;
import '../../data/datasource/remote/rest_api/rest_api.dart' as _i9;
import '../../data/repositories/customer_repository_impl.dart' as _i5;
import '../../data/repositories/flight_repository_impl.dart' as _i15;
import '../../data/repositories/ticket_repository_impl.dart' as _i13;
import '../../domain/repositories/customer_repository.dart' as _i4;
import '../../domain/repositories/flight_repository.dart' as _i14;
import '../../domain/repositories/ticket_repository.dart' as _i12;
import '../../domain/usecase/customer_usecase.dart' as _i6;
import '../../domain/usecase/flight_usecase.dart' as _i16;
import '../../domain/usecase/list_ticket_usecase.dart' as _i18;
import '../../presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart'
    as _i19;
import '../../presentations/customer/bloc/customer_bloc.dart' as _i3;
import '../../presentations/dashboard/bloc/dashboard_bloc.dart' as _i7;
import '../../presentations/flight_detail/bloc/flight_detail_bloc.dart' as _i8;
import '../../presentations/list_flight/bloc/list_flight_bloc.dart' as _i17;
import '../../presentations/list_ticket/bloc/list_ticket_bloc.dart' as _i20;
import '../../presentations/settings/bloc/setting_bloc.dart' as _i11;

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
  gh.factory<_i4.CustomerRepository>(() => _i5.CustomerRepositoryImpl());
  gh.factory<_i6.CustomerUseCase>(
      () => _i6.CustomerUseCase(gh<_i4.CustomerRepository>()));
  gh.factory<_i7.DashboardBloc>(() => _i7.DashboardBloc());
  gh.factory<_i8.FlightDetailBloc>(() => _i8.FlightDetailBloc());
  gh.factory<_i9.RestApi>(() => _i10.RestApiImpl());
  gh.factory<_i11.SettingBloc>(() => _i11.SettingBloc());
  gh.factory<_i12.TicketRepository>(
      () => _i13.TicketRepositoryImpl(gh<_i9.RestApi>()));
  gh.factory<_i14.FlightRepository>(
      () => _i15.FlightRepositoryImpl(gh<_i9.RestApi>()));
  gh.factory<_i16.FlightsUsecase>(
      () => _i16.FlightsUsecase(gh<_i14.FlightRepository>()));
  gh.factory<_i17.ListFlightBloc>(
      () => _i17.ListFlightBloc(gh<_i16.FlightsUsecase>()));
  gh.factory<_i18.ListTicketUsecase>(
      () => _i18.ListTicketUsecase(gh<_i12.TicketRepository>()));
  gh.factoryParam<_i19.AddEditFlightBloc, String, dynamic>((
    flightId,
    _,
  ) =>
      _i19.AddEditFlightBloc(
        flightId,
        gh<_i16.FlightsUsecase>(),
      ));
  gh.factory<_i20.ListTicketBloc>(
      () => _i20.ListTicketBloc(gh<_i18.ListTicketUsecase>()));
  return getIt;
}
