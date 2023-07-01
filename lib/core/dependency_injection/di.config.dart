// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasource/remote/airline/airline_api.dart' as _i30;
import '../../data/datasource/remote/airport/airport_api.dart' as _i34;
import '../../data/datasource/remote/auth/auth_api.dart' as _i38;
import '../../data/datasource/remote/customer/customer_api.dart' as _i39;
import '../../data/datasource/remote/flight/flight_api.dart' as _i7;
import '../../data/datasource/remote/overview_api.dart' as _i14;
import '../../data/datasource/remote/payment/payment_api.dart' as _i15;
import '../../data/datasource/remote/ticket/ticket_api.dart' as _i20;
import '../../data/datasource/remote/ticket_information/ticket_information_api.dart'
    as _i21;
import '../../data/datasource/remote/user/user_api.dart' as _i28;
import '../../data/repositories/airline_repository_impl.dart' as _i32;
import '../../data/repositories/airport_repository_impl.dart' as _i36;
import '../../data/repositories/customer_repository_impl.dart' as _i41;
import '../../data/repositories/flight_repository_impl.dart' as _i10;
import '../../data/repositories/ticket_information_repository_impl.dart'
    as _i23;
import '../../data/repositories/ticket_repository_impl.dart' as _i26;
import '../../data/repositories/user_repository_impl.dart' as _i59;
import '../../domain/entities/seat_selected/seat_selected.dart' as _i70;
import '../../domain/repositories/airline_repository.dart' as _i31;
import '../../domain/repositories/airport_repository.dart' as _i35;
import '../../domain/repositories/customer_repository.dart' as _i40;
import '../../domain/repositories/flight_repository.dart' as _i9;
import '../../domain/repositories/ticket_information_repository.dart' as _i22;
import '../../domain/repositories/ticket_repository.dart' as _i25;
import '../../domain/repositories/user_repository.dart' as _i58;
import '../../domain/usecase/airline_usecase.dart' as _i33;
import '../../domain/usecase/airport_usecase.dart' as _i37;
import '../../domain/usecase/customer_usecase.dart' as _i42;
import '../../domain/usecase/flight_usecase.dart' as _i11;
import '../../domain/usecase/payment_usecase.dart' as _i16;
import '../../domain/usecase/tic_information_usecase.dart' as _i24;
import '../../domain/usecase/ticket_usecase.dart' as _i27;
import '../../domain/usecase/user_usecase.dart' as _i60;
import '../../presentations/add_customer/bloc/add_customer_bloc.dart' as _i62;
import '../../presentations/add_edit_airport/bloc/add_edit_airport_bloc.dart'
    as _i63;
import '../../presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart'
    as _i64;
import '../../presentations/airport/bloc/airport_bloc.dart' as _i65;
import '../../presentations/customer/bloc/customer_bloc.dart' as _i71;
import '../../presentations/customer/bloc/detail/customer_detail_bloc.dart'
    as _i72;
import '../../presentations/dashboard/bloc/dashboard_bloc.dart' as _i43;
import '../../presentations/dialog_book_ticket/bloc/book_ticket_bloc.dart'
    as _i69;
import '../../presentations/flight_detail/bloc/flight_detail_bloc.dart' as _i44;
import '../../presentations/handle_config_airport/blocs/handle_config_airport_bloc.dart'
    as _i46;
import '../../presentations/list_flight/bloc/list_flight_bloc.dart' as _i47;
import '../../presentations/list_ticket/bloc/list_ticket_bloc.dart' as _i48;
import '../../presentations/login/bloc/authentication_bloc.dart' as _i68;
import '../../presentations/payment/blocs/payment_tab_bloc.dart' as _i51;
import '../../presentations/payment_detail/bloc/payment_detail_bloc.dart'
    as _i50;
import '../../presentations/payment_management/bloc/add_edit_payment_bloc/add_edit_payment_bloc.dart'
    as _i29;
import '../../presentations/payment_management/bloc/payment_bloc.dart' as _i49;
import '../../presentations/selected_customer/notifier/selected_customer_notidier.dart'
    as _i56;
import '../../presentations/settings/bloc/accout/account_setting_bloc.dart'
    as _i61;
import '../../presentations/settings/bloc/general/general_setting_bloc.dart'
    as _i73;
import '../../presentations/settings/bloc/setting_bloc.dart' as _i19;
import '../../presentations_mobile/airport_detail_mobile/bloc/airport_detail_mobile_bloc.dart'
    as _i3;
import '../../presentations_mobile/auth/bloc/auth_bloc.dart' as _i67;
import '../../presentations_mobile/dashboard_mobile/bloc/dashboard_mobile_bloc.dart'
    as _i5;
import '../../presentations_mobile/dialog_select_customer/notifier/select_customer_notifier.dart'
    as _i54;
import '../../presentations_mobile/flight_history_detail/bloc/flight_history_detail_bloc.dart'
    as _i8;
import '../../presentations_mobile/flight_mobile_detail/notifier/fmd_notifier.dart'
    as _i12;
import '../../presentations_mobile/list_airport_mobile/bloc/airport_mobile_bloc.dart'
    as _i66;
import '../../presentations_mobile/list_flight_mobile/bloc/flight_mobile_bloc.dart'
    as _i45;
import '../../presentations_mobile/save/bloc/save_bloc.dart' as _i18;
import '../../presentations_mobile/search_mobile/bloc/search_mobile_bloc.dart'
    as _i52;
import '../../presentations_mobile/select_scott_mobile/bloc/select_scott_bloc.dart'
    as _i55;
import '../../presentations_mobile/ticket_mobile/bloc/tic_mobile_bloc.dart'
    as _i57;
import '../components/enum/search_enum.dart' as _i53;
import '../services/cloundinary_service.dart' as _i4;
import '../services/image_pic_service.dart' as _i13;
import '../services/place/place_service.dart' as _i17;
import 'modules/data_source_module.dart' as _i74;

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
  gh.factory<_i5.DashboardMobileBloc>(() => _i5.DashboardMobileBloc());
  gh.factory<_i6.Dio>(
    () => dataSourceModule.dioProd(),
    registerFor: {_prod},
  );
  gh.factory<_i7.FlightApi>(() => _i7.FlightApi(gh<_i6.Dio>()));
  gh.factoryParam<_i8.FlightHistoryDetailBloc, String, dynamic>((
    id,
    _,
  ) =>
      _i8.FlightHistoryDetailBloc(id));
  gh.factory<_i9.FlightRepository>(
      () => _i10.FlightRepositoryImpl(gh<_i7.FlightApi>()));
  gh.factory<_i11.FlightsUsecase>(
      () => _i11.FlightsUsecase(gh<_i9.FlightRepository>()));
  gh.factoryParam<_i12.FmdNotifier, int, dynamic>((
    flightId,
    _,
  ) =>
      _i12.FmdNotifier(
        flightId,
        gh<_i11.FlightsUsecase>(),
      ));
  gh.factory<_i13.ImagePicService>(() => _i13.ImagePicService());
  gh.factory<_i14.OverviewApi>(() => _i14.OverviewApi(gh<_i6.Dio>()));
  gh.factory<_i15.PaymentApi>(() => _i15.PaymentApi(gh<_i6.Dio>()));
  gh.factory<_i16.PaymentUseCase>(
      () => _i16.PaymentUseCase(gh<_i15.PaymentApi>()));
  gh.factory<_i17.PlaceService>(() => _i17.PlaceService());
  gh.factory<_i18.SaveBloc>(() => _i18.SaveBloc());
  gh.factory<_i19.SettingBloc>(() => _i19.SettingBloc());
  gh.factory<_i20.TicketApi>(() => _i20.TicketApi(gh<_i6.Dio>()));
  gh.factory<_i21.TicketInformationApi>(
      () => _i21.TicketInformationApi(gh<_i6.Dio>()));
  gh.factory<_i22.TicketInformationRepository>(() =>
      _i23.TicketInformationRepositoryImpl(gh<_i21.TicketInformationApi>()));
  gh.factory<_i24.TicketInformationUsecase>(() =>
      _i24.TicketInformationUsecase(gh<_i22.TicketInformationRepository>()));
  gh.factory<_i25.TicketRepository>(
      () => _i26.TicketRepositoryImpl(gh<_i20.TicketApi>()));
  gh.factory<_i27.TicketUsecase>(
      () => _i27.TicketUsecase(gh<_i25.TicketRepository>()));
  gh.factory<_i28.UserApi>(() => _i28.UserApi(gh<_i6.Dio>()));
  gh.factory<_i29.AddEditPaymentBloc>(
      () => _i29.AddEditPaymentBloc(gh<_i16.PaymentUseCase>()));
  gh.factory<_i30.AirlineApi>(() => _i30.AirlineApi(gh<_i6.Dio>()));
  gh.factory<_i31.AirlineRepository>(
      () => _i32.AirlineRepositoryImpl(gh<_i30.AirlineApi>()));
  gh.factory<_i33.AirlineUsecase>(
      () => _i33.AirlineUsecase(gh<_i31.AirlineRepository>()));
  gh.factory<_i34.AirportApi>(() => _i34.AirportApi(gh<_i6.Dio>()));
  gh.factory<_i35.AirportRepository>(
      () => _i36.AirportRepositoryImpl(gh<_i34.AirportApi>()));
  gh.factory<_i37.AirportUsecase>(
      () => _i37.AirportUsecase(gh<_i35.AirportRepository>()));
  gh.factory<_i38.AuthApi>(() => _i38.AuthApi(gh<_i6.Dio>()));
  gh.factory<_i39.CustomerApi>(() => _i39.CustomerApi(gh<_i6.Dio>()));
  gh.factory<_i40.CustomerRepository>(
      () => _i41.CustomerRepositoryImpl(gh<_i39.CustomerApi>()));
  gh.factory<_i42.CustomerUseCase>(
      () => _i42.CustomerUseCase(gh<_i40.CustomerRepository>()));
  gh.factory<_i43.DashboardBloc>(
      () => _i43.DashboardBloc(gh<_i14.OverviewApi>()));
  gh.factoryParam<_i44.FlightDetailBloc, int, dynamic>((
    flightId,
    _,
  ) =>
      _i44.FlightDetailBloc(
        flightId,
        gh<_i11.FlightsUsecase>(),
        gh<_i27.TicketUsecase>(),
        gh<_i24.TicketInformationUsecase>(),
      ));
  gh.factory<_i45.FlightMobileBloc>(
      () => _i45.FlightMobileBloc(gh<_i11.FlightsUsecase>()));
  gh.factoryParam<_i46.HandleConfigAirportBloc, int, dynamic>((
    airportId,
    _,
  ) =>
      _i46.HandleConfigAirportBloc(
        airportId,
        gh<_i37.AirportUsecase>(),
        gh<_i11.FlightsUsecase>(),
      ));
  gh.factory<_i47.ListFlightBloc>(() => _i47.ListFlightBloc(
        gh<_i11.FlightsUsecase>(),
        gh<_i17.PlaceService>(),
        gh<_i33.AirlineUsecase>(),
        gh<_i24.TicketInformationUsecase>(),
      ));
  gh.factory<_i48.ListTicketBloc>(
      () => _i48.ListTicketBloc(gh<_i27.TicketUsecase>()));
  gh.factory<_i49.PaymentBloc>(
      () => _i49.PaymentBloc(gh<_i16.PaymentUseCase>()));
  gh.factoryParam<_i50.PaymentDetailBloc, dynamic, dynamic>((
    payment,
    _,
  ) =>
      _i50.PaymentDetailBloc(
        payment,
        gh<_i16.PaymentUseCase>(),
      ));
  gh.factoryParam<_i51.PaymentTabBloc, Map<String, dynamic>, dynamic>((
    ids,
    _,
  ) =>
      _i51.PaymentTabBloc(
        ids,
        gh<_i42.CustomerUseCase>(),
        gh<_i11.FlightsUsecase>(),
        gh<_i24.TicketInformationUsecase>(),
        gh<_i27.TicketUsecase>(),
        gh<_i16.PaymentUseCase>(),
      ));
  gh.factoryParam<_i52.SearchMobileBloc, _i53.SearchEnum?, dynamic>((
    searchType,
    _,
  ) =>
      _i52.SearchMobileBloc(
        searchType,
        gh<_i37.AirportUsecase>(),
        gh<_i11.FlightsUsecase>(),
      ));
  gh.factory<_i54.SelectCustomerNotifier>(
      () => _i54.SelectCustomerNotifier(gh<_i42.CustomerUseCase>()));
  gh.factoryParam<_i55.SelectScottBloc, Map<String, dynamic>, dynamic>((
    ids,
    _,
  ) =>
      _i55.SelectScottBloc(
        ids,
        gh<_i11.FlightsUsecase>(),
        gh<_i27.TicketUsecase>(),
        gh<_i24.TicketInformationUsecase>(),
      ));
  gh.factory<_i56.SelectedCustomerNotifier>(
      () => _i56.SelectedCustomerNotifier(gh<_i42.CustomerUseCase>()));
  gh.factory<_i57.TicMobileBloc>(
      () => _i57.TicMobileBloc(gh<_i27.TicketUsecase>()));
  gh.factory<_i58.UserRepository>(
      () => _i59.UserRepositoryImpl(gh<_i38.AuthApi>()));
  gh.factory<_i60.UserUseCase>(() => _i60.UserUseCase(
        gh<_i28.UserApi>(),
        gh<_i58.UserRepository>(),
      ));
  gh.factory<_i61.AccountSettingBloc>(
      () => _i61.AccountSettingBloc(gh<_i60.UserUseCase>()));
  gh.factoryParam<_i62.AddCustomerBloc, int, dynamic>((
    customerId,
    _,
  ) =>
      _i62.AddCustomerBloc(
        customerId,
        gh<_i42.CustomerUseCase>(),
      ));
  gh.factoryParam<_i63.AddEditAirportBloc, String, dynamic>((
    airportId,
    _,
  ) =>
      _i63.AddEditAirportBloc(
        airportId,
        gh<_i37.AirportUsecase>(),
        gh<_i4.CloundinaryService>(),
        gh<_i13.ImagePicService>(),
        gh<_i17.PlaceService>(),
      ));
  gh.factoryParam<_i64.AddEditFlightBloc, String, dynamic>((
    flightId,
    _,
  ) =>
      _i64.AddEditFlightBloc(
        flightId,
        gh<_i11.FlightsUsecase>(),
        gh<_i37.AirportUsecase>(),
        gh<_i33.AirlineUsecase>(),
        gh<_i24.TicketInformationUsecase>(),
      ));
  gh.factory<_i65.AirportBloc>(() => _i65.AirportBloc(
        gh<_i37.AirportUsecase>(),
        gh<_i11.FlightsUsecase>(),
      ));
  gh.factory<_i66.AirportMobileBloc>(
      () => _i66.AirportMobileBloc(gh<_i37.AirportUsecase>()));
  gh.factory<_i67.AuthBloc>(() => _i67.AuthBloc(gh<_i58.UserRepository>()));
  gh.factory<_i68.AuthenticationBloc>(
      () => _i68.AuthenticationBloc(gh<_i60.UserUseCase>()));
  gh.factoryParam<_i69.BTBloc, List<_i70.SeatSelected>, int>((
    seats,
    flightId,
  ) =>
      _i69.BTBloc(
        seats,
        flightId,
        gh<_i42.CustomerUseCase>(),
        gh<_i24.TicketInformationUsecase>(),
        gh<_i11.FlightsUsecase>(),
        gh<_i27.TicketUsecase>(),
      ));
  gh.factory<_i71.CustomerBloc>(() => _i71.CustomerBloc(
        gh<_i42.CustomerUseCase>(),
        gh<_i16.PaymentUseCase>(),
      ));
  gh.factoryParam<_i72.CustomerDetailBloc, int, dynamic>((
    customerId,
    _,
  ) =>
      _i72.CustomerDetailBloc(
        customerId,
        gh<_i42.CustomerUseCase>(),
        gh<_i16.PaymentUseCase>(),
        gh<_i11.FlightsUsecase>(),
        gh<_i24.TicketInformationUsecase>(),
      ));
  gh.factory<_i73.GeneralSettingBloc>(
      () => _i73.GeneralSettingBloc(gh<_i60.UserUseCase>()));
  return getIt;
}

class _$DataSourceModule extends _i74.DataSourceModule {}
