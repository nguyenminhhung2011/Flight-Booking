import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/enum/item_view_enum.dart';
import 'package:flight_booking/presentations/list_ticket/bloc/list_ticket_bloc.dart';
import 'package:flight_booking/presentations/list_ticket/views/widgets/column_tic_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/enum/tic_type_enum.dart';
import '../../../generated/l10n.dart';
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

  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _bloc.add(const ListTicketEvent.started());
  }

  void _showPositionDialog(positionClick, position, type, ticId) {
    context.showPositionDialog(positionClick, position, type, ticId);
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
                    controller: textController,
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
                      const SizedBox(
                        width: double.infinity,
                        height: 100,
                        child: Row(
                          children: [
                            Expanded(
                              child: LabelTextField(
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
                                  onPress: (positionClick, position) =>
                                      _showPositionDialog(
                                          positionClick,
                                          position,
                                          TicTypeEnum.economyClass,
                                          ''),
                                  type: TicTypeEnum.economyClass,
                                ),
                                ColumnTicView(
                                  onPress: (positionClick, position) =>
                                      _showPositionDialog(
                                          positionClick,
                                          position,
                                          TicTypeEnum.businessClass,
                                          ''),
                                  type: TicTypeEnum.businessClass,
                                ),
                                ColumnTicView(
                                  onPress: (positionClick, position) =>
                                      _showPositionDialog(
                                          positionClick,
                                          position,
                                          TicTypeEnum.premiumEconomyClass,
                                          ''),
                                  type: TicTypeEnum.premiumEconomyClass,
                                ),
                                ColumnTicView(
                                  onPress: (positionClick, position) =>
                                      _showPositionDialog(positionClick,
                                          position, TicTypeEnum.firstClass, ''),
                                  type: TicTypeEnum.firstClass,
                                ),
                              ],
                            )
                          : const Column(
                              children: [
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

class LabelTextField extends StatelessWidget {
  const LabelTextField({
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
