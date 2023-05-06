import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/enum/date_time_enum.dart';
import 'package:flight_booking/presentations/add_edit_flight/bloc/add_edit_flight_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../core/constant/handle_time.dart';
import '../../../generated/l10n.dart';
import '../../customer/views/widgets/customer_textfield.dart';

class AddEditFlightForm extends StatefulWidget {
  const AddEditFlightForm({super.key});

  @override
  State<AddEditFlightForm> createState() => _AddEditFlightFormState();
}

class _AddEditFlightFormState extends State<AddEditFlightForm> {
  AddEditFlightBloc get _bloc => BlocProvider.of<AddEditFlightBloc>(context);

  @override
  void initState() {
    super.initState();
    _bloc.add(const AddEditFlightEvent.onStarted());
  }

  void _listenStateChange(_, AddEditFlightState state) {
    state.whenOrNull(addNewFlightSuccess: (data, flight) {
      context.popArgs(flight);
    }, editFlightSuccess: (data, flight) {
      context.popArgs(flight);
    });
  }

  pickDateTime(BuildContext context, DateTimeEnum timeEnum) async {
    DateTime? datePic = (await context.pickDateTime());
    if (datePic == null) {
      return;
    }
    _bloc.add(
      AddEditFlightEvent.updateDateField(dateTime: datePic, enumTime: timeEnum),
    );
  }

  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;
    return BlocConsumer<AddEditFlightBloc, AddEditFlightState>(
      listener: _listenStateChange,
      builder: (context, state) {
        final data = state.data;
        return Container(
          width: Breakpoints.small.isActive(context)
              ? double.infinity
              : widthDevice * 0.5,
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Theme.of(context).cardColor,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.headerText,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: FilterCategory(
                      controller: data.airPortStart,
                      hint: S.of(context).id,
                      iconData: Icons.airplane_ticket,
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: FilterCategory(
                      controller: data.airPortFinish,
                      hint: S.of(context).name,
                      iconData: Icons.airplanemode_active,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: FilterCategory(
                      title: S.of(context).airportStart,
                      hint: S.of(context).airportStart,
                      iconData: Icons.connecting_airports_outlined,
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: FilterCategory(
                      title: S.of(context).airportFinish,
                      hint: S.of(context).airportFinish,
                      iconData: Icons.connecting_airports_outlined,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: FilterCategory(
                      controller: TextEditingController(
                        text:
                            '${DateFormat().add_yMMMMEEEEd().format(data.timeStart)} / ${getjmFormat(data.timeStart)}',
                      ),
                      title: S.of(context).dateStart,
                      hint: S.of(context).dateStart,
                      iconData: Icons.calendar_month,
                      onPress: () {
                        pickDateTime(context, DateTimeEnum.timeStart);
                      },
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: FilterCategory(
                      controller: TextEditingController(
                        text:
                            '${DateFormat().add_yMMMMEEEEd().format(data.timeEnd)} / ${getjmFormat(data.timeEnd)}',
                      ),
                      title: S.of(context).dateFinish,
                      hint: S.of(context).dateFinish,
                      iconData: Icons.calendar_month,
                      onPress: () {
                        pickDateTime(context, DateTimeEnum.timeEnd);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 45.0,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(data.headerText),
                ),
              ),
            ]
                .expand((element) => [element, const SizedBox(height: 10.0)])
                .toList()
              ..removeLast(),
          ),
        );
      },
    );
  }
}
