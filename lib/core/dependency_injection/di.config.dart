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

import '../../data/datasource/remote/airport/airport_api.dart' as _i31;
import '../../data/datasource/remote/auth/auth_api.dart' as _i35;
import '../../data/datasource/remote/flight/flight_api.dart' as _i13;
import '../../data/datasource/remote/ticket/ticket_api.dart' as _i26;
import '../../data/repositories/airport_repository_impl.dart' as _i33;
import '../../data/repositories/customer_repository_impl.dart' as _i8;
import '../../data/repositories/flight_repository_impl.dart' as _i17;
import '../../data/repositories/ticket_repository_impl.dart' as _i28;
import '../../data/repositories/user_repository_impl.dart' as _i42;
import '../../domain/repositories/airport_repository.dart' as _i32;
import '../../domain/repositories/customer_repository.dart' as _i7;
import '../../domain/repositories/flight_repository.dart' as _i16;
import '../../domain/repositories/ticket_repository.dart' as _i27;
import '../../domain/repositories/user_repository.dart' as _i41;
import '../../domain/usecase/airport_usecase.dart' as _i34;
import '../../domain/usecase/customer_usecase.dart' as _i9;
import '../../domain/usecase/flight_usecase.dart' as _i18;
import '../../domain/usecase/ticket_usecase.dart' as _i29;
import '../../domain/usecase/user_usecase.dart' as _i43;
import '../../presentations/add_edit_airport/bloc/add_edit_airport_bloc.dart'
    as _i45;
import '../../presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart'
    as _i30;
import '../../presentations/airport/bloc/airport_bloc.dart' as _i46;
import '../../presentations/customer/bloc/customer_bloc.dart' as _i36;
import '../../presentations/customer_detail/bloc/customer_detail_bloc.dart'
    as _i6;
import '../../presentations/dashboard/bloc/dashboard_bloc.dart' as _i10;
import '../../presentations/flight_detail/bloc/flight_detail_bloc.dart' as _i14;
import '../../presentations/list_flight/bloc/list_flight_bloc.dart' as _i20;
import '../../presentations/list_ticket/bloc/list_ticket_bloc.dart' as _i37;
import '../../presentations/login/bloc/authentication_bloc.dart' as _i47;
import '../../presentations/payment_detail/bloc/payment_detail_bloc.dart'
    as _i22;
import '../../presentations/payment_management/bloc/payment_bloc.dart' as _i21;
import '../../presentations/settings/bloc/accout/account_setting_bloc.dart'
    as _i44;
import '../../presentations/settings/bloc/general/general_setting_bloc.dart'
    as _i48;
import '../../presentations/settings/bloc/setting_bloc.dart' as _i25;
import '../../presentations_mobile/airport_detail_mobile/bloc/airport_detail_mobile_bloc.dart'
    as _i3;
import '../../presentations_mobile/auth/bloc/auth_bloc.dart' as _i4;
import '../../presentations_mobile/dashboard_mobile/bloc/dashboard_mobile_bloc.dart'
    as _i11;
import '../../presentations_mobile/flight_history_detail/bloc/flight_history_detail_bloc.dart'
    as _i15;
import '../../presentations_mobile/save/bloc/save_bloc.dart' as _i23;
import '../../presentations_mobile/search_mobile/bloc/search_mobile_bloc.dart'
    as _i38;
import '../../presentations_mobile/select_scott_mobile/bloc/select_scott_bloc.dart'
    as _i24;
import '../../presentations_mobile/ticket_mobile/bloc/tic_mobile_bloc.dart'
    as _i40;
import '../components/enum/search_enum.dart' as _i39;
import '../services/cloundinary_service.dart' as _i5;
import '../services/image_pic_service.dart' as _i19;
import 'modules/data_source_module.dart' as _i49;

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
  gh.factory<_i6.CustomerDetailBloc>(() => _i6.CustomerDetailBloc());
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
  gh.factoryParam<_i15.FlightHistoryDetailBloc, String, dynamic>((
    id,
    _,
  ) =>
      _i15.FlightHistoryDetailBloc(id));
  gh.factory<_i16.FlightRepository>(
      () => _i17.FlightRepositoryImpl(gh<_i13.FlightApi>()));
  gh.factory<_i18.FlightsUsecase>(
      () => _i18.FlightsUsecase(gh<_i16.FlightRepository>()));
  gh.factory<_i19.ImagePicService>(() => _i19.ImagePicService());
  gh.factory<_i20.ListFlightBloc>(
      () => _i20.ListFlightBloc(gh<_i18.FlightsUsecase>()));
  gh.factory<_i21.PaymentBloc>(() => _i21.PaymentBloc());
  gh.factory<_i22.PaymentDetailBloc>(
      () => _i22.PaymentDetailBloc(gh<String>()));
  gh.factory<_i23.SaveBloc>(() => _i23.SaveBloc());
  gh.factory<_i24.SelectScottBloc>(() => _i24.SelectScottBloc());
  gh.factory<_i25.SettingBloc>(() => _i25.SettingBloc());
  gh.factory<_i26.TicketApi>(() => _i26.TicketApi(gh<_i12.Dio>()));
  gh.factory<_i27.TicketRepository>(
      () => _i28.TicketRepositoryImpl(gh<_i26.TicketApi>()));
  gh.factory<_i29.TicketUsecase>(
      () => _i29.TicketUsecase(gh<_i27.TicketRepository>()));
  gh.factoryParam<_i30.AddEditFlightBloc, String, dynamic>((
    flightId,
    _,
  ) =>
      _i30.AddEditFlightBloc(
        flightId,
        gh<_i18.FlightsUsecase>(),
      ));
  gh.factory<_i31.AirportApi>(() => _i31.AirportApi(gh<_i12.Dio>()));
  gh.factory<_i32.AirportRepository>(
      () => _i33.AirportRepositoryImpl(gh<_i31.AirportApi>()));
  gh.factory<_i34.AirportUsecase>(
      () => _i34.AirportUsecase(gh<_i32.AirportRepository>()));
  gh.factory<_i35.AuthApi>(() => _i35.AuthApi(gh<_i12.Dio>()));
  gh.factory<_i36.CustomerBloc>(
      () => _i36.CustomerBloc(gh<_i9.CustomerUseCase>()));
  gh.factory<_i37.ListTicketBloc>(
      () => _i37.ListTicketBloc(gh<_i29.TicketUsecase>()));
  gh.factoryParam<_i38.SearchMobileBloc, _i39.SearchEnum?, dynamic>((
    searchType,
    _,
  ) =>
      _i38.SearchMobileBloc(
        searchType,
        gh<_i34.AirportUsecase>(),
        gh<_i18.FlightsUsecase>(),
      ));
  gh.factory<_i40.TicMobileBloc>(
      () => _i40.TicMobileBloc(gh<_i29.TicketUsecase>()));
  gh.factory<_i41.UserRepository>(
      () => _i42.UserRepositoryImpl(gh<_i35.AuthApi>()));
  gh.factory<_i43.UserUseCase>(
      () => _i43.UserUseCase(gh<_i41.UserRepository>()));
  gh.factory<_i44.AccountSettingBloc>(
      () => _i44.AccountSettingBloc(gh<_i43.UserUseCase>()));
  gh.factoryParam<_i45.AddEditAirportBloc, String, dynamic>((
    airportId,
    _,
  ) =>
      _i45.AddEditAirportBloc(
        airportId,
        gh<_i34.AirportUsecase>(),
        gh<_i5.CloundinaryService>(),
        gh<_i19.ImagePicService>(),
      ));
  gh.factory<_i46.AirportBloc>(
      () => _i46.AirportBloc(gh<_i34.AirportUsecase>()));
  gh.factory<_i47.AuthenticationBloc>(
      () => _i47.AuthenticationBloc(gh<_i43.UserUseCase>()));
  gh.factory<_i48.GeneralSettingBloc>(
      () => _i48.GeneralSettingBloc(gh<_i43.UserUseCase>()));
  return getIt;
}

class _$DataSourceModule extends _i49.DataSourceModule {}
