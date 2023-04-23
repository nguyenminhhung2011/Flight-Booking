import 'package:flight_booking/core/config/color_config.dart';
import 'package:flight_booking/presentations/flight_detail/views/widgets/tic_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/components/enum/tic_type_enum.dart';
import '../../../generated/l10n.dart';
import '../../flight_detail/views/widgets/icon_button.dart';
import '../../list_flight/views/widgets/dot_custom.dart';
import '../../list_flight/views/widgets/flight_details_widget.dart';

class ListTicketScreen extends StatefulWidget {
  const ListTicketScreen({
    super.key,
  });

  @override
  State<ListTicketScreen> createState() => _ListTicketScreenState();
}

class _ListTicketScreenState extends State<ListTicketScreen> {
  late final _textController;

  @override
  void initState() {
    _textController = TextEditingController();
  }

  @override
  void _showPositonDia(positonClic, position, type) {
    final positonClicX = positonClic.globalPosition.dx -
        36 -
        (positonClic.globalPosition.dx - 36 - (position.dx - 36)) -
        4;
    final positonClicY = positonClic.globalPosition.dy -
        24 -
        (positonClic.globalPosition.dy - 24 - (position.dy - 24));

    showDialog(
      context: context,
      builder: (context) => PositionDialog(
        positonClicY: positonClicY,
        positonClicX: positonClicX,
        type: type,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final widthField = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          ListTile(
            title: Text(
              S.of(context).listTicket,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              maxLines: 1,
            ),
            trailing: SizedBox(
              width: widthField * 0.4,
              child: CupertinoSearchTextField(
                padding: const EdgeInsets.all(10.0),
                controller: _textController,
                enabled: true,
                style: Theme.of(context).textTheme.titleMedium,
                onChanged: (value) {},
                onSubmitted: (value) {},
                backgroundColor:
                    Theme.of(context).primaryColor.withOpacity(0.05),
                placeholder: S.of(context).searchAnything,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '${S.of(context).filter} ',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Icon(Icons.keyboard_arrow_down_rounded, size: 14.0),
                    ],
                  ),
                ),
                const Spacer(),
                IconButtonCustom(
                  iconData: Icons.list,
                  onPress: () {},
                  isSec: true,
                ),
                IconButtonCustom(
                  iconData: Icons.grid_view_sharp,
                  onPress: () {},
                  isSec: false,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListView(
                children: [
                  ColumnTicView(
                    onPress: (positonClic, position) => _showPositonDia(
                        positonClic, position, TicTypeEnum.economyClass),
                    type: TicTypeEnum.economyClass,
                  ),
                  ColumnTicView(
                    onPress: (positonClic, position) => _showPositonDia(
                        positonClic, position, TicTypeEnum.businessClass),
                    type: TicTypeEnum.businessClass,
                  ),
                  ColumnTicView(
                    onPress: (positonClic, position) => _showPositonDia(
                        positonClic, position, TicTypeEnum.premiumEconomyClass),
                    type: TicTypeEnum.premiumEconomyClass,
                  ),
                  ColumnTicView(
                    onPress: (positonClic, position) => _showPositonDia(
                        positonClic, position, TicTypeEnum.firstClass),
                    type: TicTypeEnum.firstClass,
                  ),
                ]
                    .expand((element) => [element, const SizedBox(height: 5)])
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
              color: type.colorType,
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
                        onPressed: () => Navigator.of(context).pop(),
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
                  SizedBox(
                    height: 50.0,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/bardcode.png',
                      fit: BoxFit.fill,
                      color: Theme.of(context).disabledColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
