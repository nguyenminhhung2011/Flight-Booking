import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/const/image_const.dart';
import 'package:flight_booking/core/components/enum/tic_type_enum.dart';
import 'package:flight_booking/core/components/widgets/card_custom.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/appbar.dart';
import 'package:flight_booking/core/components/widgets/mobile/custom_template_screen_stack_scroll.dart';
import 'package:flight_booking/core/components/widgets/mobile/sort_button.dart';
import 'package:flight_booking/presentations/list_flight/views/widgets/dot_custom.dart';
import 'package:flight_booking/presentations_mobile/ticket_mobile/bloc/tic_mobile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/widgets/mobile/dropdown_button_custom.dart';
import '../../../domain/entities/airport/airport.dart';
import '../../../generated/l10n.dart';
import '../../search_mobile/views/bottom_filter.dart';

const _hMargin = 15.0;

class TicMobileScreen extends StatefulWidget {
  const TicMobileScreen({super.key});

  @override
  State<TicMobileScreen> createState() => _TicMobileScreenState();
}

class _TicMobileScreenState extends State<TicMobileScreen> {
  TicMobileBloc get _bloc => BlocProvider.of<TicMobileBloc>(context);

  @override
  void initState() {
    super.initState();
    _bloc.add(const TicMobileEvent.started());
    _bloc.add(const TicMobileEvent.fetchTic());
  }

  void _onChangeAirportStart(Airport? airport) {
    _bloc.add(TicMobileEvent.changeAirportStart(airport: airport!));
  }

  void _onChangeAirportFinish(Airport? airport) {
    _bloc.add(TicMobileEvent.changeAirportFinish(airport: airport!));
  }

  void _onChangeTypeTic(TicTypeEnum? type) {
    _bloc.add(TicMobileEvent.changeTypeTic(type: type!));
  }

  void _listenStateChange(BuildContext context, TicMobileState state) {
    state.maybeWhen(orElse: () {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TicMobileBloc, TicMobileState>(
      listener: _listenStateChange,
      builder: (context, state) {
        final data = state.data;
        return CustomTemplateScreenStackScroll(
          appbar: AppbarCustom(
            backgroundColor: Theme.of(context).primaryColor,
            title: [
              IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(Icons.arrow_back),
              ),
              Text(S.of(context).ticket, style: context.headerAppBarTextStyle),
              IconButton(onPressed: () {}, icon: const SizedBox())
            ].expand((element) => [element, const Spacer()]).toList()
              ..removeLast(),
          ),
          children: [
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  CardCustom(
                    isShowHeight: false,
                    margin: const EdgeInsets.symmetric(horizontal: _hMargin),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SortButton(
                              title: S.of(context).sortByPrice,
                              icon: Icons.price_change,
                              onPress: () {},
                            ),
                          ],
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Row(
                            children: [
                              Expanded(
                                child: DropdownButtonCustom<Airport?>(
                                  value: data.airportStart,
                                  onChange: _onChangeAirportStart,
                                  items: filterAirport
                                      .map<DropdownMenuItem<Airport>>(
                                        (Airport value) =>
                                            DropdownMenuItem<Airport>(
                                          value: value,
                                          child: Text(value.name),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                              const SizedBox(width: 10.0),
                              Expanded(
                                child: DropdownButtonCustom<Airport?>(
                                  value: data.airportFinish,
                                  onChange: _onChangeAirportFinish,
                                  items: filterAirport
                                      .map<DropdownMenuItem<Airport>>(
                                        (Airport value) =>
                                            DropdownMenuItem<Airport>(
                                          value: value,
                                          child: Text(value.name),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        DropdownButtonCustom<TicTypeEnum?>(
                          width: double.infinity,
                          value: data.typeTic,
                          items: [
                            TicTypeEnum.businessClass,
                            TicTypeEnum.economyClass,
                            TicTypeEnum.firstClass,
                            TicTypeEnum.premiumEconomyClass
                          ]
                              .map<DropdownMenuItem<TicTypeEnum>>(
                                  (TicTypeEnum value) => DropdownMenuItem(
                                        value: value,
                                        child: Row(
                                          children: [
                                            DotCustom(
                                              color: value.colorType,
                                              full: false,
                                            ),
                                            Text(' ${value.displayValue}')
                                          ],
                                        ),
                                      ))
                              .toList(),
                          onChange: _onChangeTypeTic,
                        ),
                      ]
                          .expand((element) =>
                              [element, const SizedBox(height: 10)])
                          .toList()
                        ..removeLast(),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: _hMargin),
                    child: Divider(),
                  ),
                  TicField(
                    paddingLeft: _hMargin,
                    paddingRight: _hMargin,
                    items: <TicStyle>[
                      for (int i = 0; i < 10; i++)
                        TicStyle(
                          type: data.typeTic,
                          airportFinish: 'Airport1',
                          airportStart: 'Airport2',
                          price: 212.00,
                        )
                    ],
                  )
                ]
                    .expand((element) =>
                        [const SizedBox(height: _hMargin), element])
                    .toList(),
              ),
            )
          ],
        );
      },
    );
  }
}

enum TicType {
  listVerticalView;

  bool get isVerticalView => this == TicType.listVerticalView;
}

class TicField extends StatelessWidget {
  final TicType type;
  final List<TicStyle> items;
  final double? paddingLeft;
  final double? paddingRight;
  final double? paddingTop;
  final double? paddingBottom;
  final double? spacingItem;
  const TicField({
    super.key,
    this.type = TicType.listVerticalView,
    this.paddingLeft,
    this.paddingRight,
    this.paddingTop,
    this.paddingBottom,
    this.spacingItem,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    if (type.isVerticalView) {
      return Padding(
        padding: EdgeInsets.only(
          left: paddingLeft ?? 0.0,
          right: paddingRight ?? 0.0,
          top: paddingTop ?? 0.0,
          bottom: paddingBottom ?? 0.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ...items.map((e) => TicItem(item: e)).expand(
                (element) => [element, SizedBox(height: spacingItem ?? 10.0)])
          ],
        ),
      );
    }
    return const Placeholder();
  }
}

class TicItem extends StatelessWidget {
  final TicStyle item;
  const TicItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        left: item.paddingLeft ?? 10.0,
        top: item.paddingTop ?? 10.0,
        right: item.paddingRight ?? 10.0,
        bottom: item.paddingBottom ?? 10.0,
      ),
      decoration: BoxDecoration(
        color: item.color ?? Theme.of(context).cardColor,
        borderRadius: BorderRadius.all(
          Radius.circular(item.radius ?? 10.0),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            ImageConst.planeTicket,
            height: 80,
            width: 80.0,
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        item.type.displayValue,
                        maxLines: 1,
                        style: context.titleMedium
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    DotCustom(color: item.type.colorType, full: true)
                  ],
                ),
                _lineRow(context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('8h 3m'), //🚑dumb code
                    Text(
                      ('\$${item.price}'),
                      style: context.titleMedium.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor),
                    ),
                  ],
                )
              ]
                  .expand((element) => [element, const SizedBox(height: 5.0)])
                  .toList()
                ..removeLast(),
            ),
          )
        ],
      ),
    );
  }

  Row _lineRow(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(item.airportStart),
        Expanded(
          child: Container(
            height: 1,
            decoration: DottedDecoration(
              color: Theme.of(context).dividerColor,
              shape: Shape.line,
              linePosition: LinePosition.bottom,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 1,
              color: Theme.of(context).dividerColor,
            ),
          ),
          child: const Icon(
            Icons.airplanemode_active_sharp,
            color: Colors.blue,
            size: 16.0,
          ),
        ),
        Expanded(
          child: Container(
            height: 1,
            decoration: DottedDecoration(
              color: Theme.of(context).dividerColor,
              shape: Shape.line,
              linePosition: LinePosition.bottom,
            ),
          ),
        ),
        Text(item.airportFinish)
      ],
    );
  }
}

class TicStyle {
  final double? paddingLeft;
  final double? paddingRight;
  final double? paddingTop;
  final double? paddingBottom;
  final double? radius;
  final double price;
  final TicTypeEnum type;
  final String airportStart;
  final String airportFinish;
  final Color? color;

  TicStyle({
    this.paddingLeft,
    this.paddingRight,
    this.paddingBottom,
    this.paddingTop,
    this.radius,
    this.color,
    required this.type,
    required this.airportFinish,
    required this.airportStart,
    required this.price,
  });
}
