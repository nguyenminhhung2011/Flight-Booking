import 'package:flight_booking/core/components/widgets/custom_dialog_error/error_dialog.dart';
import 'package:flight_booking/core/components/widgets/custom_dialog_error/success_dialog.dart';
import 'package:flight_booking/core/components/widgets/custom_dialog_error/yes_no_dilog.dart';
import 'package:flight_booking/presentations/add_customer/bloc/add_customer_bloc.dart';
import 'package:flight_booking/presentations/add_customer/views/add_customer_screen.dart';
import 'package:flight_booking/presentations/add_edit_airport/bloc/add_edit_airport_bloc.dart';
import 'package:flight_booking/presentations/add_edit_airport/views/add_edit_airport_form.dart';
import 'package:flight_booking/presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart';
import 'package:flight_booking/presentations/add_edit_flight/view/add_edit_flight_form.dart';
import 'package:flight_booking/presentations/dialog_book_ticket/bloc/book_ticket_bloc.dart';
import 'package:flight_booking/presentations/dialog_book_ticket/views/dialog_book_ticket_screen.dart';
import 'package:flight_booking/presentations/dialog_book_ticket/views/select_luggae.dart';
import 'package:flight_booking/presentations/handle_config_airport/blocs/handle_config_airport_bloc.dart';
import 'package:flight_booking/presentations/handle_config_airport/view/handle_confg_airport_form.dart';
import 'package:flight_booking/presentations/list_ticket/views/widgets/position_dialog.dart';
import 'package:flight_booking/presentations/routes/routes.dart';
import 'package:flight_booking/presentations/selected_customer/notifier/selected_customer_notidier.dart';
import 'package:flight_booking/presentations/selected_customer/views/selected_customer_form.dart';
import 'package:flight_booking/presentations_mobile/dialog_select_customer/notifier/select_customer_notifier.dart';
import 'package:flight_booking/presentations_mobile/dialog_select_customer/views/dialog_select_customer.dart';
import 'package:flight_booking/presentations_mobile/routes_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'core/components/widgets/range_date_picker_custom.dart';
import 'core/dependency_injection/di.dart';
import 'domain/entities/flight/flight.dart';
import 'domain/entities/seat_selected/seat_selected.dart';

final _timeNow = DateTime.now();

extension AppCoordinator<T> on BuildContext {
  void pop() => Navigator.of(this).pop();

  void popUntil(String nRoute) =>
      Navigator.popUntil(this, ModalRoute.withName(nRoute));
  void popArgs(T? args) => Navigator.of(this).pop(args);

  void startSelectedBottomBarItem(int view) {}

  Future<T?> startFlightDetail(int ticId) {
    return Navigator.of(this).pushNamed(Routes.flightDetail, arguments: ticId);
  }

  Future<T?> openDialogAdDEditFlight(String fId) {
    return showDialog(
      context: this,
      builder: (_) => BlocProvider<AddEditFlightBloc>(
        create: (context) => injector(param1: fId),
        child: const Dialog(
          backgroundColor: Colors.transparent,
          child: AddEditFlightForm(),
        ),
      ),
    );
  }

  Future<T?> openDialogAdDEditAirport(String fId) {
    return showDialog(
      context: this,
      builder: (_) => BlocProvider<AddEditAirportBloc>(
        create: (context) => injector(param1: fId),
        child: const Dialog(
          backgroundColor: Colors.transparent,
          child: AddEditAirportForm(),
        ),
      ),
    );
  }

  Future<T?> openShowAddEditCustomer(int customerId) {
    return showDialog(
      context: this,
      builder: (_) => BlocProvider<AddCustomerBloc>(
        create: (context) => injector(param1: customerId),
        child: const Dialog(
          backgroundColor: Colors.transparent,
          child: AddCustomerScreen(),
        ),
      ),
    );
  }

  Future<T?> showSelectedCustomer() {
    return showDialog(
      context: this,
      builder: (context) => ChangeNotifierProvider<SelectedCustomerNotifier>(
        create: (_) => injector.get(),
        child: const Dialog(
            backgroundColor: Colors.transparent, child: SelectedCustomerForm()),
      ),
    );
  }

  Future<T?> openSelectBaggage(Flight flight, String customerName) {
    return showDialog(
      context: this,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        child: SelectLuggage(flight: flight, customerName: customerName),
      ),
    );
  }

  Future<T?> openSelectCustomer() {
    return showDialog(
        context: this,
        builder: (context) =>
            ChangeNotifierProvider<SelectCustomerNotifier>.value(
              value: injector(),
              child: const Dialog(
                insetAnimationDuration: Duration(milliseconds: 300),
                insetPadding: EdgeInsets.all(5.0),
                backgroundColor: Colors.transparent,
                child: DialogSelectCustomer(),
              ),
            ));
  }

  Future<DateTime?> pickDateTime() async {
    DateTime? date = (await pickDate(DatePickerMode.day));
    if (date == null) {
      return null;
    }
    TimeOfDay? time = await pickTime();
    if (time == null) {
      return null;
    }
    return date.copyWith(hour: time.hour, minute: time.minute);
  }

  Future<TimeOfDay?> pickTime() => showTimePicker(
        context: this,
        initialTime: TimeOfDay(
          hour: _timeNow.hour,
          minute: _timeNow.minute,
        ),
      );

  Future<DateTime?> pickDate(DatePickerMode mode) => showDatePicker(
        initialDatePickerMode: mode,
        context: this,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
      );

  Future<List<DateTime>?> pickRangeDate(
    RangeDateController rangeDateController,
  ) async {
    final dates = await showDialog(
      context: this,
      builder: (_) => Dialog(
        backgroundColor: Colors.transparent,
        child: RangeDatePicDialog(
          height: 450,
          rangeDateController: rangeDateController,
        ),
      ),
    );
    if (dates is List<DateTime>) {
      return dates;
    }
    return null;
  }

  Future<List<DateTime>?> pickWeekRange(
    RangeDateController rangeDateController,
  ) async {
    final dates = await showDialog(
      context: this,
      builder: (_) => Dialog(
        backgroundColor: Colors.transparent,
        child: RangeDatePicDialog(
          height: 450,
          rangeDateController: rangeDateController,
          rangeDatePicType: RangeDatePicType.weekRange,
        ),
      ),
    );
    if (dates is List<DateTime>) {
      return dates;
    }
    return null;
  }

  Future<T?> openLoginPage() {
    return Navigator.of(this).pushNamed(Routes.login);
  }

  Future<T?> openDashboardPage() {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(Routes.dashboard, (route) => false);
  }

  Future<T?> openDashboardMobilePage() {
    return Navigator.of(this).pushNamedAndRemoveUntil(
        RoutesMobile.dashboardMobile, (route) => false);
  }

  Future<T?> openCustomerDetailPage() {
    return Navigator.of(this).pushNamed(Routes.customerDetail);
  }

  Future<T?> moveToLoginPage() {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(Routes.login, (route) => false);
  }

  Future<T?> showPositionDialog(positonClic, position, type, String ticId) {
    final positonClicX = positonClic.globalPosition.dx -
        36 -
        (positonClic.globalPosition.dx - 36 - (position.dx - 36)) -
        4;
    final positonClicY = positonClic.globalPosition.dy -
        24 -
        (positonClic.globalPosition.dy - 24 - (position.dy - 24));
    return showDialog(
      context: this,
      builder: (context) => PositionDialog(
        positonClicY: positonClicY,
        positonClicX: positonClicX,
        type: type,
      ),
    );
  }

  Future<bool> showYesNoDialog(
      double width, String header, String title) async {
    final result = await showDialog(
      context: this,
      builder: (_) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: YesNoDialog(header: header, title: title, width: width),
        );
      },
    );
    if (result is StatusDialog) {
      return result.isYes;
    }
    return false;
  }

  Future<void> showSuccessDialog({
    required double width,
    required String header,
    required String title,
  }) async {
    await showDialog(
        context: this,
        builder: (_) {
          return Dialog(
            backgroundColor: Colors.transparent,
            child: SuccessDialog(
              header: header,
              title: title,
              width: width,
            ),
          );
        });
  }

  Future<void> showFailedDialog({
    required double width,
    required String header,
    required String title,
  }) async {
    await showDialog(
        context: this,
        builder: (_) {
          return SizedBox(
            height: width,
            width: width,
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              icon: const Icon(Icons.error),
              actions: [
                IconButton(
                  onPressed: Navigator.of(this).pop,
                  icon: const Icon(Icons.close),
                ),
              ],
              title: Text(
                header,
                style: Theme.of(this).textTheme.titleLarge,
              ),
              content: Text(
                title,
                style: Theme.of(this).textTheme.titleSmall,
              ),
            ),
          );
        });
  }

  Future<void> showErrorDialog({
    required double width,
    required String question,
    required String title,
  }) async {
    await showDialog(
        context: this,
        builder: (_) {
          return Dialog(
            backgroundColor: Colors.transparent,
            child: ErrorDialog(
              question: question,
              title1: title,
            ),
          );
        });
  }

  Future<bool> showDeleteConfigAirportDialog(int airportId) async {
    final result = await showDialog(
      context: this,
      builder: (_) {
        return BlocProvider<HandleConfigAirportBloc>(
          create: (context) => injector(param1: airportId),
          child: const Dialog(
            backgroundColor: Colors.transparent,
            child: HandleConfigAirportForm(),
          ),
        );
      },
    );
    if (result is StatusDialog) {
      return result.isYes;
    }
    return false;
  }

  Future<bool> showBookTicketDialog(
      List<SeatSelected> seats, int flightId) async {
    await showDialog(
      context: this,
      builder: (context) {
        return BlocProvider<BTBloc>(
          create: (context) => injector(param1: seats, param2: flightId),
          child: const Dialog(
            backgroundColor: Colors.transparent,
            child: DialogBookTicket(),
          ),
        );
      },
    );
    return false;
  }

  Future<T?> openListPageWithRoute(String route) {
    return Navigator.of(this).pushNamed(route);
  }

  Future<T?> pushAndRemoveAll(String route) {
    return Navigator.of(this).pushNamedAndRemoveUntil(route, (route) => false);
  }

  Future<T?> openPageWithRouteAndParams(String route, dynamic param) {
    return Navigator.of(this).pushNamed(route, arguments: param);
  }

  Future<T?> openPaymentDetailPage(String id) {
    return Navigator.of(this).pushNamed(Routes.paymentDetail, arguments: id);
  }
}

// abstract class AppCoordinatorShared<T> {
//   Future<T?> openDialogAddEditFlight([String? flightId]) async => null;
//   Future<T?> startFlightDetai([String? flightId]) async => null;
// }

// class AppCoordinatorSharedImpl<T> extends AppCoordinatorShared {
//   final BuildContext context;
//   AppCoordinatorSharedImpl(this.context);

//   @override
//   Future<T?> openDialogAddEditFlight([String? flightId]) => showDialog(
//         context: context,
//         builder: (_) => Dialog(
//           backgroundColor: Colors.transparent,
//           child: AddEditFlightForm(id: flightId!),
//         ),
//       ) as Future<T?>;


//   @override
//   Future<T?> startFlightDetai([String? flightId]) =>
//       Navigator.of(context).pushNamed(Routes.flightDetail, arguments: flightId!)
//           as Future<T?>;
// }

// extension AppCoordinator<T> on BuildContext {
//   AppCoordinatorShared<T> get shared => injector.get(param1: this);

//   Future<T?> openDialogAdDEditFlight([String? flightId]) =>
//       shared.openDialogAddEditFlight(flightId);

//   Future<T?> startFlightDetai([String? flightId]) =>
//       shared.startFlightDetai(flightId);

// }
