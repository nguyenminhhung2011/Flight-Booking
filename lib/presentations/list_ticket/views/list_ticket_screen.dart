import 'package:flight_booking/core/components/enum/item_view_enum.dart';
import 'package:flight_booking/presentations/list_ticket/bloc/list_ticket_bloc.dart';
import 'package:flight_booking/presentations/list_ticket/views/widgets/column_tic_view.dart';
import 'package:flight_booking/presentations/list_ticket/views/widgets/position_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/enum/tic_type_enum.dart';
import '../../../generated/l10n.dart';
import '../../customer/views/widgets/customer_textfield.dart';
import '../../flight_detail/views/widgets/icon_button.dart';
import '../../flight_detail/views/widgets/tic_column_list_view.dart';

class ListTicketScreen extends StatefulWidget {
  const ListTicketScreen({
    super.key,
  });

  @override
  State<ListTicketScreen> createState() => _ListTicketScreenState();
}

class _ListTicketScreenState extends State<ListTicketScreen> {
  ListTicketBloc get _bloc => BlocProvider.of<ListTicketBloc>(context);

  late final _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
    _bloc.add(const ListTicketEvent.started());
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

  void _listenStateChange(_, state) {
    state.whenOrNull();
  }

  void _changeItemView(ItemViewEnum itemView) {
    _bloc.add(ListTicketEvent.changeTicketItemView(itemView));
  }

  @override
  Widget build(BuildContext context) {
    final widthField = MediaQuery.of(context).size.width;

    return BlocConsumer<ListTicketBloc, ListTicketState>(
      listener: _listenStateChange,
      builder: (context, state) {
        final data = state.data;
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
                          const Icon(Icons.keyboard_arrow_down_rounded,
                              size: 14.0),
                        ],
                      ),
                    ),
                    const Spacer(),
                    IconButtonCustom(
                      iconData: Icons.list,
                      onPress: () => _changeItemView(ItemViewEnum.listView),
                      isSec: data.itemView == ItemViewEnum.listView,
                    ),
                    IconButtonCustom(
                      iconData: Icons.grid_view_sharp,
                      onPress: () => _changeItemView(ItemViewEnum.gridView),
                      isSec: data.itemView == ItemViewEnum.gridView,
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
                      data.itemView.isGridView
                          ? Column(
                              children: [
                                ColumnTicView(
                                  onPress: (positonClic, position) =>
                                      _showPositonDia(positonClic, position,
                                          TicTypeEnum.economyClass),
                                  type: TicTypeEnum.economyClass,
                                ),
                                ColumnTicView(
                                  onPress: (positonClic, position) =>
                                      _showPositonDia(positonClic, position,
                                          TicTypeEnum.businessClass),
                                  type: TicTypeEnum.businessClass,
                                ),
                                ColumnTicView(
                                  onPress: (positonClic, position) =>
                                      _showPositonDia(positonClic, position,
                                          TicTypeEnum.premiumEconomyClass),
                                  type: TicTypeEnum.premiumEconomyClass,
                                ),
                                ColumnTicView(
                                  onPress: (positonClic, position) =>
                                      _showPositonDia(positonClic, position,
                                          TicTypeEnum.firstClass),
                                  type: TicTypeEnum.firstClass,
                                ),
                              ],
                            )
                          : Column(
                              children: const [
                                TicColumnListView(
                                  ticType: TicTypeEnum.businessClass,
                                  count: 10,
                                ),
                                TicColumnListView(
                                  ticType: TicTypeEnum.businessClass,
                                  count: 10,
                                ),
                                TicColumnListView(
                                  ticType: TicTypeEnum.premiumEconomyClass,
                                  count: 10,
                                ),
                                TicColumnListView(
                                  ticType: TicTypeEnum.firstClass,
                                  count: 10,
                                ),
                              ],
                            )
                    ]
                        .expand(
                            (element) => [element, const SizedBox(height: 5)])
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
