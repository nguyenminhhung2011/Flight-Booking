// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasource/remote/airline/airline_api.dart' as _i34;
import '../../data/datasource/remote/airport/airport_api.dart' as _i38;
import '../../data/datasource/remote/auth/auth_api.dart' as _i42;
import '../../data/datasource/remote/customer/customer_api.dart' as _i43;
import '../../data/datasource/remote/flight/flight_api.dart' as _i11;
import '../../data/datasource/remote/payment/payment_api.dart' as _i17;
import '../../data/datasource/remote/ticket/ticket_api.dart' as _i25;
import '../../data/datasource/remote/ticket_information/ticket_information_api.dart'
    as _i26;
import '../../data/repositories/airline_repository_impl.dart' as _i36;
import '../../data/repositories/airport_repository_impl.dart' as _i40;
import '../../data/repositories/customer_repository_impl.dart' as _i45;
import '../../data/repositories/flight_repository_impl.dart' as _i14;
import '../../data/repositories/ticket_information_repository_impl.dart'
    as _i28;
import '../../data/repositories/ticket_repository_impl.dart' as _i31;
import '../../data/repositories/user_repository_impl.dart' as _i55;
import '../../domain/entities/seat_selected/seat_selected.dart' as _i5;
import '../../domain/repositories/airline_repository.dart' as _i35;
import '../../domain/repositories/airport_repository.dart' as _i39;
import '../../domain/repositories/customer_repository.dart' as _i44;
import '../../domain/repositories/flight_repository.dart' as _i13;
import '../../domain/repositories/ticket_information_repository.dart' as _i27;
import '../../domain/repositories/ticket_repository.dart' as _i30;
import '../../domain/repositories/user_repository.dart' as _i54;
import '../../domain/usecase/airline_usecase.dart' as _i37;
import '../../domain/usecase/airport_usecase.dart' as _i41;
import '../../domain/usecase/customer_usecase.dart' as _i46;
import '../../domain/usecase/flight_usecase.dart' as _i15;
import '../../domain/usecase/payment_usecase.dart' as _i20;
import '../../domain/usecase/tic_information_usecase.dart' as _i29;
import '../../domain/usecase/ticket_usecase.dart' as _i32;
import '../../domain/usecase/user_usecase.dart' as _i56;
import '../../presentations/add_customer/bloc/add_customer_bloc.dart' as _i58;
import '../../presentations/add_edit_airport/bloc/add_edit_airport_bloc.dart'
    as _i59;
import '../../presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart'
    as _i60;
import '../../presentations/airport/bloc/airport_bloc.dart' as _i61;
import '../../presentations/customer/bloc/customer_bloc.dart' as _i65;
import '../../presentations/customer_detail/bloc/customer_detail_bloc.dart'
    as _i7;
import '../../presentations/dashboard/bloc/dashboard_bloc.dart' as _i8;
import '../../presentations/dialog_book_ticket/bloc/book_ticket_bloc.dart'
    as _i4;
import '../../presentations/flight_detail/bloc/flight_detail_bloc.dart' as _i47;
import '../../presentations/handle_config_airport/blocs/handle_config_airport_bloc.dart'
    as _i48;
import '../../presentations/list_flight/bloc/list_flight_bloc.dart' as _i49;
import '../../presentations/list_ticket/bloc/list_ticket_bloc.dart' as _i50;
import '../../presentations/login/bloc/authentication_bloc.dart' as _i64;
import '../../presentations/payment_detail/bloc/payment_detail_bloc.dart'
    as _i19;
import '../../presentations/payment_management/bloc/add_edit_payment_bloc/add_edit_payment_bloc.dart'
    as _i33;
import '../../presentations/payment_management/bloc/payment_bloc.dart' as _i18;
import '../../presentations/settings/bloc/accout/account_setting_bloc.dart'
    as _i57;
import '../../presentations/settings/bloc/general/general_setting_bloc.dart'
    as _i66;
import '../../presentations/settings/bloc/setting_bloc.dart' as _i24;
import '../../presentations_mobile/airport_detail_mobile/bloc/airport_detail_mobile_bloc.dart'
    as _i3;
import '../../presentations_mobile/auth/bloc/auth_bloc.dart' as _i63;
import '../../presentations_mobile/dashboard_mobile/bloc/dashboard_mobile_bloc.dart'
    as _i9;
import '../../presentations_mobile/flight_history_detail/bloc/flight_history_detail_bloc.dart'
    as _i12;
import '../../presentations_mobile/list_airport_mobile/bloc/airport_mobile_bloc.dart'
    as _i62;
import '../../presentations_mobile/save/bloc/save_bloc.dart' as _i22;
import '../../presentations_mobile/search_mobile/bloc/search_mobile_bloc.dart'
    as _i51;
import '../../presentations_mobile/select_scott_mobile/bloc/select_scott_bloc.dart'
    as _i23;
import '../../presentations_mobile/ticket_mobile/bloc/tic_mobile_bloc.dart'
    as _i53;
import '../components/enum/search_enum.dart' as _i52;
import '../services/cloundinary_service.dart' as _i6;
import '../services/image_pic_service.dart' as _i16;
import '../services/place/place_service.dart' as _i21;
import 'modules/data_source_module.dart' as _i67;

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
  gh.factory<_i8.DashboardBloc>(() => _i8.DashboardBloc());
  gh.factory<_i9.DashboardMobileBloc>(() => _i9.DashboardMobileBloc());
  gh.factory<_i10.Dio>(
    () => dataSourceModule.dioProd(),
    registerFor: {_prod},
  );
  gh.factory<_i11.FlightApi>(() => _i11.FlightApi(gh<_i10.Dio>()));
  gh.factoryParam<_i12.FlightHistoryDetailBloc, String, dynamic>((
    id,
    _,
  ) =>
      _i12.FlightHistoryDetailBloc(id));
  gh.factory<_i13.FlightRepository>(
      () => _i14.FlightRepositoryImpl(gh<_i11.FlightApi>()));
  gh.factory<_i15.FlightsUsecase>(
      () => _i15.FlightsUsecase(gh<_i13.FlightRepository>()));
  gh.factory<_i16.ImagePicService>(() => _i16.ImagePicService());
  gh.factory<_i17.PaymentApi>(() => _i17.PaymentApi(gh<_i10.Dio>()));
  gh.factory<_i18.PaymentBloc>(() => _i18.PaymentBloc());
  gh.factory<_i19.PaymentDetailBloc>(
      () => _i19.PaymentDetailBloc(gh<String>()));
  gh.factory<_i20.PaymentUseCase>(
      () => _i20.PaymentUseCase(gh<_i17.PaymentApi>()));
  gh.factory<_i21.PlaceService>(() => _i21.PlaceService());
  gh.factory<_i22.SaveBloc>(() => _i22.SaveBloc());
  gh.factory<_i23.SelectScottBloc>(() => _i23.SelectScottBloc());
  gh.factory<_i24.SettingBloc>(() => _i24.SettingBloc());
  gh.factory<_i25.TicketApi>(() => _i25.TicketApi(gh<_i10.Dio>()));
  gh.factory<_i26.TicketInformationApi>(
      () => _i26.TicketInformationApi(gh<_i10.Dio>()));
  gh.factory<_i27.TicketInformationRepository>(() =>
      _i28.TicketInformationRepositoryImpl(gh<_i26.TicketInformationApi>()));
  gh.factory<_i29.TicketInformationUsecase>(() =>
      _i29.TicketInformationUsecase(gh<_i27.TicketInformationRepository>()));
  gh.factory<_i30.TicketRepository>(
      () => _i31.TicketRepositoryImpl(gh<_i25.TicketApi>()));
  gh.factory<_i32.TicketUsecase>(
      () => _i32.TicketUsecase(gh<_i30.TicketRepository>()));
  gh.factory<_i33.AddEditPaymentBloc>(
      () => _i33.AddEditPaymentBloc(gh<_i20.PaymentUseCase>()));
  gh.factory<_i34.AirlineApi>(() => _i34.AirlineApi(gh<_i10.Dio>()));
  gh.factory<_i35.AirlineRepository>(
      () => _i36.AirlineRepositoryImpl(gh<_i34.AirlineApi>()));
  gh.factory<_i37.AirlineUsecase>(
      () => _i37.AirlineUsecase(gh<_i35.AirlineRepository>()));
  gh.factory<_i38.AirportApi>(() => _i38.AirportApi(gh<_i10.Dio>()));
  gh.factory<_i39.AirportRepository>(
      () => _i40.AirportRepositoryImpl(gh<_i38.AirportApi>()));
  gh.factory<_i41.AirportUsecase>(
      () => _i41.AirportUsecase(gh<_i39.AirportRepository>()));
  gh.factory<_i42.AuthApi>(() => _i42.AuthApi(gh<_i10.Dio>()));
  gh.factory<_i43.CustomerApi>(() => _i43.CustomerApi(gh<_i10.Dio>()));
  gh.factory<_i44.CustomerRepository>(
      () => _i45.CustomerRepositoryImpl(gh<_i43.CustomerApi>()));
  gh.factory<_i46.CustomerUseCase>(
      () => _i46.CustomerUseCase(gh<_i44.CustomerRepository>()));
  gh.factoryParam<_i47.FlightDetailBloc, int, dynamic>((
    flightId,
    _,
  ) =>
      _i47.FlightDetailBloc(
        flightId,
        gh<_i15.FlightsUsecase>(),
        gh<_i29.TicketInformationUsecase>(),
      ));
  gh.factoryParam<_i48.HandleConfigAirportBloc, int, dynamic>((
    airportId,
    _,
  ) =>
      _i48.HandleConfigAirportBloc(
        airportId,
        gh<_i41.AirportUsecase>(),
        gh<_i15.FlightsUsecase>(),
      ));
  gh.factory<_i49.ListFlightBloc>(() => _i49.ListFlightBloc(
        gh<_i15.FlightsUsecase>(),
        gh<_i21.PlaceService>(),
        gh<_i37.AirlineUsecase>(),
        gh<_i29.TicketInformationUsecase>(),
      ));
  gh.factory<_i50.ListTicketBloc>(
      () => _i50.ListTicketBloc(gh<_i32.TicketUsecase>()));
  gh.factoryParam<_i51.SearchMobileBloc, _i52.SearchEnum?, dynamic>((
    searchType,
    _,
  ) =>
      _i51.SearchMobileBloc(
        searchType,
        gh<_i41.AirportUsecase>(),
        gh<_i15.FlightsUsecase>(),
      ));
  gh.factory<_i53.TicMobileBloc>(
      () => _i53.TicMobileBloc(gh<_i32.TicketUsecase>()));
  gh.factory<_i54.UserRepository>(
      () => _i55.UserRepositoryImpl(gh<_i42.AuthApi>()));
  gh.factory<_i56.UserUseCase>(
      () => _i56.UserUseCase(gh<_i54.UserRepository>()));
  gh.factory<_i57.AccountSettingBloc>(
      () => _i57.AccountSettingBloc(gh<_i56.UserUseCase>()));
  gh.factoryParam<_i58.AddCustomerBloc, int, dynamic>((
    customerId,
    _,
  ) =>
      _i58.AddCustomerBloc(
        customerId,
        gh<_i46.CustomerUseCase>(),
      ));
  gh.factoryParam<_i59.AddEditAirportBloc, String, dynamic>((
    airportId,
    _,
  ) =>
      _i59.AddEditAirportBloc(
        airportId,
        gh<_i41.AirportUsecase>(),
        gh<_i6.CloundinaryService>(),
        gh<_i16.ImagePicService>(),
        gh<_i21.PlaceService>(),
      ));
  gh.factoryParam<_i60.AddEditFlightBloc, String, dynamic>((
    flightId,
    _,
  ) =>
      _i60.AddEditFlightBloc(
        flightId,
        gh<_i15.FlightsUsecase>(),
        gh<_i41.AirportUsecase>(),
        gh<_i37.AirlineUsecase>(),
        gh<_i29.TicketInformationUsecase>(),
      ));
  gh.factory<_i61.AirportBloc>(() => _i61.AirportBloc(
        gh<_i41.AirportUsecase>(),
        gh<_i15.FlightsUsecase>(),
      ));
  gh.factory<_i62.AirportMobileBloc>(
      () => _i62.AirportMobileBloc(gh<_i41.AirportUsecase>()));
  gh.factory<_i63.AuthBloc>(() => _i63.AuthBloc(gh<_i54.UserRepository>()));
  gh.factory<_i64.AuthenticationBloc>(
      () => _i64.AuthenticationBloc(gh<_i56.UserUseCase>()));
  gh.factory<_i65.CustomerBloc>(
      () => _i65.CustomerBloc(gh<_i46.CustomerUseCase>()));
  gh.factory<_i66.GeneralSettingBloc>(
      () => _i66.GeneralSettingBloc(gh<_i56.UserUseCase>()));
  return getIt;
}

class _$DataSourceModule extends _i67.DataSourceModule {}
