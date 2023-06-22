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

import '../../data/datasource/remote/airline/airline_api.dart' as _i35;
import '../../data/datasource/remote/airport/airport_api.dart' as _i39;
import '../../data/datasource/remote/auth/auth_api.dart' as _i43;
import '../../data/datasource/remote/flight/flight_api.dart' as _i12;
import '../../data/datasource/remote/payment/payment_api.dart' as _i18;
import '../../data/datasource/remote/ticket/ticket_api.dart' as _i26;
import '../../data/datasource/remote/ticket_information/ticket_information_api.dart'
    as _i27;
import '../../data/repositories/airline_repository_impl.dart' as _i37;
import '../../data/repositories/airport_repository_impl.dart' as _i41;
import '../../data/repositories/customer_repository_impl.dart' as _i7;
import '../../data/repositories/flight_repository_impl.dart' as _i15;
import '../../data/repositories/ticket_information_repository_impl.dart'
    as _i29;
import '../../data/repositories/ticket_repository_impl.dart' as _i32;
import '../../data/repositories/user_repository_impl.dart' as _i53;
import '../../domain/repositories/airline_repository.dart' as _i36;
import '../../domain/repositories/airport_repository.dart' as _i40;
import '../../domain/repositories/customer_repository.dart' as _i6;
import '../../domain/repositories/flight_repository.dart' as _i14;
import '../../domain/repositories/ticket_information_repository.dart' as _i28;
import '../../domain/repositories/ticket_repository.dart' as _i31;
import '../../domain/repositories/user_repository.dart' as _i52;
import '../../domain/usecase/airline_usecase.dart' as _i38;
import '../../domain/usecase/airport_usecase.dart' as _i42;
import '../../domain/usecase/customer_usecase.dart' as _i8;
import '../../domain/usecase/flight_usecase.dart' as _i16;
import '../../domain/usecase/payment_usecase.dart' as _i21;
import '../../domain/usecase/tic_information_usecase.dart' as _i30;
import '../../domain/usecase/ticket_usecase.dart' as _i33;
import '../../domain/usecase/user_usecase.dart' as _i54;
import '../../presentations/add_edit_airport/bloc/add_edit_airport_bloc.dart'
    as _i56;
import '../../presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart'
    as _i57;
import '../../presentations/airport/bloc/airport_bloc.dart' as _i58;
import '../../presentations/customer/bloc/customer_bloc.dart' as _i44;
import '../../presentations/customer_detail/bloc/customer_detail_bloc.dart'
    as _i5;
import '../../presentations/dashboard/bloc/dashboard_bloc.dart' as _i9;
import '../../presentations/flight_detail/bloc/flight_detail_bloc.dart' as _i45;
import '../../presentations/handle_config_airport/blocs/handle_config_airport_bloc.dart'
    as _i46;
import '../../presentations/list_flight/bloc/list_flight_bloc.dart' as _i47;
import '../../presentations/list_ticket/bloc/list_ticket_bloc.dart' as _i48;
import '../../presentations/login/bloc/authentication_bloc.dart' as _i61;
import '../../presentations/payment_detail/bloc/payment_detail_bloc.dart'
    as _i20;
import '../../presentations/payment_management/bloc/add_edit_payment_bloc/add_edit_payment_bloc.dart'
    as _i34;
import '../../presentations/payment_management/bloc/payment_bloc.dart' as _i19;
import '../../presentations/settings/bloc/accout/account_setting_bloc.dart'
    as _i55;
import '../../presentations/settings/bloc/general/general_setting_bloc.dart'
    as _i62;
import '../../presentations/settings/bloc/setting_bloc.dart' as _i25;
import '../../presentations_mobile/airport_detail_mobile/bloc/airport_detail_mobile_bloc.dart'
    as _i3;
import '../../presentations_mobile/auth/bloc/auth_bloc.dart' as _i60;
import '../../presentations_mobile/dashboard_mobile/bloc/dashboard_mobile_bloc.dart'
    as _i10;
import '../../presentations_mobile/flight_history_detail/bloc/flight_history_detail_bloc.dart'
    as _i13;
import '../../presentations_mobile/list_airport_mobile/bloc/airport_mobile_bloc.dart'
    as _i59;
import '../../presentations_mobile/save/bloc/save_bloc.dart' as _i23;
import '../../presentations_mobile/search_mobile/bloc/search_mobile_bloc.dart'
    as _i49;
import '../../presentations_mobile/select_scott_mobile/bloc/select_scott_bloc.dart'
    as _i24;
import '../../presentations_mobile/ticket_mobile/bloc/tic_mobile_bloc.dart'
    as _i51;
import '../components/enum/search_enum.dart' as _i50;
import '../services/cloundinary_service.dart' as _i4;
import '../services/image_pic_service.dart' as _i17;
import '../services/place/place_service.dart' as _i22;
import 'modules/data_source_module.dart' as _i63;

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
  gh.factoryParam<_i13.FlightHistoryDetailBloc, String, dynamic>((
    id,
    _,
  ) =>
      _i13.FlightHistoryDetailBloc(id));
  gh.factory<_i14.FlightRepository>(
      () => _i15.FlightRepositoryImpl(gh<_i12.FlightApi>()));
  gh.factory<_i16.FlightsUsecase>(
      () => _i16.FlightsUsecase(gh<_i14.FlightRepository>()));
  gh.factory<_i17.ImagePicService>(() => _i17.ImagePicService());
  gh.factory<_i18.PaymentApi>(() => _i18.PaymentApi(gh<_i11.Dio>()));
  gh.factory<_i19.PaymentBloc>(() => _i19.PaymentBloc());
  gh.factory<_i20.PaymentDetailBloc>(
      () => _i20.PaymentDetailBloc(gh<String>()));
  gh.factory<_i21.PaymentUseCase>(
      () => _i21.PaymentUseCase(gh<_i18.PaymentApi>()));
  gh.factory<_i22.PlaceService>(() => _i22.PlaceService());
  gh.factory<_i23.SaveBloc>(() => _i23.SaveBloc());
  gh.factory<_i24.SelectScottBloc>(() => _i24.SelectScottBloc());
  gh.factory<_i25.SettingBloc>(() => _i25.SettingBloc());
  gh.factory<_i26.TicketApi>(() => _i26.TicketApi(gh<_i11.Dio>()));
  gh.factory<_i27.TicketInformationApi>(
      () => _i27.TicketInformationApi(gh<_i11.Dio>()));
  gh.factory<_i28.TicketInformationRepository>(() =>
      _i29.TicketInformationRepositoryImpl(gh<_i27.TicketInformationApi>()));
  gh.factory<_i30.TicketInformationUsecase>(() =>
      _i30.TicketInformationUsecase(gh<_i28.TicketInformationRepository>()));
  gh.factory<_i31.TicketRepository>(
      () => _i32.TicketRepositoryImpl(gh<_i26.TicketApi>()));
  gh.factory<_i33.TicketUsecase>(
      () => _i33.TicketUsecase(gh<_i31.TicketRepository>()));
  gh.factory<_i34.AddEditPaymentBloc>(
      () => _i34.AddEditPaymentBloc(gh<_i21.PaymentUseCase>()));
  gh.factory<_i35.AirlineApi>(() => _i35.AirlineApi(gh<_i11.Dio>()));
  gh.factory<_i36.AirlineRepository>(
      () => _i37.AirlineRepositoryImpl(gh<_i35.AirlineApi>()));
  gh.factory<_i38.AirlineUsecase>(
      () => _i38.AirlineUsecase(gh<_i36.AirlineRepository>()));
  gh.factory<_i39.AirportApi>(() => _i39.AirportApi(gh<_i11.Dio>()));
  gh.factory<_i40.AirportRepository>(
      () => _i41.AirportRepositoryImpl(gh<_i39.AirportApi>()));
  gh.factory<_i42.AirportUsecase>(
      () => _i42.AirportUsecase(gh<_i40.AirportRepository>()));
  gh.factory<_i43.AuthApi>(() => _i43.AuthApi(gh<_i11.Dio>()));
  gh.factory<_i44.CustomerBloc>(
      () => _i44.CustomerBloc(gh<_i8.CustomerUseCase>()));
  gh.factoryParam<_i45.FlightDetailBloc, int, dynamic>((
    flightId,
    _,
  ) =>
      _i45.FlightDetailBloc(
        flightId,
        gh<_i16.FlightsUsecase>(),
        gh<_i30.TicketInformationUsecase>(),
      ));
  gh.factoryParam<_i46.HandleConfigAirportBloc, int, dynamic>((
    airportId,
    _,
  ) =>
      _i46.HandleConfigAirportBloc(
        airportId,
        gh<_i42.AirportUsecase>(),
        gh<_i16.FlightsUsecase>(),
      ));
  gh.factory<_i47.ListFlightBloc>(() => _i47.ListFlightBloc(
        gh<_i16.FlightsUsecase>(),
        gh<_i22.PlaceService>(),
        gh<_i38.AirlineUsecase>(),
      ));
  gh.factory<_i48.ListTicketBloc>(
      () => _i48.ListTicketBloc(gh<_i33.TicketUsecase>()));
  gh.factoryParam<_i49.SearchMobileBloc, _i50.SearchEnum?, dynamic>((
    searchType,
    _,
  ) =>
      _i49.SearchMobileBloc(
        searchType,
        gh<_i42.AirportUsecase>(),
        gh<_i16.FlightsUsecase>(),
      ));
  gh.factory<_i51.TicMobileBloc>(
      () => _i51.TicMobileBloc(gh<_i33.TicketUsecase>()));
  gh.factory<_i52.UserRepository>(
      () => _i53.UserRepositoryImpl(gh<_i43.AuthApi>()));
  gh.factory<_i54.UserUseCase>(
      () => _i54.UserUseCase(gh<_i52.UserRepository>()));
  gh.factory<_i55.AccountSettingBloc>(
      () => _i55.AccountSettingBloc(gh<_i54.UserUseCase>()));
  gh.factoryParam<_i56.AddEditAirportBloc, String, dynamic>((
    airportId,
    _,
  ) =>
      _i56.AddEditAirportBloc(
        airportId,
        gh<_i42.AirportUsecase>(),
        gh<_i4.CloundinaryService>(),
        gh<_i17.ImagePicService>(),
        gh<_i22.PlaceService>(),
      ));
  gh.factoryParam<_i57.AddEditFlightBloc, String, dynamic>((
    flightId,
    _,
  ) =>
      _i57.AddEditFlightBloc(
        flightId,
        gh<_i16.FlightsUsecase>(),
        gh<_i42.AirportUsecase>(),
        gh<_i38.AirlineUsecase>(),
      ));
  gh.factory<_i58.AirportBloc>(() => _i58.AirportBloc(
        gh<_i42.AirportUsecase>(),
        gh<_i16.FlightsUsecase>(),
      ));
  gh.factory<_i59.AirportMobileBloc>(
      () => _i59.AirportMobileBloc(gh<_i42.AirportUsecase>()));
  gh.factory<_i60.AuthBloc>(() => _i60.AuthBloc(gh<_i52.UserRepository>()));
  gh.factory<_i61.AuthenticationBloc>(
      () => _i61.AuthenticationBloc(gh<_i54.UserUseCase>()));
  gh.factory<_i62.GeneralSettingBloc>(
      () => _i62.GeneralSettingBloc(gh<_i54.UserUseCase>()));
  return getIt;
}

class _$DataSourceModule extends _i63.DataSourceModule {}
