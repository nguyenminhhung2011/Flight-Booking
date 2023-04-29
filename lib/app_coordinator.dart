import 'package:flight_booking/presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart';
import 'package:flight_booking/presentations/add_edit_flight/view/add_edit_flight_form.dart';
import 'package:flight_booking/presentations/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/dependency_injection/di.dart';

extension AppCoordinator<T> on BuildContext {
  void pop() => Navigator.of(this).pop();

  void startSelectedBottomBarItem(int view) {}

  Future<T?> startFlightDetai(String ticId) {
    return Navigator.of(this).pushNamed(Routes.flightDetail, arguments: ticId);
  }

  Future<T?> openDialogAdDEditFlight(String fId) {
    return showDialog(
      context: this,
      builder: (_) => BlocProvider<AddEditFlightBloc>(
        create: (context) => injector(),
        child: Dialog(
          backgroundColor: Colors.transparent,
          child: AddEditFlightForm(id: fId),
        ),
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
