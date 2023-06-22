import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/button_custom.dart';
import 'package:flight_booking/core/components/widgets/mobile/dropdown_button_custom.dart';
import 'package:flight_booking/data/models/place/place_model.dart';

import 'package:flight_booking/presentations/add_edit_airport/views/widgets/item_add_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/components/enum/time_of_day_type.dart';
import '../../../generated/l10n.dart';
import '../../customer/views/widgets/customer_textfield.dart';
import '../bloc/add_edit_airport_bloc.dart';
import 'widgets/item_image.dart';

enum TypeUpdateAirportForm {
  edit,
  add;

  bool get isEdit => this == TypeUpdateAirportForm.edit;
}

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
    _bloc.add(const AddEditAirportEvent.fetchPlace());
    _bloc.add(const AddEditAirportEvent.getAirportById());
  }

  void pickImage() {
    _bloc.add(const AddEditAirportEvent.pickImage());
  }

  void removeImage(int index) {
    _bloc.add(AddEditAirportEvent.removeImage(index));
  }

  void _onSelectedProvinces(int code, int index) {
    _bloc.add(
      AddEditAirportEvent.fetchDistricts(code: code, provincesIndex: index),
    );
  }

  void _onSelectedDistricts(int code, int index) {
    _bloc.add(
      AddEditAirportEvent.fetchWards(code: code, districtsIndex: index),
    );
  }

  void _onSelectedWards(int? code) {
    _bloc.add(AddEditAirportEvent.selectedWard(code ?? 0));
  }

  void _onButtonTap() {
    if (!_bloc.state.isLoading) {
      _bloc.add(const AddEditAirportEvent.buttonTap());
    }
  }

  void _pickTime(BuildContext context, TimeOfDayType timeEnum) async {
    TimeOfDay? timePic = (await context.pickTime());
    if (timePic == null) {
      return;
    }
    _bloc.add(AddEditAirportEvent.updateTime(timePic, timeEnum));
  }

  void _listenStateChange(BuildContext context, AddEditAirportState state) {
    state.whenOrNull(
        addNewAirportSuccess: (data, airport) {
          context.popArgs({
            'airport': airport,
            'type': TypeUpdateAirportForm.add,
          });
        },
        editAirportSuccess: (data, airport) {
          context.popArgs({
            'airport': airport,
            'type': TypeUpdateAirportForm.edit,
          });
        },
        fetchPlaceSuccess: (data) {
          if (data.provinces.isNotEmpty) {
            _bloc.add(AddEditAirportEvent.fetchDistricts(
              code: data.provinces[0].code,
              provincesIndex: 0,
            ));
          }
        },
        fetchDistrictsSuccess: (data) {
          if (data.districts.isNotEmpty) {
            _bloc.add(
              AddEditAirportEvent.fetchWards(
                  code: data.districts[0].code, districtsIndex: 0),
            );
          }
        },
        fetchWardsSuccess: (data) {},
        addNewAirportFailed: (data, error) {
          log(error);
        },
        fetchPlaceFailed: (data, error) {
          log(error);
        },
        fetchDistrictsFailed: (data, error) {
          log(error);
        },
        fetchWardsFailed: (data, error) {
          log(error);
        });
  }

  bool get loadingProvinces => _bloc.state
      .maybeWhen(orElse: () => false, loading: (data, type) => type == 2);
  bool get loadingWards => _bloc.state
      .maybeWhen(orElse: () => false, loading: (data, type) => type == 4);

  bool get loadingDistricts => _bloc.state
      .maybeWhen(orElse: () => false, loading: (data, type) => type == 3);

  bool get loadingButton => _bloc.state
      .maybeWhen(orElse: () => false, loading: (data, type) => type == 1);

  bool get loadingGetAirport => _bloc.state
      .maybeWhen(orElse: () => false, loading: (data, type) => type == 5);

  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;
    final headerText = Theme.of(context).textTheme.titleMedium!.copyWith(
          fontWeight: FontWeight.bold,
        );
    return BlocConsumer<AddEditAirportBloc, AddEditAirportState>(
      listener: _listenStateChange,
      builder: (context, state) {
        final data = state.data;
        final images = data.images;
        final provinces = state.data.provinces;
        final districts = state.data.districts;
        final wards = state.data.wards;
        final provincesSelected = state.data.provincesSelected;
        final districtsSelected = state.data.districtsSelected;
        final wardsSelected = state.data.wardsSelected;
        final location = data.locationEdit;
        final timeOpen = data.startTime;
        final timeClose = data.closeTime;

        if (loadingGetAirport) {
          return _loadingWidget(context);
        }

        return Container(
          constraints: BoxConstraints(maxHeight: context.heightDevice),
          width: Breakpoints.small.isActive(context)
              ? double.infinity
              : widthDevice * 0.5,
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Theme.of(context).cardColor,
          ),
          child: ListView(
            children: [
              Text(data.headerText, style: headerText),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: FilterCategory(
                      controller: TextEditingController(text: _bloc.airportId),
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
              Text(S.of(context).description, style: headerText),
              FilterCategory(
                hint: S.of(context).description,
                iconData: Icons.description,
                controller: data.description,
                lines: 4,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: FilterCategory(
                      controller: TextEditingController(
                        text: '${timeOpen.hour}:${timeOpen.minute}',
                      ),
                      title: S.of(context).timeOpen,
                      hint: S.of(context).timeOpen,
                      iconData: Icons.calendar_month,
                      onPress: () => _pickTime(context, TimeOfDayType.openTime),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: FilterCategory(
                      controller: TextEditingController(
                        text: '${timeClose.hour}:${timeClose.minute}',
                      ),
                      title: S.of(context).timeClose,
                      hint: S.of(context).timeClose,
                      iconData: Icons.calendar_month,
                      onPress: () =>
                          _pickTime(context, TimeOfDayType.closeTime),
                    ),
                  ),
                ],
              ),
              if (_bloc.airportId.isNotEmpty) ...[
                const SizedBox(height: 10.0),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Theme.of(context).primaryColor,
                      size: 14,
                    ),
                    const SizedBox(width: 10.0),
                    Text(
                      location,
                      style: context.titleMedium.copyWith(
                        fontWeight: FontWeight.w500,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10.0),
              ],
              // Group location
              if (!loadingProvinces) ...<Widget>[
                if (provinces.isNotEmpty) ...<Widget>[
                  ...[
                    Text(S.of(context).provinces, style: headerText),
                    SizedBox(
                      width: double.infinity,
                      child: DropdownButtonCustom<int?>(
                        radius: 10.0,
                        items: provinces
                            .mapIndexed<DropdownMenuItem<int>>(
                                (int index, PlaceModel value) =>
                                    DropdownMenuItem<int>(
                                      value: index,
                                      child: Text(value.name),
                                    ))
                            .toList(),
                        value: provincesSelected,
                        onChange: (value) => _onSelectedProvinces(
                            provinces[value ?? 0].code, value ?? 0),
                      ),
                    ),
                  ]
                ]
              ],
              const SizedBox(height: 10.0),
              if (!loadingDistricts) ...<Widget>[
                if (districts.isNotEmpty) ...<Widget>[
                  Text(S.of(context).districts, style: headerText),
                  SizedBox(
                    width: double.infinity,
                    child: DropdownButtonCustom<int?>(
                      radius: 10.0,
                      items: districts
                          .mapIndexed<DropdownMenuItem<int>>(
                              (int index, PlaceModel value) =>
                                  DropdownMenuItem<int>(
                                    value: index,
                                    child: Text(value.name),
                                  ))
                          .toList(),
                      value: districtsSelected,
                      onChange: (value) => _onSelectedDistricts(
                          districts[value ?? 0].code, value ?? 0),
                    ),
                  ),
                ]
              ],
              const SizedBox(height: 10.0),
              if (!loadingWards) ...<Widget>[
                if (wards.isNotEmpty) ...<Widget>[
                  Text(S.of(context).wards, style: headerText),
                  SizedBox(
                    width: double.infinity,
                    child: DropdownButtonCustom<int?>(
                      radius: 10.0,
                      items: wards
                          .mapIndexed<DropdownMenuItem<int>>(
                              (int index, PlaceModel value) =>
                                  DropdownMenuItem<int>(
                                    value: index,
                                    child: Text(value.name),
                                  ))
                          .toList(),
                      value: wardsSelected,
                      onChange: _onSelectedWards,
                    ),
                  ),
                ]
              ],
              if (state.isLoading && !loadingButton) _loadingWidget(context),
              const SizedBox(height: 10.0),

              Text(
                S.of(context).pickImage,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 6,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 1,
                  ),
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(bottom: 16),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: images.isEmpty ? 1 : images.length + 1,
                  itemBuilder: (context, index) {
                    if (index == images.length) {
                      return ItemAddImage(
                        index: index,
                        onPress: pickImage,
                      );
                    }

                    return ItemImage(
                      callback: () => removeImage(index),
                      image: data.images[index],
                    );
                  },
                ),
              ),
              ButtonCustom(
                width: double.infinity,
                height: 45.0,
                onPress: _onButtonTap,
                child: loadingButton
                    ? _loadingWidget(context)
                    : Text(data.headerText),
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

  Widget _loadingWidget(BuildContext context) => Center(
        child: CircularProgressIndicator(color: context.titleLarge.color),
      );
}
