import 'package:flight_booking/presentations/add_edit_airport/bloc/add_edit_airport_bloc.dart';
import 'package:flight_booking/presentations/add_edit_airport/views/add_edit_airport_form.dart';
import 'package:flight_booking/presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart';
import 'package:flight_booking/presentations/add_edit_flight/view/add_edit_flight_form.dart';
import 'package:flight_booking/presentations/list_ticket/views/widgets/position_dialog.dart';
import 'package:flight_booking/presentations/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/dependency_injection/di.dart';

final _timeNow = DateTime.now();

extension AppCoordinator<T> on BuildContext {
  void pop() => Navigator.of(this).pop();
  void popArgs(T? args) => Navigator.of(this).pop(args);

  void startSelectedBottomBarItem(int view) {}

  Future<T?> startFlightDetai(String ticId) {
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

  Future<DateTime?> pickDateTime() async {
    DateTime? date = (await pickDate()) as DateTime?;
    if (date == null) {
      return null;
    }
    TimeOfDay? time = (await pickTime()) as TimeOfDay?;
    if (time == null) {
      return null;
    }
    return date.copyWith(hour: time.hour, minute: time.minute);
  }

  Future<T?> pickTime() => showTimePicker(
        context: this,
        initialTime: TimeOfDay(
          hour: _timeNow.hour,
          minute: _timeNow.minute,
        ),
      ) as Future<T?>;

  Future<T?> pickDate() => showDatePicker(
        context: this,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
      ) as Future<T?>;
  Future<T?> openLoginPage() {
    return Navigator.of(this).pushNamed(Routes.login);
  }

  Future<T?> openDashboardPage() {
    return Navigator.of(this).pushNamed(Routes.dashboard);
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
