import 'package:flutter/material.dart';

import '../../../../core/components/enum/tic_type_enum.dart';
import '../../../flight_detail/views/widgets/tic_item.dart';
import '../../../list_flight/views/widgets/dot_custom.dart';

class ColumnTicView extends StatelessWidget {
  final Function(TapDownDetails, Offset) onPress;
  final TicTypeEnum type;
  const ColumnTicView({
    super.key,
    required this.onPress,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            DotCustom(
              color: type.colorType!,
              full: true,
            ),
            Text(' ${type.displayValue}'),
          ],
        ),
        const SizedBox(height: 5.0),
        SizedBox(
          height: 110,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              for (int i = 0; i < 10; i++)
                TicItem3(width: 300, onPress: onPress),
            ]
                .expand((element) => [element, const SizedBox(width: 10.0)])
                .toList(),
          ),
        ),
      ],
    );
  }
}
