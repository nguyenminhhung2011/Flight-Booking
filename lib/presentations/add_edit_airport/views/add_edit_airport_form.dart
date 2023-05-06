import 'package:flight_booking/app_coordinator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../generated/l10n.dart';
import '../../customer/views/widgets/customer_textfield.dart';
import '../bloc/add_edit_airport_bloc.dart';

class AddEditAirportForm extends StatefulWidget {
  const AddEditAirportForm({super.key});

  @override
  State<AddEditAirportForm> createState() => _AddEditAirportFormState();
}

class _AddEditAirportFormState extends State<AddEditAirportForm> {
  AddEditAirportBloc get _bloc => BlocProvider.of<AddEditAirportBloc>(context);

  @override
  void initState() {
    super.initState();
    _bloc.add(const AddEditAirportEvent.onStarted());
  }

  void _listenStateChange(_, AddEditAirportState state) {
    state.whenOrNull(addNewAirportSuccess: (data, flight) {
      context.popArgs(flight);
    }, editAirportSuccess: (data, flight) {
      context.popArgs(flight);
    });
  }

  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;
    return BlocConsumer<AddEditAirportBloc, AddEditAirportState>(
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
                      controller: TextEditingController(text: ''),
                      hint: S.of(context).id,
                      iconData: Icons.insert_drive_file,
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: FilterCategory(
                      controller: data.name,
                      hint: S.of(context).name,
                      iconData: Icons.near_me,
                    ),
                  )
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: FilterCategory(
                  controller: data.location,
                  hint: S.of(context).location,
                  iconData: Icons.location_on,
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 45.0,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(data.headerText),
                ),
              ),
              const Text('/////////// image update afeter')
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
