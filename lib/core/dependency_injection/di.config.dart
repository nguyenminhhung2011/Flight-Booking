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

import '../../data/datasource/remote/airline/airline_api.dart' as _i32;
import '../../data/datasource/remote/airport/airport_api.dart' as _i36;
import '../../data/datasource/remote/auth/auth_api.dart' as _i40;
import '../../data/datasource/remote/customer/customer_api.dart' as _i41;
import '../../data/datasource/remote/flight/flight_api.dart' as _i9;
import '../../data/datasource/remote/payment/payment_api.dart' as _i15;
import '../../data/datasource/remote/ticket/ticket_api.dart' as _i23;
import '../../data/datasource/remote/ticket_information/ticket_information_api.dart'
    as _i24;
import '../../data/repositories/airline_repository_impl.dart' as _i34;
import '../../data/repositories/airport_repository_impl.dart' as _i38;
import '../../data/repositories/customer_repository_impl.dart' as _i43;
import '../../data/repositories/flight_repository_impl.dart' as _i12;
import '../../data/repositories/ticket_information_repository_impl.dart'
    as _i26;
import '../../data/repositories/ticket_repository_impl.dart' as _i29;
import '../../data/repositories/user_repository_impl.dart' as _i54;
import '../../domain/entities/seat_selected/seat_selected.dart' as _i65;
import '../../domain/repositories/airline_repository.dart' as _i33;
import '../../domain/repositories/airport_repository.dart' as _i37;
import '../../domain/repositories/customer_repository.dart' as _i42;
import '../../domain/repositories/flight_repository.dart' as _i11;
import '../../domain/repositories/ticket_information_repository.dart' as _i25;
import '../../domain/repositories/ticket_repository.dart' as _i28;
import '../../domain/repositories/user_repository.dart' as _i53;
import '../../domain/usecase/airline_usecase.dart' as _i35;
import '../../domain/usecase/airport_usecase.dart' as _i39;
import '../../domain/usecase/customer_usecase.dart' as _i44;
import '../../domain/usecase/flight_usecase.dart' as _i13;
import '../../domain/usecase/payment_usecase.dart' as _i18;
import '../../domain/usecase/tic_information_usecase.dart' as _i27;
import '../../domain/usecase/ticket_usecase.dart' as _i30;
import '../../domain/usecase/user_usecase.dart' as _i55;
import '../../presentations/add_customer/bloc/add_customer_bloc.dart' as _i57;
import '../../presentations/add_edit_airport/bloc/add_edit_airport_bloc.dart'
    as _i58;
import '../../presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart'
    as _i59;
import '../../presentations/airport/bloc/airport_bloc.dart' as _i60;
import '../../presentations/customer/bloc/customer_bloc.dart' as _i66;
import '../../presentations/customer_detail/bloc/customer_detail_bloc.dart'
    as _i5;
import '../../presentations/dashboard/bloc/dashboard_bloc.dart' as _i6;
import '../../presentations/dialog_book_ticket/bloc/book_ticket_bloc.dart'
    as _i64;
import '../../presentations/flight_detail/bloc/flight_detail_bloc.dart' as _i45;
import '../../presentations/handle_config_airport/blocs/handle_config_airport_bloc.dart'
    as _i46;
import '../../presentations/list_flight/bloc/list_flight_bloc.dart' as _i47;
import '../../presentations/list_ticket/bloc/list_ticket_bloc.dart' as _i48;
import '../../presentations/login/bloc/authentication_bloc.dart' as _i63;
import '../../presentations/payment_detail/bloc/payment_detail_bloc.dart'
    as _i17;
import '../../presentations/payment_management/bloc/add_edit_payment_bloc/add_edit_payment_bloc.dart'
    as _i31;
import '../../presentations/payment_management/bloc/payment_bloc.dart' as _i16;
import '../../presentations/selected_customer/notifier/selected_customer_notidier.dart'
    as _i51;
import '../../presentations/settings/bloc/accout/account_setting_bloc.dart'
    as _i56;
import '../../presentations/settings/bloc/general/general_setting_bloc.dart'
    as _i67;
import '../../presentations/settings/bloc/setting_bloc.dart' as _i22;
import '../../presentations_mobile/airport_detail_mobile/bloc/airport_detail_mobile_bloc.dart'
    as _i3;
import '../../presentations_mobile/auth/bloc/auth_bloc.dart' as _i62;
import '../../presentations_mobile/dashboard_mobile/bloc/dashboard_mobile_bloc.dart'
    as _i7;
import '../../presentations_mobile/flight_history_detail/bloc/flight_history_detail_bloc.dart'
    as _i10;
import '../../presentations_mobile/list_airport_mobile/bloc/airport_mobile_bloc.dart'
    as _i61;
import '../../presentations_mobile/save/bloc/save_bloc.dart' as _i20;
import '../../presentations_mobile/search_mobile/bloc/search_mobile_bloc.dart'
    as _i49;
import '../../presentations_mobile/select_scott_mobile/bloc/select_scott_bloc.dart'
    as _i21;
import '../../presentations_mobile/ticket_mobile/bloc/tic_mobile_bloc.dart'
    as _i52;
import '../components/enum/search_enum.dart' as _i50;
import '../services/cloundinary_service.dart' as _i4;
import '../services/image_pic_service.dart' as _i14;
import '../services/place/place_service.dart' as _i19;
import 'modules/data_source_module.dart' as _i68;

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
  gh.factory<_i16.PaymentBloc>(() => _i16.PaymentBloc());
  gh.factory<_i17.PaymentDetailBloc>(
      () => _i17.PaymentDetailBloc(gh<String>()));
  gh.factory<_i18.PaymentUseCase>(
      () => _i18.PaymentUseCase(gh<_i15.PaymentApi>()));
  gh.factory<_i19.PlaceService>(() => _i19.PlaceService());
  gh.factory<_i20.SaveBloc>(() => _i20.SaveBloc());
  gh.factory<_i21.SelectScottBloc>(() => _i21.SelectScottBloc());
  gh.factory<_i22.SettingBloc>(() => _i22.SettingBloc());
  gh.factory<_i23.TicketApi>(() => _i23.TicketApi(gh<_i8.Dio>()));
  gh.factory<_i24.TicketInformationApi>(
      () => _i24.TicketInformationApi(gh<_i8.Dio>()));
  gh.factory<_i25.TicketInformationRepository>(() =>
      _i26.TicketInformationRepositoryImpl(gh<_i24.TicketInformationApi>()));
  gh.factory<_i27.TicketInformationUsecase>(() =>
      _i27.TicketInformationUsecase(gh<_i25.TicketInformationRepository>()));
  gh.factory<_i28.TicketRepository>(
      () => _i29.TicketRepositoryImpl(gh<_i23.TicketApi>()));
  gh.factory<_i30.TicketUsecase>(
      () => _i30.TicketUsecase(gh<_i28.TicketRepository>()));
  gh.factory<_i31.AddEditPaymentBloc>(
      () => _i31.AddEditPaymentBloc(gh<_i18.PaymentUseCase>()));
  gh.factory<_i32.AirlineApi>(() => _i32.AirlineApi(gh<_i8.Dio>()));
  gh.factory<_i33.AirlineRepository>(
      () => _i34.AirlineRepositoryImpl(gh<_i32.AirlineApi>()));
  gh.factory<_i35.AirlineUsecase>(
      () => _i35.AirlineUsecase(gh<_i33.AirlineRepository>()));
  gh.factory<_i36.AirportApi>(() => _i36.AirportApi(gh<_i8.Dio>()));
  gh.factory<_i37.AirportRepository>(
      () => _i38.AirportRepositoryImpl(gh<_i36.AirportApi>()));
  gh.factory<_i39.AirportUsecase>(
      () => _i39.AirportUsecase(gh<_i37.AirportRepository>()));
  gh.factory<_i40.AuthApi>(() => _i40.AuthApi(gh<_i8.Dio>()));
  gh.factory<_i41.CustomerApi>(() => _i41.CustomerApi(gh<_i8.Dio>()));
  gh.factory<_i42.CustomerRepository>(
      () => _i43.CustomerRepositoryImpl(gh<_i41.CustomerApi>()));
  gh.factory<_i44.CustomerUseCase>(
      () => _i44.CustomerUseCase(gh<_i42.CustomerRepository>()));
  gh.factoryParam<_i45.FlightDetailBloc, int, dynamic>((
    flightId,
    _,
  ) =>
      _i45.FlightDetailBloc(
        flightId,
        gh<_i13.FlightsUsecase>(),
        gh<_i27.TicketInformationUsecase>(),
      ));
  gh.factoryParam<_i46.HandleConfigAirportBloc, int, dynamic>((
    airportId,
    _,
  ) =>
      _i46.HandleConfigAirportBloc(
        airportId,
        gh<_i39.AirportUsecase>(),
        gh<_i13.FlightsUsecase>(),
      ));
  gh.factory<_i47.ListFlightBloc>(() => _i47.ListFlightBloc(
        gh<_i13.FlightsUsecase>(),
        gh<_i19.PlaceService>(),
        gh<_i35.AirlineUsecase>(),
        gh<_i27.TicketInformationUsecase>(),
      ));
  gh.factory<_i48.ListTicketBloc>(
      () => _i48.ListTicketBloc(gh<_i30.TicketUsecase>()));
  gh.factoryParam<_i49.SearchMobileBloc, _i50.SearchEnum?, dynamic>((
    searchType,
    _,
  ) =>
      _i49.SearchMobileBloc(
        searchType,
        gh<_i39.AirportUsecase>(),
        gh<_i13.FlightsUsecase>(),
      ));
  gh.factory<_i51.SelectedCustomerNotifier>(
      () => _i51.SelectedCustomerNotifier(gh<_i44.CustomerUseCase>()));
  gh.factory<_i52.TicMobileBloc>(
      () => _i52.TicMobileBloc(gh<_i30.TicketUsecase>()));
  gh.factory<_i53.UserRepository>(
      () => _i54.UserRepositoryImpl(gh<_i40.AuthApi>()));
  gh.factory<_i55.UserUseCase>(
      () => _i55.UserUseCase(gh<_i53.UserRepository>()));
  gh.factory<_i56.AccountSettingBloc>(
      () => _i56.AccountSettingBloc(gh<_i55.UserUseCase>()));
  gh.factoryParam<_i57.AddCustomerBloc, int, dynamic>((
    customerId,
    _,
  ) =>
      _i57.AddCustomerBloc(
        customerId,
        gh<_i44.CustomerUseCase>(),
      ));
  gh.factoryParam<_i58.AddEditAirportBloc, String, dynamic>((
    airportId,
    _,
  ) =>
      _i58.AddEditAirportBloc(
        airportId,
        gh<_i39.AirportUsecase>(),
        gh<_i4.CloundinaryService>(),
        gh<_i14.ImagePicService>(),
        gh<_i19.PlaceService>(),
      ));
  gh.factoryParam<_i59.AddEditFlightBloc, String, dynamic>((
    flightId,
    _,
  ) =>
      _i59.AddEditFlightBloc(
        flightId,
        gh<_i13.FlightsUsecase>(),
        gh<_i39.AirportUsecase>(),
        gh<_i35.AirlineUsecase>(),
        gh<_i27.TicketInformationUsecase>(),
      ));
  gh.factory<_i60.AirportBloc>(() => _i60.AirportBloc(
        gh<_i39.AirportUsecase>(),
        gh<_i13.FlightsUsecase>(),
      ));
  gh.factory<_i61.AirportMobileBloc>(
      () => _i61.AirportMobileBloc(gh<_i39.AirportUsecase>()));
  gh.factory<_i62.AuthBloc>(() => _i62.AuthBloc(gh<_i53.UserRepository>()));
  gh.factory<_i63.AuthenticationBloc>(
      () => _i63.AuthenticationBloc(gh<_i55.UserUseCase>()));
  gh.factoryParam<_i64.BTBloc, List<_i65.SeatSelected>, int>((
    seats,
    flightId,
  ) =>
      _i64.BTBloc(
        seats,
        flightId,
        gh<_i44.CustomerUseCase>(),
        gh<_i27.TicketInformationUsecase>(),
      ));
  gh.factory<_i66.CustomerBloc>(() => _i66.CustomerBloc(
        gh<_i44.CustomerUseCase>(),
        gh<_i18.PaymentUseCase>(),
      ));
  gh.factory<_i67.GeneralSettingBloc>(
      () => _i67.GeneralSettingBloc(gh<_i55.UserUseCase>()));
  return getIt;
}

class _$DataSourceModule extends _i68.DataSourceModule {}
