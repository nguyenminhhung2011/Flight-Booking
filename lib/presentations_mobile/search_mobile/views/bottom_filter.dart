import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/components/enum/search_enum.dart';
import '../../../core/components/widgets/mobile/button_custom.dart';
import '../../../core/components/widgets/mobile/button_pic_date_custom.dart';
import '../../../core/components/widgets/mobile/button_pick_time_custom.dart';
import '../../../core/components/widgets/mobile/dropdown_button_custom.dart';
import '../../../domain/entities/airport/airport.dart';
import '../../../generated/l10n.dart';

class BottomFilterView extends StatefulWidget {
  const BottomFilterView({
    super.key,
  });

  @override
  State<BottomFilterView> createState() => _BottomFilterViewState();
}

class _BottomFilterViewState extends State<BottomFilterView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final leadingTitleStyle =
        context.titleMedium.copyWith(fontWeight: FontWeight.w500);
    return Consumer<SearchMobileController>(
      builder: (context, model, child) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20.0),
            Text(
              S.of(context).filter,
              style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            if (model.searchEnum.isAirportSearch)
              ...[
                ListTile(
                  title: Text(
                    S.of(context).sortByRating,
                    style: leadingTitleStyle,
                  ),
                  trailing: DropdownButtonCustom<String?>(
                    width: 150.0,
                    value: model.ratings,
                    onChange: model.setRatings,
                    items: filterRating
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                ListTile(
                  title: Text(S.of(context).timeOpen, style: leadingTitleStyle),
                  trailing: ButtonPickTimeCustom(
                    width: 150.0,
                    value: model.timeOpen!,
                    onChange: model.setTimeOpen,
                  ),
                ),
                ListTile(
                  title: Text(S.of(context).timeOpen, style: leadingTitleStyle),
                  trailing: ButtonPickTimeCustom(
                    width: 150.0,
                    value: model.timeClose!,
                    onChange: model.setTimeClose,
                  ),
                ),
              ].expand((element) => [element, const SizedBox(height: 10.0)]),
            if (model.searchEnum.isFlightSearch)
              ...[
                ListTile(
                  title: Text(
                    S.of(context).airportStart,
                    style: leadingTitleStyle,
                  ),
                  trailing: DropdownButtonCustom<Airport?>(
                    width: 150.0,
                    value: model.airportStart,
                    onChange: model.setAirportStart,
                    items: filterAirport
                        .map<DropdownMenuItem<Airport>>(
                          (Airport value) => DropdownMenuItem<Airport>(
                            value: value,
                            child: Text(value.name),
                          ),
                        )
                        .toList(),
                  ),
                ),
                ListTile(
                  title: Text(
                    S.of(context).airportFinish,
                    style: leadingTitleStyle,
                  ),
                  trailing: DropdownButtonCustom<Airport?>(
                    width: 150.0,
                    value: model.airportFinish,
                    onChange: model.setAirportFinish,
                    items: filterAirport
                        .map<DropdownMenuItem<Airport>>(
                          (Airport value) => DropdownMenuItem<Airport>(
                            value: value,
                            child: Text(value.name),
                          ),
                        )
                        .toList(),
                  ),
                ),
                ListTile(
                  title:
                      Text(S.of(context).dateStart, style: leadingTitleStyle),
                  trailing: ButtonPicDateCustom(
                    width: 150.0,
                    value: model.timeStart ?? DateTime.now(),
                    onChange: model.setTimeStart,
                  ),
                ),
                ListTile(
                  title:
                      Text(S.of(context).dateFinish, style: leadingTitleStyle),
                  trailing: ButtonPicDateCustom(
                    width: 150.0,
                    value: model.timeFinish ?? DateTime.now(),
                    onChange: model.setTimeFinish,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child:
                          Text(S.of(context).price, style: leadingTitleStyle),
                    ),
                    const SizedBox(height: 2.0),
                    RangeSlider(
                      values: model.rangePrice,
                      divisions: 20,
                      activeColor: Theme.of(context).primaryColor,
                      inactiveColor:
                          Theme.of(context).primaryColor.withOpacity(0.2),
                      min: 0.0,
                      max: 100.0,
                      labels: RangeLabels(
                        model.rangePrice.start.round().toString(),
                        model.rangePrice.end.round().toString(),
                      ),
                      onChanged: model.onChangeRangePrice,
                    )
                  ],
                ),
              ].expand((element) => [element, const SizedBox(height: 10.0)]),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: ButtonCustom(
                onPress: () => context.pop(),
                width: double.infinity,
                height: 45.0,
                child: Text(
                  S.of(context).apply,
                  style:
                      context.titleMedium.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

const List<String> filterRating = <String>[
  '1 - 2 Stars',
  '2 - 3 Stars',
  '3 - 4 Stars',
  '4 - 5 Stars'
];

List<Airport> filterAirport = <Airport>[
  Airport(id: randomString(), name: 'Airport1', image: '', location: ''),
  Airport(id: randomString(), name: 'Airport2', image: '', location: ''),
  Airport(id: randomString(), name: 'Airport3', image: '', location: ''),
  Airport(id: randomString(), name: 'Airport4', image: '', location: ''),
  Airport(id: randomString(), name: 'Airport5', image: '', location: ''),
];

class SearchMobileController extends ChangeNotifier {
  SearchEnum searchEnum;

  //airport
  String? ratings;
  TimeOfDay? timeOpen;
  TimeOfDay? timeClose;
  final TimeOfDay _now = TimeOfDay.now();

  //flight

  Airport? airportStart;
  Airport? airportFinish;
  DateTime? timeStart;
  DateTime? timeFinish;
  double? minPrice;
  double? maxPrice;
  RangeValues rangePrice = const RangeValues(20.0, 60.0);
  final DateTime _dateNow = DateTime.now();

  SearchMobileController({required this.searchEnum}) {
    if (searchEnum.isAirportSearch) {
      ratings = filterRating.first;
      timeOpen = _now;
      timeClose = _now;
    }

    if (searchEnum.isFlightSearch) {
      airportStart = filterAirport.first;
      airportFinish = filterAirport.first;
      timeStart = _dateNow;
      timeFinish = _dateNow;
    }
  }

  void setRatings(String? value) {
    ratings = value ?? '';
    notifyListeners();
  }

  void setTimeOpen(TimeOfDay? value) {
    timeOpen = value ?? _now;
    notifyListeners();
  }

  void setTimeClose(TimeOfDay? value) {
    timeClose = value ?? _now;
    notifyListeners();
  }

  void setAirportStart(Airport? value) {
    airportStart = value ?? filterAirport.first;
    notifyListeners();
  }

  void setAirportFinish(Airport? value) {
    airportFinish = value ?? filterAirport.first;
    notifyListeners();
  }

  void setTimeStart(DateTime? value) {
    timeStart = value ?? _dateNow;
    notifyListeners();
  }

  void setTimeFinish(DateTime? value) {
    timeFinish = value ?? _dateNow;
    notifyListeners();
  }

  void onChangeRangePrice(RangeValues prices) {
    rangePrice = prices;
    notifyListeners();
  }
}
