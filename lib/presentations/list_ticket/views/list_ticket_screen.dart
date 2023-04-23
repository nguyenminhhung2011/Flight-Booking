import 'package:flight_booking/presentations/list_ticket/views/widgets/column_tic_view.dart';
import 'package:flight_booking/presentations/list_ticket/views/widgets/position_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/components/enum/tic_type_enum.dart';
import '../../../generated/l10n.dart';
import '../../flight_detail/views/widgets/icon_button.dart';

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
    super.initState();
    _textController = TextEditingController();
  }

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
                  SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: Row(
                      children: const [
                        Expanded(
                          child: FilterCategory(
                            title: 'Flights',
                            hint: 'Select Flights',
                            iconData: Icons.airplane_ticket,
                          ),
                        )
                      ],
                    ),
                  ),
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

class FilterCategory extends StatelessWidget {
  const FilterCategory({
    super.key,
    required this.title,
    required this.hint,
    required this.iconData,
    this.enable = true,
  });
  final String title;
  final String hint;
  final IconData iconData;
  final bool enable;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
        ),
        const SizedBox(height: 5),
        TextFormField(
          enabled: enable,
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              hintText: hint,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.grey[300]!,
                  width: 0.05,
                ),
              ),
              suffixIcon: Icon(iconData)),
        ),
      ],
    );
  }
}
