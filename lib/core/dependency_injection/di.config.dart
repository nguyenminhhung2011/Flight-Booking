// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasource/remote/airline/airline_api.dart' as _i38;
import '../../data/datasource/remote/airport/airport_api.dart' as _i42;
import '../../data/datasource/remote/auth/auth_api.dart' as _i46;
import '../../data/datasource/remote/flight/flight_api.dart' as _i14;
import '../../data/datasource/remote/payment/payment_api.dart' as _i20;
import '../../data/datasource/remote/ticket/ticket_api.dart' as _i28;
import '../../data/datasource/remote/ticket_information/ticket_information_api.dart'
    as _i29;
import '../../data/repositories/airline_repository_impl.dart' as _i40;
import '../../data/repositories/airport_repository_impl.dart' as _i44;
import '../../data/repositories/customer_repository_impl.dart' as _i9;
import '../../data/repositories/flight_repository_impl.dart' as _i17;
import '../../data/repositories/ticket_information_repository_impl.dart'
    as _i31;
import '../../data/repositories/ticket_repository_impl.dart' as _i34;
import '../../data/repositories/user_repository_impl.dart' as _i56;
import '../../domain/entities/seat_selected/seat_selected.dart' as _i5;
import '../../domain/repositories/airline_repository.dart' as _i39;
import '../../domain/repositories/airport_repository.dart' as _i43;
import '../../domain/repositories/customer_repository.dart' as _i8;
import '../../domain/repositories/flight_repository.dart' as _i16;
import '../../domain/repositories/ticket_information_repository.dart' as _i30;
import '../../domain/repositories/ticket_repository.dart' as _i33;
import '../../domain/repositories/user_repository.dart' as _i55;
import '../../domain/usecase/airline_usecase.dart' as _i41;
import '../../domain/usecase/airport_usecase.dart' as _i45;
import '../../domain/usecase/customer_usecase.dart' as _i10;
import '../../domain/usecase/flight_usecase.dart' as _i18;
import '../../domain/usecase/payment_usecase.dart' as _i23;
import '../../domain/usecase/tic_information_usecase.dart' as _i32;
import '../../domain/usecase/ticket_usecase.dart' as _i35;
import '../../domain/usecase/user_usecase.dart' as _i57;
import '../../presentations/add_customer/bloc/add_customer_bloc.dart' as _i36;
import '../../presentations/add_edit_airport/bloc/add_edit_airport_bloc.dart'
    as _i59;
import '../../presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart'
    as _i60;
import '../../presentations/airport/bloc/airport_bloc.dart' as _i61;
import '../../presentations/customer/bloc/customer_bloc.dart' as _i47;
import '../../presentations/customer_detail/bloc/customer_detail_bloc.dart'
    as _i7;
import '../../presentations/dashboard/bloc/dashboard_bloc.dart' as _i11;
import '../../presentations/dialog_book_ticket/bloc/book_ticket_bloc.dart'
    as _i4;
import '../../presentations/flight_detail/bloc/flight_detail_bloc.dart' as _i48;
import '../../presentations/handle_config_airport/blocs/handle_config_airport_bloc.dart'
    as _i49;
import '../../presentations/list_flight/bloc/list_flight_bloc.dart' as _i50;
import '../../presentations/list_ticket/bloc/list_ticket_bloc.dart' as _i51;
import '../../presentations/login/bloc/authentication_bloc.dart' as _i64;
import '../../presentations/payment_detail/bloc/payment_detail_bloc.dart'
    as _i22;
import '../../presentations/payment_management/bloc/add_edit_payment_bloc/add_edit_payment_bloc.dart'
    as _i37;
import '../../presentations/payment_management/bloc/payment_bloc.dart' as _i21;
import '../../presentations/settings/bloc/accout/account_setting_bloc.dart'
    as _i58;
import '../../presentations/settings/bloc/general/general_setting_bloc.dart'
    as _i65;
import '../../presentations/settings/bloc/setting_bloc.dart' as _i27;
import '../../presentations_mobile/airport_detail_mobile/bloc/airport_detail_mobile_bloc.dart'
    as _i3;
import '../../presentations_mobile/auth/bloc/auth_bloc.dart' as _i63;
import '../../presentations_mobile/dashboard_mobile/bloc/dashboard_mobile_bloc.dart'
    as _i12;
import '../../presentations_mobile/flight_history_detail/bloc/flight_history_detail_bloc.dart'
    as _i15;
import '../../presentations_mobile/list_airport_mobile/bloc/airport_mobile_bloc.dart'
    as _i62;
import '../../presentations_mobile/save/bloc/save_bloc.dart' as _i25;
import '../../presentations_mobile/search_mobile/bloc/search_mobile_bloc.dart'
    as _i52;
import '../../presentations_mobile/select_scott_mobile/bloc/select_scott_bloc.dart'
    as _i26;
import '../../presentations_mobile/ticket_mobile/bloc/tic_mobile_bloc.dart'
    as _i54;
import '../components/enum/search_enum.dart' as _i53;
import '../services/cloundinary_service.dart' as _i6;
import '../services/image_pic_service.dart' as _i19;
import '../services/place/place_service.dart' as _i24;
import 'modules/data_source_module.dart' as _i66;

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
  gh.factoryParam<_i4.BTBloc, List<_i5.SeatSelected>, int>((
    seats,
    flightId,
  ) =>
      _i4.BTBloc(
        seats,
        flightId,
      ));
  gh.factory<_i6.CloundinaryService>(() => _i6.CloundinaryService());
  gh.factory<_i7.CustomerDetailBloc>(() => _i7.CustomerDetailBloc());
  gh.factory<_i8.CustomerRepository>(() => _i9.CustomerRepositoryImpl());
  gh.factory<_i10.CustomerUseCase>(
      () => _i10.CustomerUseCase(gh<_i8.CustomerRepository>()));
  gh.factory<_i11.DashboardBloc>(() => _i11.DashboardBloc());
  gh.factory<_i12.DashboardMobileBloc>(() => _i12.DashboardMobileBloc());
  gh.factory<_i13.Dio>(
    () => dataSourceModule.dioProd(),
    registerFor: {_prod},
  );
  gh.factory<_i14.FlightApi>(() => _i14.FlightApi(gh<_i13.Dio>()));
  gh.factoryParam<_i15.FlightHistoryDetailBloc, String, dynamic>((
    id,
    _,
  ) =>
      _i15.FlightHistoryDetailBloc(id));
  gh.factory<_i16.FlightRepository>(
      () => _i17.FlightRepositoryImpl(gh<_i14.FlightApi>()));
  gh.factory<_i18.FlightsUsecase>(
      () => _i18.FlightsUsecase(gh<_i16.FlightRepository>()));
  gh.factory<_i19.ImagePicService>(() => _i19.ImagePicService());
  gh.factory<_i20.PaymentApi>(() => _i20.PaymentApi(gh<_i13.Dio>()));
  gh.factory<_i21.PaymentBloc>(() => _i21.PaymentBloc());
  gh.factory<_i22.PaymentDetailBloc>(
      () => _i22.PaymentDetailBloc(gh<String>()));
  gh.factory<_i23.PaymentUseCase>(
      () => _i23.PaymentUseCase(gh<_i20.PaymentApi>()));
  gh.factory<_i24.PlaceService>(() => _i24.PlaceService());
  gh.factory<_i25.SaveBloc>(() => _i25.SaveBloc());
  gh.factory<_i26.SelectScottBloc>(() => _i26.SelectScottBloc());
  gh.factory<_i27.SettingBloc>(() => _i27.SettingBloc());
  gh.factory<_i28.TicketApi>(() => _i28.TicketApi(gh<_i13.Dio>()));
  gh.factory<_i29.TicketInformationApi>(
      () => _i29.TicketInformationApi(gh<_i13.Dio>()));
  gh.factory<_i30.TicketInformationRepository>(() =>
      _i31.TicketInformationRepositoryImpl(gh<_i29.TicketInformationApi>()));
  gh.factory<_i32.TicketInformationUsecase>(() =>
      _i32.TicketInformationUsecase(gh<_i30.TicketInformationRepository>()));
  gh.factory<_i33.TicketRepository>(
      () => _i34.TicketRepositoryImpl(gh<_i28.TicketApi>()));
  gh.factory<_i35.TicketUsecase>(
      () => _i35.TicketUsecase(gh<_i33.TicketRepository>()));
  gh.factoryParam<_i36.AddCustomerBloc, int, dynamic>((
    customerId,
    _,
  ) =>
      _i36.AddCustomerBloc(
        customerId,
        gh<_i10.CustomerUseCase>(),
      ));
  gh.factory<_i37.AddEditPaymentBloc>(
      () => _i37.AddEditPaymentBloc(gh<_i23.PaymentUseCase>()));
  gh.factory<_i38.AirlineApi>(() => _i38.AirlineApi(gh<_i13.Dio>()));
  gh.factory<_i39.AirlineRepository>(
      () => _i40.AirlineRepositoryImpl(gh<_i38.AirlineApi>()));
  gh.factory<_i41.AirlineUsecase>(
      () => _i41.AirlineUsecase(gh<_i39.AirlineRepository>()));
  gh.factory<_i42.AirportApi>(() => _i42.AirportApi(gh<_i13.Dio>()));
  gh.factory<_i43.AirportRepository>(
      () => _i44.AirportRepositoryImpl(gh<_i42.AirportApi>()));
  gh.factory<_i45.AirportUsecase>(
      () => _i45.AirportUsecase(gh<_i43.AirportRepository>()));
  gh.factory<_i46.AuthApi>(() => _i46.AuthApi(gh<_i13.Dio>()));
  gh.factory<_i47.CustomerBloc>(
      () => _i47.CustomerBloc(gh<_i10.CustomerUseCase>()));
  gh.factoryParam<_i48.FlightDetailBloc, int, dynamic>((
    flightId,
    _,
  ) =>
      _i48.FlightDetailBloc(
        flightId,
        gh<_i18.FlightsUsecase>(),
        gh<_i32.TicketInformationUsecase>(),
      ));
  gh.factoryParam<_i49.HandleConfigAirportBloc, int, dynamic>((
    airportId,
    _,
  ) =>
      _i49.HandleConfigAirportBloc(
        airportId,
        gh<_i45.AirportUsecase>(),
        gh<_i18.FlightsUsecase>(),
      ));
  gh.factory<_i50.ListFlightBloc>(() => _i50.ListFlightBloc(
        gh<_i18.FlightsUsecase>(),
        gh<_i24.PlaceService>(),
        gh<_i41.AirlineUsecase>(),
        gh<_i32.TicketInformationUsecase>(),
      ));
  gh.factory<_i51.ListTicketBloc>(
      () => _i51.ListTicketBloc(gh<_i35.TicketUsecase>()));
  gh.factoryParam<_i52.SearchMobileBloc, _i53.SearchEnum?, dynamic>((
    searchType,
    _,
  ) =>
      _i52.SearchMobileBloc(
        searchType,
        gh<_i45.AirportUsecase>(),
        gh<_i18.FlightsUsecase>(),
      ));
  gh.factory<_i54.TicMobileBloc>(
      () => _i54.TicMobileBloc(gh<_i35.TicketUsecase>()));
  gh.factory<_i55.UserRepository>(
      () => _i56.UserRepositoryImpl(gh<_i46.AuthApi>()));
  gh.factory<_i57.UserUseCase>(
      () => _i57.UserUseCase(gh<_i55.UserRepository>()));
  gh.factory<_i58.AccountSettingBloc>(
      () => _i58.AccountSettingBloc(gh<_i57.UserUseCase>()));
  gh.factoryParam<_i59.AddEditAirportBloc, String, dynamic>((
    airportId,
    _,
  ) =>
      _i59.AddEditAirportBloc(
        airportId,
        gh<_i45.AirportUsecase>(),
        gh<_i6.CloundinaryService>(),
        gh<_i19.ImagePicService>(),
        gh<_i24.PlaceService>(),
      ));
  gh.factoryParam<_i60.AddEditFlightBloc, String, dynamic>((
    flightId,
    _,
  ) =>
      _i60.AddEditFlightBloc(
        flightId,
        gh<_i18.FlightsUsecase>(),
        gh<_i45.AirportUsecase>(),
        gh<_i41.AirlineUsecase>(),
        gh<_i32.TicketInformationUsecase>(),
      ));
  gh.factory<_i61.AirportBloc>(() => _i61.AirportBloc(
        gh<_i45.AirportUsecase>(),
        gh<_i18.FlightsUsecase>(),
      ));
  gh.factory<_i62.AirportMobileBloc>(
      () => _i62.AirportMobileBloc(gh<_i45.AirportUsecase>()));
  gh.factory<_i63.AuthBloc>(() => _i63.AuthBloc(gh<_i55.UserRepository>()));
  gh.factory<_i64.AuthenticationBloc>(
      () => _i64.AuthenticationBloc(gh<_i57.UserUseCase>()));
  gh.factory<_i65.GeneralSettingBloc>(
      () => _i65.GeneralSettingBloc(gh<_i57.UserUseCase>()));
  return getIt;
}

class _$DataSourceModule extends _i66.DataSourceModule {}
