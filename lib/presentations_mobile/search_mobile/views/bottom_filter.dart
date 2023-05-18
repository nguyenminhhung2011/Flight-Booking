import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../core/components/enum/search_enum.dart';
import '../../../core/components/widgets/mobile/button_custom.dart';
import '../../../generated/l10n.dart';

const List<String> filterRating = <String>[
  '1 - 2 Stars',
  '2 - 3 Stars',
  '3 - 4 Stars',
  '4 - 5 Stars'
];

class BottomFilterView extends StatefulWidget {
  const BottomFilterView({
    super.key,
    required this.searchType,
  });

  final SearchEnum searchType;

  @override
  State<BottomFilterView> createState() => _BottomFilterViewState();
}

class _BottomFilterViewState extends State<BottomFilterView> {
  String ratingsSe = filterRating.first;
  @override
  Widget build(BuildContext context) {
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
        if (widget.searchType.isAirportSearch) ...[
          ListTile(
            title: Text(S.of(context).sortByRating),
            trailing: DropdownButton<String>(
              borderRadius: BorderRadius.circular(10),
              focusColor: Theme.of(context).primaryColor,
              items: filterRating.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? change) {
                // controller.setNumberOfImages(numberOfImages ?? 1);
                setState(() {
                  ratingsSe = change!;
                });
              },
              value: ratingsSe,
            ),
          ),
        ],
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: ButtonCustom(
            onPress: () {},
            width: double.infinity,
            child: Text(
              S.of(context).apply,
              style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
