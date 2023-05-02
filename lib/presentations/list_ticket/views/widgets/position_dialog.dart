import 'package:flight_booking/app_coordinator.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/enum/tic_type_enum.dart';
import '../../../../core/config/color_config.dart';
import '../../../../generated/l10n.dart';
import '../../../list_flight/views/widgets/dot_custom.dart';
import '../../../list_flight/views/widgets/flight_details_widget.dart';

class PositionDialog extends StatelessWidget {
  const PositionDialog({
    super.key,
    required this.positonClicY,
    required this.positonClicX,
    required this.type,
  });

  final double positonClicY;
  final double positonClicX;
  final TicTypeEnum type;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Stack(
        children: [
          const SizedBox(
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: positonClicY,
            left: positonClicX,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Theme.of(context).cardColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                        ),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () => context.pop(),
                        icon: const Icon(Icons.close),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    children: [
                      DotCustom(
                        color: type.colorType,
                        full: true,
                      ),
                      Text(' ${type.displayValue}'),
                      const Spacer(),
                      Text(
                        'DA-B10',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    'Nguyen Minh Hung',
                    maxLines: 1,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    'Some notes in here Some notes in here Some notes in hereSome notes in here Some notes in here',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        width: 1,
                        color: CommonColor.primaryColor,
                      ),
                    ),
                    child: Column(
                      children: [
                        FlightDetailsWidget(
                          firstTitle: S.of(context).phoneNumber,
                          firstDesc: '+04.0234242',
                          secondTitle: S.of(context).gender,
                          secondDesc: 'Boy',
                        ),
                        FlightDetailsWidget(
                          firstTitle: S.of(context).airport,
                          firstDesc: 'Tan Son nhat',
                          secondTitle: S.of(context).airport,
                          secondDesc: 'Paries',
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: 50.0,
                  //   width: double.infinity,
                  //   child: Image.asset(
                  //     'assets/images/bardcode.png',
                  //     fit: BoxFit.fill,
                  //     color: Theme.of(context).disabledColor,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
