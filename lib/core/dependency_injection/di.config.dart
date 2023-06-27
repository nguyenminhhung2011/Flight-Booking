// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasource/remote/airline/airline_api.dart' as _i29;
import '../../data/datasource/remote/airport/airport_api.dart' as _i33;
import '../../data/datasource/remote/auth/auth_api.dart' as _i37;
import '../../data/datasource/remote/customer/customer_api.dart' as _i38;
import '../../data/datasource/remote/flight/flight_api.dart' as _i8;
import '../../data/datasource/remote/payment/payment_api.dart' as _i14;
import '../../data/datasource/remote/ticket/ticket_api.dart' as _i20;
import '../../data/datasource/remote/ticket_information/ticket_information_api.dart'
    as _i21;
import '../../data/repositories/airline_repository_impl.dart' as _i31;
import '../../data/repositories/airport_repository_impl.dart' as _i35;
import '../../data/repositories/customer_repository_impl.dart' as _i40;
import '../../data/repositories/flight_repository_impl.dart' as _i11;
import '../../data/repositories/ticket_information_repository_impl.dart'
    as _i23;
import '../../data/repositories/ticket_repository_impl.dart' as _i26;
import '../../data/repositories/user_repository_impl.dart' as _i55;
import '../../domain/entities/seat_selected/seat_selected.dart' as _i66;
import '../../domain/entities/ticket/ticket.dart' as _i49;
import '../../domain/repositories/airline_repository.dart' as _i30;
import '../../domain/repositories/airport_repository.dart' as _i34;
import '../../domain/repositories/customer_repository.dart' as _i39;
import '../../domain/repositories/flight_repository.dart' as _i10;
import '../../domain/repositories/ticket_information_repository.dart' as _i22;
import '../../domain/repositories/ticket_repository.dart' as _i25;
import '../../domain/repositories/user_repository.dart' as _i54;
import '../../domain/usecase/airline_usecase.dart' as _i32;
import '../../domain/usecase/airport_usecase.dart' as _i36;
import '../../domain/usecase/customer_usecase.dart' as _i41;
import '../../domain/usecase/flight_usecase.dart' as _i12;
import '../../domain/usecase/payment_usecase.dart' as _i15;
import '../../domain/usecase/tic_information_usecase.dart' as _i24;
import '../../domain/usecase/ticket_usecase.dart' as _i27;
import '../../domain/usecase/user_usecase.dart' as _i56;
import '../../presentations/add_customer/bloc/add_customer_bloc.dart' as _i58;
import '../../presentations/add_edit_airport/bloc/add_edit_airport_bloc.dart'
    as _i59;
import '../../presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart'
    as _i60;
import '../../presentations/airport/bloc/airport_bloc.dart' as _i61;
import '../../presentations/customer/bloc/customer_bloc.dart' as _i67;
import '../../presentations/dashboard/bloc/dashboard_bloc.dart' as _i5;
import '../../presentations/dialog_book_ticket/bloc/book_ticket_bloc.dart'
    as _i65;
import '../../presentations/flight_detail/bloc/flight_detail_bloc.dart' as _i42;
import '../../presentations/handle_config_airport/blocs/handle_config_airport_bloc.dart'
    as _i43;
import '../../presentations/list_flight/bloc/list_flight_bloc.dart' as _i44;
import '../../presentations/list_ticket/bloc/list_ticket_bloc.dart' as _i45;
import '../../presentations/login/bloc/authentication_bloc.dart' as _i64;
import '../../presentations/payment/blocs/payment_tab_bloc.dart' as _i48;
import '../../presentations/payment_detail/bloc/payment_detail_bloc.dart'
    as _i47;
import '../../presentations/payment_management/bloc/add_edit_payment_bloc/add_edit_payment_bloc.dart'
    as _i28;
import '../../presentations/payment_management/bloc/payment_bloc.dart' as _i46;
import '../../presentations/selected_customer/notifier/selected_customer_notidier.dart'
    as _i52;
import '../../presentations/settings/bloc/accout/account_setting_bloc.dart'
    as _i57;
import '../../presentations/settings/bloc/general/general_setting_bloc.dart'
    as _i68;
import '../../presentations/settings/bloc/setting_bloc.dart' as _i19;
import '../../presentations_mobile/airport_detail_mobile/bloc/airport_detail_mobile_bloc.dart'
    as _i3;
import '../../presentations_mobile/auth/bloc/auth_bloc.dart' as _i63;
import '../../presentations_mobile/dashboard_mobile/bloc/dashboard_mobile_bloc.dart'
    as _i6;
import '../../presentations_mobile/flight_history_detail/bloc/flight_history_detail_bloc.dart'
    as _i9;
import '../../presentations_mobile/list_airport_mobile/bloc/airport_mobile_bloc.dart'
    as _i62;
import '../../presentations_mobile/save/bloc/save_bloc.dart' as _i17;
import '../../presentations_mobile/search_mobile/bloc/search_mobile_bloc.dart'
    as _i50;
import '../../presentations_mobile/select_scott_mobile/bloc/select_scott_bloc.dart'
    as _i18;
import '../../presentations_mobile/ticket_mobile/bloc/tic_mobile_bloc.dart'
    as _i53;
import '../components/enum/search_enum.dart' as _i51;
import '../services/cloundinary_service.dart' as _i4;
import '../services/image_pic_service.dart' as _i13;
import '../services/place/place_service.dart' as _i16;
import 'modules/data_source_module.dart' as _i69;

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
  gh.factory<_i5.DashboardBloc>(() => _i5.DashboardBloc());
  gh.factory<_i6.DashboardMobileBloc>(() => _i6.DashboardMobileBloc());
  gh.factory<_i7.Dio>(
    () => dataSourceModule.dioProd(),
    registerFor: {_prod},
  );
  gh.factory<_i8.FlightApi>(() => _i8.FlightApi(gh<_i7.Dio>()));
  gh.factoryParam<_i9.FlightHistoryDetailBloc, String, dynamic>((
    id,
    _,
  ) =>
      _i9.FlightHistoryDetailBloc(id));
  gh.factory<_i10.FlightRepository>(
      () => _i11.FlightRepositoryImpl(gh<_i8.FlightApi>()));
  gh.factory<_i12.FlightsUsecase>(
      () => _i12.FlightsUsecase(gh<_i10.FlightRepository>()));
  gh.factory<_i13.ImagePicService>(() => _i13.ImagePicService());
  gh.factory<_i14.PaymentApi>(() => _i14.PaymentApi(gh<_i7.Dio>()));
  gh.factory<_i15.PaymentUseCase>(
      () => _i15.PaymentUseCase(gh<_i14.PaymentApi>()));
  gh.factory<_i16.PlaceService>(() => _i16.PlaceService());
  gh.factory<_i17.SaveBloc>(() => _i17.SaveBloc());
  gh.factory<_i18.SelectScottBloc>(() => _i18.SelectScottBloc());
  gh.factory<_i19.SettingBloc>(() => _i19.SettingBloc());
  gh.factory<_i20.TicketApi>(() => _i20.TicketApi(gh<_i7.Dio>()));
  gh.factory<_i21.TicketInformationApi>(
      () => _i21.TicketInformationApi(gh<_i7.Dio>()));
  gh.factory<_i22.TicketInformationRepository>(() =>
      _i23.TicketInformationRepositoryImpl(gh<_i21.TicketInformationApi>()));
  gh.factory<_i24.TicketInformationUsecase>(() =>
      _i24.TicketInformationUsecase(gh<_i22.TicketInformationRepository>()));
  gh.factory<_i25.TicketRepository>(
      () => _i26.TicketRepositoryImpl(gh<_i20.TicketApi>()));
  gh.factory<_i27.TicketUsecase>(
      () => _i27.TicketUsecase(gh<_i25.TicketRepository>()));
  gh.factory<_i28.AddEditPaymentBloc>(
      () => _i28.AddEditPaymentBloc(gh<_i15.PaymentUseCase>()));
  gh.factory<_i29.AirlineApi>(() => _i29.AirlineApi(gh<_i7.Dio>()));
  gh.factory<_i30.AirlineRepository>(
      () => _i31.AirlineRepositoryImpl(gh<_i29.AirlineApi>()));
  gh.factory<_i32.AirlineUsecase>(
      () => _i32.AirlineUsecase(gh<_i30.AirlineRepository>()));
  gh.factory<_i33.AirportApi>(() => _i33.AirportApi(gh<_i7.Dio>()));
  gh.factory<_i34.AirportRepository>(
      () => _i35.AirportRepositoryImpl(gh<_i33.AirportApi>()));
  gh.factory<_i36.AirportUsecase>(
      () => _i36.AirportUsecase(gh<_i34.AirportRepository>()));
  gh.factory<_i37.AuthApi>(() => _i37.AuthApi(gh<_i7.Dio>()));
  gh.factory<_i38.CustomerApi>(() => _i38.CustomerApi(gh<_i7.Dio>()));
  gh.factory<_i39.CustomerRepository>(
      () => _i40.CustomerRepositoryImpl(gh<_i38.CustomerApi>()));
  gh.factory<_i41.CustomerUseCase>(
      () => _i41.CustomerUseCase(gh<_i39.CustomerRepository>()));
  gh.factoryParam<_i42.FlightDetailBloc, int, dynamic>((
    flightId,
    _,
  ) =>
      _i42.FlightDetailBloc(
        flightId,
        gh<_i12.FlightsUsecase>(),
        gh<_i27.TicketUsecase>(),
        gh<_i24.TicketInformationUsecase>(),
      ));
  gh.factoryParam<_i43.HandleConfigAirportBloc, int, dynamic>((
    airportId,
    _,
  ) =>
      _i43.HandleConfigAirportBloc(
        airportId,
        gh<_i36.AirportUsecase>(),
        gh<_i12.FlightsUsecase>(),
      ));
  gh.factory<_i44.ListFlightBloc>(() => _i44.ListFlightBloc(
        gh<_i12.FlightsUsecase>(),
        gh<_i16.PlaceService>(),
        gh<_i32.AirlineUsecase>(),
        gh<_i24.TicketInformationUsecase>(),
      ));
  gh.factory<_i45.ListTicketBloc>(
      () => _i45.ListTicketBloc(gh<_i27.TicketUsecase>()));
  gh.factory<_i46.PaymentBloc>(
      () => _i46.PaymentBloc(gh<_i15.PaymentUseCase>()));
  gh.factoryParam<_i47.PaymentDetailBloc, dynamic, dynamic>((
    payment,
    _,
  ) =>
      _i47.PaymentDetailBloc(
        payment,
        gh<_i15.PaymentUseCase>(),
      ));
  gh.factoryParam<_i48.PaymentTabBloc, List<_i49.Ticket>, Map<String, int>>((
    tics,
    ids,
  ) =>
      _i48.PaymentTabBloc(
        tics,
        ids,
        gh<_i41.CustomerUseCase>(),
        gh<_i12.FlightsUsecase>(),
        gh<_i24.TicketInformationUsecase>(),
        gh<_i27.TicketUsecase>(),
      ));
  gh.factoryParam<_i50.SearchMobileBloc, _i51.SearchEnum?, dynamic>((
    searchType,
    _,
  ) =>
      _i50.SearchMobileBloc(
        searchType,
        gh<_i36.AirportUsecase>(),
        gh<_i12.FlightsUsecase>(),
      ));
  gh.factory<_i52.SelectedCustomerNotifier>(
      () => _i52.SelectedCustomerNotifier(gh<_i41.CustomerUseCase>()));
  gh.factory<_i53.TicMobileBloc>(
      () => _i53.TicMobileBloc(gh<_i27.TicketUsecase>()));
  gh.factory<_i54.UserRepository>(
      () => _i55.UserRepositoryImpl(gh<_i37.AuthApi>()));
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
        gh<_i41.CustomerUseCase>(),
      ));
  gh.factoryParam<_i59.AddEditAirportBloc, String, dynamic>((
    airportId,
    _,
  ) =>
      _i59.AddEditAirportBloc(
        airportId,
        gh<_i36.AirportUsecase>(),
        gh<_i4.CloundinaryService>(),
        gh<_i13.ImagePicService>(),
        gh<_i16.PlaceService>(),
      ));
  gh.factoryParam<_i60.AddEditFlightBloc, String, dynamic>((
    flightId,
    _,
  ) =>
      _i60.AddEditFlightBloc(
        flightId,
        gh<_i12.FlightsUsecase>(),
        gh<_i36.AirportUsecase>(),
        gh<_i32.AirlineUsecase>(),
        gh<_i24.TicketInformationUsecase>(),
      ));
  gh.factory<_i61.AirportBloc>(() => _i61.AirportBloc(
        gh<_i36.AirportUsecase>(),
        gh<_i12.FlightsUsecase>(),
      ));
  gh.factory<_i62.AirportMobileBloc>(
      () => _i62.AirportMobileBloc(gh<_i36.AirportUsecase>()));
  gh.factory<_i63.AuthBloc>(() => _i63.AuthBloc(gh<_i54.UserRepository>()));
  gh.factory<_i64.AuthenticationBloc>(
      () => _i64.AuthenticationBloc(gh<_i56.UserUseCase>()));
  gh.factoryParam<_i65.BTBloc, List<_i66.SeatSelected>, int>((
    seats,
    flightId,
  ) =>
      _i65.BTBloc(
        seats,
        flightId,
        gh<_i41.CustomerUseCase>(),
        gh<_i24.TicketInformationUsecase>(),
        gh<_i12.FlightsUsecase>(),
        gh<_i27.TicketUsecase>(),
      ));
  gh.factory<_i67.CustomerBloc>(() => _i67.CustomerBloc(
        gh<_i41.CustomerUseCase>(),
        gh<_i15.PaymentUseCase>(),
      ));
  gh.factory<_i68.GeneralSettingBloc>(
      () => _i68.GeneralSettingBloc(gh<_i56.UserUseCase>()));
  return getIt;
}

class _$DataSourceModule extends _i69.DataSourceModule {}
