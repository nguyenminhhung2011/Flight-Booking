// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasource/remote/airline/airline_api.dart' as _i33;
import '../../data/datasource/remote/airport/airport_api.dart' as _i37;
import '../../data/datasource/remote/auth/auth_api.dart' as _i41;
import '../../data/datasource/remote/customer/customer_api.dart' as _i42;
import '../../data/datasource/remote/flight/flight_api.dart' as _i9;
import '../../data/datasource/remote/payment/payment_api.dart' as _i15;
import '../../data/datasource/remote/ticket/ticket_api.dart' as _i24;
import '../../data/datasource/remote/ticket_information/ticket_information_api.dart'
    as _i25;
import '../../data/repositories/airline_repository_impl.dart' as _i35;
import '../../data/repositories/airport_repository_impl.dart' as _i39;
import '../../data/repositories/customer_repository_impl.dart' as _i44;
import '../../data/repositories/flight_repository_impl.dart' as _i12;
import '../../data/repositories/ticket_information_repository_impl.dart'
    as _i27;
import '../../data/repositories/ticket_repository_impl.dart' as _i30;
import '../../data/repositories/user_repository_impl.dart' as _i56;
import '../../domain/entities/seat_selected/seat_selected.dart' as _i67;
import '../../domain/entities/ticket/ticket.dart' as _i18;
import '../../domain/repositories/airline_repository.dart' as _i34;
import '../../domain/repositories/airport_repository.dart' as _i38;
import '../../domain/repositories/customer_repository.dart' as _i43;
import '../../domain/repositories/flight_repository.dart' as _i11;
import '../../domain/repositories/ticket_information_repository.dart' as _i26;
import '../../domain/repositories/ticket_repository.dart' as _i29;
import '../../domain/repositories/user_repository.dart' as _i55;
import '../../domain/usecase/airline_usecase.dart' as _i36;
import '../../domain/usecase/airport_usecase.dart' as _i40;
import '../../domain/usecase/customer_usecase.dart' as _i45;
import '../../domain/usecase/flight_usecase.dart' as _i13;
import '../../domain/usecase/payment_usecase.dart' as _i19;
import '../../domain/usecase/tic_information_usecase.dart' as _i28;
import '../../domain/usecase/ticket_usecase.dart' as _i31;
import '../../domain/usecase/user_usecase.dart' as _i57;
import '../../presentations/add_customer/bloc/add_customer_bloc.dart' as _i59;
import '../../presentations/add_edit_airport/bloc/add_edit_airport_bloc.dart'
    as _i60;
import '../../presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart'
    as _i61;
import '../../presentations/airport/bloc/airport_bloc.dart' as _i62;
import '../../presentations/customer/bloc/customer_bloc.dart' as _i68;
import '../../presentations/customer_detail/bloc/customer_detail_bloc.dart'
    as _i5;
import '../../presentations/dashboard/bloc/dashboard_bloc.dart' as _i6;
import '../../presentations/dialog_book_ticket/bloc/book_ticket_bloc.dart'
    as _i66;
import '../../presentations/flight_detail/bloc/flight_detail_bloc.dart' as _i46;
import '../../presentations/handle_config_airport/blocs/handle_config_airport_bloc.dart'
    as _i47;
import '../../presentations/list_flight/bloc/list_flight_bloc.dart' as _i48;
import '../../presentations/list_ticket/bloc/list_ticket_bloc.dart' as _i49;
import '../../presentations/login/bloc/authentication_bloc.dart' as _i65;
import '../../presentations/payment/bloc/payment_tab_bloc.dart' as _i17;
import '../../presentations/payment_detail/bloc/payment_detail_bloc.dart'
    as _i16;
import '../../presentations/payment_management/bloc/add_edit_payment_bloc/add_edit_payment_bloc.dart'
    as _i32;
import '../../presentations/payment_management/bloc/payment_bloc.dart' as _i50;
import '../../presentations/selected_customer/notifier/selected_customer_notidier.dart'
    as _i53;
import '../../presentations/settings/bloc/accout/account_setting_bloc.dart'
    as _i58;
import '../../presentations/settings/bloc/general/general_setting_bloc.dart'
    as _i69;
import '../../presentations/settings/bloc/setting_bloc.dart' as _i23;
import '../../presentations_mobile/airport_detail_mobile/bloc/airport_detail_mobile_bloc.dart'
    as _i3;
import '../../presentations_mobile/auth/bloc/auth_bloc.dart' as _i64;
import '../../presentations_mobile/dashboard_mobile/bloc/dashboard_mobile_bloc.dart'
    as _i7;
import '../../presentations_mobile/flight_history_detail/bloc/flight_history_detail_bloc.dart'
    as _i10;
import '../../presentations_mobile/list_airport_mobile/bloc/airport_mobile_bloc.dart'
    as _i63;
import '../../presentations_mobile/save/bloc/save_bloc.dart' as _i21;
import '../../presentations_mobile/search_mobile/bloc/search_mobile_bloc.dart'
    as _i51;
import '../../presentations_mobile/select_scott_mobile/bloc/select_scott_bloc.dart'
    as _i22;
import '../../presentations_mobile/ticket_mobile/bloc/tic_mobile_bloc.dart'
    as _i54;
import '../components/enum/search_enum.dart' as _i52;
import '../services/cloundinary_service.dart' as _i4;
import '../services/image_pic_service.dart' as _i14;
import '../services/place/place_service.dart' as _i20;
import 'modules/data_source_module.dart' as _i70;

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
  gh.factory<_i6.DashboardBloc>(() => _i6.DashboardBloc());
  gh.factory<_i7.DashboardMobileBloc>(() => _i7.DashboardMobileBloc());
  gh.factory<_i8.Dio>(
    () => dataSourceModule.dioProd(),
    registerFor: {_prod},
  );
  gh.factory<_i9.FlightApi>(() => _i9.FlightApi(gh<_i8.Dio>()));
  gh.factoryParam<_i10.FlightHistoryDetailBloc, String, dynamic>((
    id,
    _,
  ) =>
      _i10.FlightHistoryDetailBloc(id));
  gh.factory<_i11.FlightRepository>(
      () => _i12.FlightRepositoryImpl(gh<_i9.FlightApi>()));
  gh.factory<_i13.FlightsUsecase>(
      () => _i13.FlightsUsecase(gh<_i11.FlightRepository>()));
  gh.factory<_i14.ImagePicService>(() => _i14.ImagePicService());
  gh.factory<_i15.PaymentApi>(() => _i15.PaymentApi(gh<_i8.Dio>()));
  gh.factory<_i16.PaymentDetailBloc>(
      () => _i16.PaymentDetailBloc(gh<String>()));
  gh.factoryParam<_i17.PaymentTabBloc, List<_i18.Ticket>, Map<String, int>>((
    tics,
    ids,
  ) =>
      _i17.PaymentTabBloc(
        tics,
        ids,
      ));
  gh.factory<_i19.PaymentUseCase>(
      () => _i19.PaymentUseCase(gh<_i15.PaymentApi>()));
  gh.factory<_i20.PlaceService>(() => _i20.PlaceService());
  gh.factory<_i21.SaveBloc>(() => _i21.SaveBloc());
  gh.factory<_i22.SelectScottBloc>(() => _i22.SelectScottBloc());
  gh.factory<_i23.SettingBloc>(() => _i23.SettingBloc());
  gh.factory<_i24.TicketApi>(() => _i24.TicketApi(gh<_i8.Dio>()));
  gh.factory<_i25.TicketInformationApi>(
      () => _i25.TicketInformationApi(gh<_i8.Dio>()));
  gh.factory<_i26.TicketInformationRepository>(() =>
      _i27.TicketInformationRepositoryImpl(gh<_i25.TicketInformationApi>()));
  gh.factory<_i28.TicketInformationUsecase>(() =>
      _i28.TicketInformationUsecase(gh<_i26.TicketInformationRepository>()));
  gh.factory<_i29.TicketRepository>(
      () => _i30.TicketRepositoryImpl(gh<_i24.TicketApi>()));
  gh.factory<_i31.TicketUsecase>(
      () => _i31.TicketUsecase(gh<_i29.TicketRepository>()));
  gh.factory<_i32.AddEditPaymentBloc>(
      () => _i32.AddEditPaymentBloc(gh<_i19.PaymentUseCase>()));
  gh.factory<_i33.AirlineApi>(() => _i33.AirlineApi(gh<_i8.Dio>()));
  gh.factory<_i34.AirlineRepository>(
      () => _i35.AirlineRepositoryImpl(gh<_i33.AirlineApi>()));
  gh.factory<_i36.AirlineUsecase>(
      () => _i36.AirlineUsecase(gh<_i34.AirlineRepository>()));
  gh.factory<_i37.AirportApi>(() => _i37.AirportApi(gh<_i8.Dio>()));
  gh.factory<_i38.AirportRepository>(
      () => _i39.AirportRepositoryImpl(gh<_i37.AirportApi>()));
  gh.factory<_i40.AirportUsecase>(
      () => _i40.AirportUsecase(gh<_i38.AirportRepository>()));
  gh.factory<_i41.AuthApi>(() => _i41.AuthApi(gh<_i8.Dio>()));
  gh.factory<_i42.CustomerApi>(() => _i42.CustomerApi(gh<_i8.Dio>()));
  gh.factory<_i43.CustomerRepository>(
      () => _i44.CustomerRepositoryImpl(gh<_i42.CustomerApi>()));
  gh.factory<_i45.CustomerUseCase>(
      () => _i45.CustomerUseCase(gh<_i43.CustomerRepository>()));
  gh.factoryParam<_i46.FlightDetailBloc, int, dynamic>((
    flightId,
    _,
  ) =>
      _i46.FlightDetailBloc(
        flightId,
        gh<_i13.FlightsUsecase>(),
        gh<_i28.TicketInformationUsecase>(),
      ));
  gh.factoryParam<_i47.HandleConfigAirportBloc, int, dynamic>((
    airportId,
    _,
  ) =>
      _i47.HandleConfigAirportBloc(
        airportId,
        gh<_i40.AirportUsecase>(),
        gh<_i13.FlightsUsecase>(),
      ));
  gh.factory<_i48.ListFlightBloc>(() => _i48.ListFlightBloc(
        gh<_i13.FlightsUsecase>(),
        gh<_i20.PlaceService>(),
        gh<_i36.AirlineUsecase>(),
        gh<_i28.TicketInformationUsecase>(),
      ));
  gh.factory<_i49.ListTicketBloc>(
      () => _i49.ListTicketBloc(gh<_i31.TicketUsecase>()));
  gh.factory<_i50.PaymentBloc>(
      () => _i50.PaymentBloc(gh<_i19.PaymentUseCase>()));
  gh.factoryParam<_i51.SearchMobileBloc, _i52.SearchEnum?, dynamic>((
    searchType,
    _,
  ) =>
      _i51.SearchMobileBloc(
        searchType,
        gh<_i40.AirportUsecase>(),
        gh<_i13.FlightsUsecase>(),
      ));
  gh.factory<_i53.SelectedCustomerNotifier>(
      () => _i53.SelectedCustomerNotifier(gh<_i45.CustomerUseCase>()));
  gh.factory<_i54.TicMobileBloc>(
      () => _i54.TicMobileBloc(gh<_i31.TicketUsecase>()));
  gh.factory<_i55.UserRepository>(
      () => _i56.UserRepositoryImpl(gh<_i41.AuthApi>()));
  gh.factory<_i57.UserUseCase>(
      () => _i57.UserUseCase(gh<_i55.UserRepository>()));
  gh.factory<_i58.AccountSettingBloc>(
      () => _i58.AccountSettingBloc(gh<_i57.UserUseCase>()));
  gh.factoryParam<_i59.AddCustomerBloc, int, dynamic>((
    customerId,
    _,
  ) =>
      _i59.AddCustomerBloc(
        customerId,
        gh<_i45.CustomerUseCase>(),
      ));
  gh.factoryParam<_i60.AddEditAirportBloc, String, dynamic>((
    airportId,
    _,
  ) =>
      _i60.AddEditAirportBloc(
        airportId,
        gh<_i40.AirportUsecase>(),
        gh<_i4.CloundinaryService>(),
        gh<_i14.ImagePicService>(),
        gh<_i20.PlaceService>(),
      ));
  gh.factoryParam<_i61.AddEditFlightBloc, String, dynamic>((
    flightId,
    _,
  ) =>
      _i61.AddEditFlightBloc(
        flightId,
        gh<_i13.FlightsUsecase>(),
        gh<_i40.AirportUsecase>(),
        gh<_i36.AirlineUsecase>(),
        gh<_i28.TicketInformationUsecase>(),
      ));
  gh.factory<_i62.AirportBloc>(() => _i62.AirportBloc(
        gh<_i40.AirportUsecase>(),
        gh<_i13.FlightsUsecase>(),
      ));
  gh.factory<_i63.AirportMobileBloc>(
      () => _i63.AirportMobileBloc(gh<_i40.AirportUsecase>()));
  gh.factory<_i64.AuthBloc>(() => _i64.AuthBloc(gh<_i55.UserRepository>()));
  gh.factory<_i65.AuthenticationBloc>(
      () => _i65.AuthenticationBloc(gh<_i57.UserUseCase>()));
  gh.factoryParam<_i66.BTBloc, List<_i67.SeatSelected>, int>((
    seats,
    flightId,
  ) =>
      _i66.BTBloc(
        seats,
        flightId,
        gh<_i45.CustomerUseCase>(),
        gh<_i28.TicketInformationUsecase>(),
        gh<_i13.FlightsUsecase>(),
      ));
  gh.factory<_i68.CustomerBloc>(() => _i68.CustomerBloc(
        gh<_i45.CustomerUseCase>(),
        gh<_i19.PaymentUseCase>(),
      ));
  gh.factory<_i69.GeneralSettingBloc>(
      () => _i69.GeneralSettingBloc(gh<_i57.UserUseCase>()));
  return getIt;
}

class _$DataSourceModule extends _i70.DataSourceModule {}
