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

import '../../data/datasource/remote/airline/airline_api.dart' as _i29;
import '../../data/datasource/remote/airport/airport_api.dart' as _i33;
import '../../data/datasource/remote/auth/auth_api.dart' as _i37;
import '../../data/datasource/remote/flight/flight_api.dart' as _i12;
import '../../data/datasource/remote/ticket/ticket_api.dart' as _i25;
import '../../data/repositories/airline_repository_impl.dart' as _i31;
import '../../data/repositories/airport_repository_impl.dart' as _i35;
import '../../data/repositories/customer_repository_impl.dart' as _i7;
import '../../data/repositories/flight_repository_impl.dart' as _i16;
import '../../data/repositories/ticket_repository_impl.dart' as _i27;
import '../../data/repositories/user_repository_impl.dart' as _i45;
import '../../domain/repositories/airline_repository.dart' as _i30;
import '../../domain/repositories/airport_repository.dart' as _i34;
import '../../domain/repositories/customer_repository.dart' as _i6;
import '../../domain/repositories/flight_repository.dart' as _i15;
import '../../domain/repositories/ticket_repository.dart' as _i26;
import '../../domain/repositories/user_repository.dart' as _i44;
import '../../domain/usecase/airline_usecase.dart' as _i32;
import '../../domain/usecase/airport_usecase.dart' as _i36;
import '../../domain/usecase/customer_usecase.dart' as _i8;
import '../../domain/usecase/flight_usecase.dart' as _i17;
import '../../domain/usecase/ticket_usecase.dart' as _i28;
import '../../domain/usecase/user_usecase.dart' as _i46;
import '../../presentations/add_edit_airport/bloc/add_edit_airport_bloc.dart'
    as _i48;
import '../../presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart'
    as _i49;
import '../../presentations/airport/bloc/airport_bloc.dart' as _i50;
import '../../presentations/customer/bloc/customer_bloc.dart' as _i38;
import '../../presentations/customer_detail/bloc/customer_detail_bloc.dart'
    as _i5;
import '../../presentations/dashboard/bloc/dashboard_bloc.dart' as _i9;
import '../../presentations/flight_detail/bloc/flight_detail_bloc.dart' as _i13;
import '../../presentations/list_flight/bloc/list_flight_bloc.dart' as _i39;
import '../../presentations/list_ticket/bloc/list_ticket_bloc.dart' as _i40;
import '../../presentations/login/bloc/authentication_bloc.dart' as _i53;
import '../../presentations/payment_detail/bloc/payment_detail_bloc.dart'
    as _i20;
import '../../presentations/payment_management/bloc/payment_bloc.dart' as _i19;
import '../../presentations/settings/bloc/accout/account_setting_bloc.dart'
    as _i47;
import '../../presentations/settings/bloc/general/general_setting_bloc.dart'
    as _i54;
import '../../presentations/settings/bloc/setting_bloc.dart' as _i24;
import '../../presentations_mobile/airport_detail_mobile/bloc/airport_detail_mobile_bloc.dart'
    as _i3;
import '../../presentations_mobile/auth/bloc/auth_bloc.dart' as _i52;
import '../../presentations_mobile/dashboard_mobile/bloc/dashboard_mobile_bloc.dart'
    as _i10;
import '../../presentations_mobile/flight_history_detail/bloc/flight_history_detail_bloc.dart'
    as _i14;
import '../../presentations_mobile/list_airport_mobile/bloc/airport_mobile_bloc.dart'
    as _i51;
import '../../presentations_mobile/save/bloc/save_bloc.dart' as _i22;
import '../../presentations_mobile/search_mobile/bloc/search_mobile_bloc.dart'
    as _i41;
import '../../presentations_mobile/select_scott_mobile/bloc/select_scott_bloc.dart'
    as _i23;
import '../../presentations_mobile/ticket_mobile/bloc/tic_mobile_bloc.dart'
    as _i43;
import '../components/enum/search_enum.dart' as _i42;
import '../services/cloundinary_service.dart' as _i4;
import '../services/image_pic_service.dart' as _i18;
import '../services/place/place_service.dart' as _i21;
import 'modules/data_source_module.dart' as _i55;

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
  gh.factory<_i5.CustomerDetailBloc>(() => _i5.CustomerDetailBloc());
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
  gh.factoryParam<_i14.FlightHistoryDetailBloc, String, dynamic>((
    id,
    _,
  ) =>
      _i14.FlightHistoryDetailBloc(id));
  gh.factory<_i15.FlightRepository>(
      () => _i16.FlightRepositoryImpl(gh<_i12.FlightApi>()));
  gh.factory<_i17.FlightsUsecase>(
      () => _i17.FlightsUsecase(gh<_i15.FlightRepository>()));
  gh.factory<_i18.ImagePicService>(() => _i18.ImagePicService());
  gh.factory<_i19.PaymentBloc>(() => _i19.PaymentBloc());
  gh.factory<_i20.PaymentDetailBloc>(
      () => _i20.PaymentDetailBloc(gh<String>()));
  gh.factory<_i21.PlaceService>(() => _i21.PlaceService());
  gh.factory<_i22.SaveBloc>(() => _i22.SaveBloc());
  gh.factory<_i23.SelectScottBloc>(() => _i23.SelectScottBloc());
  gh.factory<_i24.SettingBloc>(() => _i24.SettingBloc());
  gh.factory<_i25.TicketApi>(() => _i25.TicketApi(gh<_i11.Dio>()));
  gh.factory<_i26.TicketRepository>(
      () => _i27.TicketRepositoryImpl(gh<_i25.TicketApi>()));
  gh.factory<_i28.TicketUsecase>(
      () => _i28.TicketUsecase(gh<_i26.TicketRepository>()));
  gh.factory<_i29.AirlineApi>(() => _i29.AirlineApi(gh<_i11.Dio>()));
  gh.factory<_i30.AirlineRepository>(
      () => _i31.AirlineRepositoryImpl(gh<_i29.AirlineApi>()));
  gh.factory<_i32.AirlineUsecase>(
      () => _i32.AirlineUsecase(gh<_i30.AirlineRepository>()));
  gh.factory<_i33.AirportApi>(() => _i33.AirportApi(gh<_i11.Dio>()));
  gh.factory<_i34.AirportRepository>(
      () => _i35.AirportRepositoryImpl(gh<_i33.AirportApi>()));
  gh.factory<_i36.AirportUsecase>(
      () => _i36.AirportUsecase(gh<_i34.AirportRepository>()));
  gh.factory<_i37.AuthApi>(() => _i37.AuthApi(gh<_i11.Dio>()));
  gh.factory<_i38.CustomerBloc>(
      () => _i38.CustomerBloc(gh<_i8.CustomerUseCase>()));
  gh.factory<_i39.ListFlightBloc>(() => _i39.ListFlightBloc(
        gh<_i17.FlightsUsecase>(),
        gh<_i21.PlaceService>(),
        gh<_i32.AirlineUsecase>(),
      ));
  gh.factory<_i40.ListTicketBloc>(
      () => _i40.ListTicketBloc(gh<_i28.TicketUsecase>()));
  gh.factoryParam<_i41.SearchMobileBloc, _i42.SearchEnum?, dynamic>((
    searchType,
    _,
  ) =>
      _i41.SearchMobileBloc(
        searchType,
        gh<_i36.AirportUsecase>(),
        gh<_i17.FlightsUsecase>(),
      ));
  gh.factory<_i43.TicMobileBloc>(
      () => _i43.TicMobileBloc(gh<_i28.TicketUsecase>()));
  gh.factory<_i44.UserRepository>(
      () => _i45.UserRepositoryImpl(gh<_i37.AuthApi>()));
  gh.factory<_i46.UserUseCase>(
      () => _i46.UserUseCase(gh<_i44.UserRepository>()));
  gh.factory<_i47.AccountSettingBloc>(
      () => _i47.AccountSettingBloc(gh<_i46.UserUseCase>()));
  gh.factoryParam<_i48.AddEditAirportBloc, String, dynamic>((
    airportId,
    _,
  ) =>
      _i48.AddEditAirportBloc(
        airportId,
        gh<_i36.AirportUsecase>(),
        gh<_i4.CloundinaryService>(),
        gh<_i18.ImagePicService>(),
        gh<_i21.PlaceService>(),
      ));
  gh.factoryParam<_i49.AddEditFlightBloc, String, dynamic>((
    flightId,
    _,
  ) =>
      _i49.AddEditFlightBloc(
        flightId,
        gh<_i17.FlightsUsecase>(),
        gh<_i36.AirportUsecase>(),
        gh<_i32.AirlineUsecase>(),
      ));
  gh.factory<_i50.AirportBloc>(() => _i50.AirportBloc(
        gh<_i36.AirportUsecase>(),
        gh<_i17.FlightsUsecase>(),
      ));
  gh.factory<_i51.AirportMobileBloc>(
      () => _i51.AirportMobileBloc(gh<_i36.AirportUsecase>()));
  gh.factory<_i52.AuthBloc>(() => _i52.AuthBloc(gh<_i44.UserRepository>()));
  gh.factory<_i53.AuthenticationBloc>(
      () => _i53.AuthenticationBloc(gh<_i46.UserUseCase>()));
  gh.factory<_i54.GeneralSettingBloc>(
      () => _i54.GeneralSettingBloc(gh<_i46.UserUseCase>()));
  return getIt;
}

class _$DataSourceModule extends _i55.DataSourceModule {}
