import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../core/config/common_ui_config.dart';
import '../../../generated/l10n.dart';
import 'custom_textfield.dart';
import 'dropdown_button_custom.dart';

// ignore: must_be_immutable
class PrincipleSettingTab extends StatefulWidget {
  const PrincipleSettingTab({super.key});

  @override
  State<PrincipleSettingTab> createState() => _PrincipleSettingTabState();
}

class _PrincipleSettingTabState extends State<PrincipleSettingTab> {
  final hours = [for (int i = 0; i <= 99; i++) i];

  final minutes = [for (int i = 0; i <= 59; i++) i];

  final seconds = [for (int i = 0; i <= 59; i++) i];

  Widget _buildTimeSelection<T>({
    required BuildContext context,
    required String title,
    required List<List<DropdownMenuItem<T>>> data,
    required List<T> value,
  }) {
    int i = 0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        FittedBox(
          fit: BoxFit.fill,
          child: Row(
            children: data
                .map(
                  (dropDownButton) => Container(
                    margin: const EdgeInsets.only(right: 15),
                    child: CustomDropdownButton<T>(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      onTap: () {},
                      value: value.elementAt(i++),
                      dropDownMenuItems:
                          dropDownButton.map((item) => item).toList(),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildNumberChange(
      {required BuildContext context,
      required String title,
      required int value}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          maxLines: 1,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.bold),
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 5),
        CustomerTextField(
          isDense: true,
          trailingIcon: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {},
                child: const Icon(Icons.keyboard_arrow_up),
              ),
              InkWell(
                onTap: () {},
                child: const Icon(Icons.keyboard_arrow_down),
              ),
            ],
          ),
          checkFormat: false,
          controller: TextEditingController(text: "10"),
        ),
      ],
    );
  }

  Widget _buildTicketSetting({
    required BuildContext context,
    required String title,
    required int amount,
    required double price,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          maxLines: 1,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.bold),
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                "Amount",
                maxLines: 1,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.w300),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 4,
              child: CustomerTextField(
                isDense: true,
                trailingIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Icon(Icons.keyboard_arrow_up),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(Icons.keyboard_arrow_down),
                    ),
                  ],
                ),
                checkFormat: false,
                controller: TextEditingController(text: amount.toString()),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                "Price",
                maxLines: 1,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.w300),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 4,
              child: CustomerTextField(
                isDense: true,
                trailingIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Icon(Icons.keyboard_arrow_up),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(Icons.keyboard_arrow_down),
                    ),
                  ],
                ),
                checkFormat: false,
                controller: TextEditingController(text: "$price \$"),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(widthDevice * 0.02),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.2),
        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
      ),
      child: LayoutBuilder(
        builder: (_, constraints) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).principleSetting,
                  maxLines: 1,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Divider(
                  height: 50,
                  thickness: 1,
                  color: Theme.of(context).dividerColor,
                ),
                Row(
                  children: [
                    Expanded(
                      child: _buildNumberChange(
                        context: context,
                        title: S.of(context).numberOfAirport,
                        value: 10,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: _buildNumberChange(
                        context: context,
                        title: S.of(context).maximumNumberOfLayovers,
                        value: 10,
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 40,
                  thickness: 1,
                  color: Theme.of(context).dividerColor,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'icons/airplane.png',
                      width: 35,
                      scale: 1,
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.high,
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      flex: 1,
                      child: Text(
                        S.of(context).flightTime,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: _buildTimeSelection<int>(
                        context: context,
                        title: S.of(context).maximumFlightTime,
                        data: [
                          hours
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    "${e < 10 ? "0$e" : e.toString()} ${S.of(context).hours}",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                              )
                              .toList(),
                          minutes
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    "${e < 10 ? "0$e" : e.toString()} ${S.of(context).Minutes}",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                              )
                              .toList(),
                        ],
                        value: [0, 0],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: _buildTimeSelection<int>(
                        context: context,
                        title: S.of(context).minimumFlightTime,
                        data: [
                          hours
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    "${e < 10 ? "0$e" : e.toString()} ${S.of(context).hours}",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                              )
                              .toList(),
                          minutes
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    "${e < 10 ? "0$e" : e.toString()} ${S.of(context).Minutes}",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                              )
                              .toList(),
                        ],
                        value: [0, 0],
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 40,
                  thickness: 1,
                  color: Theme.of(context).dividerColor,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'icons/blocked.png',
                      width: 35,
                      scale: 1,
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.high,
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      flex: 1,
                      child: Text(
                        S.of(context).blockTime,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: _buildTimeSelection<int>(
                        context: context,
                        title: S.of(context).maximumBlockTime,
                        data: [
                          hours
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    "${e < 10 ? "0$e" : e.toString()} ${S.of(context).hours}",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                              )
                              .toList(),
                          minutes
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    "${e < 10 ? "0$e" : e.toString()} ${S.of(context).Minutes}",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                              )
                              .toList(),
                        ],
                        value: [0, 0],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      flex: 3,
                      child: _buildTimeSelection<int>(
                        context: context,
                        title: S.of(context).minimumBlockTime,
                        data: [
                          hours
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    "${e < 10 ? "0$e" : e.toString()} ${S.of(context).hours}",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                              )
                              .toList(),
                          minutes
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    "${e < 10 ? "0$e" : e.toString()} ${S.of(context).Minutes}",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                              )
                              .toList(),
                        ],
                        value: [0, 0],
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 40,
                  thickness: 1,
                  color: Theme.of(context).dividerColor,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'images/calendar.png',
                      width: 35,
                      scale: 1,
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.high,
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          S.of(context).bookingTime,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: _buildTimeSelection<int>(
                        context: context,
                        title: S.of(context).deadlineForTicketPurchase,
                        data: [
                          hours
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    "${e < 10 ? "0$e" : e.toString()} ${S.of(context).hours}",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                              )
                              .toList(),
                          minutes
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    "${e < 10 ? "0$e" : e.toString()} ${S.of(context).Minutes}",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                              )
                              .toList(),
                        ],
                        value: [0, 0],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: _buildTimeSelection<int>(
                        context: context,
                        title: S.of(context).deadlineForTicketCancellation,
                        data: [
                          hours
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    "${e < 10 ? "0$e" : e.toString()} ${S.of(context).hours}",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                              )
                              .toList(),
                          minutes
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    "${e < 10 ? "0$e" : e.toString()} ${S.of(context).Minutes}",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                              )
                              .toList(),
                        ],
                        value: [0, 0],
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 40,
                  thickness: 1,
                  color: Theme.of(context).dividerColor,
                ),
                Wrap(
                  direction:
                      widthDevice < 500 ? Axis.vertical : Axis.horizontal,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: [
                    Image.asset(
                      'images/plane-ticket.png',
                      width: 35,
                      scale: 1,
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.high,
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          S.of(context).planeTicket,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      flex: 6,
                      child: GridView(
                        padding: const EdgeInsets.only(left: 15),
                        physics: const NeverScrollableScrollPhysics(),
                        // crossAxisCount: 2,
                        // mainAxisSpacing: 15,
                        // crossAxisSpacing: 30,
                        // childAspectRatio:
                        //     (constraints.maxWidth / constraints.maxHeight) *
                        //         1.5,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                          crossAxisCount: 2,
                          crossAxisSpacing: 15,
                          height: 140,
                          mainAxisSpacing: 15,
                        ),
                        shrinkWrap: true,
                        children: [
                          _buildTicketSetting(
                            amount: 10,
                            price: 100,
                            context: context,
                            title: S.of(context).firstClass,
                          ),
                          _buildTicketSetting(
                            amount: 10,
                            price: 100,
                            context: context,
                            title: S.of(context).businessClass,
                          ),
                          _buildTicketSetting(
                            amount: 10,
                            price: 100,
                            context: context,
                            title: S.of(context).premiumEconomyClass,
                          ),
                          _buildTicketSetting(
                            amount: 10,
                            price: 100,
                            context: context,
                            title: S.of(context).economyClass,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight
    extends SliverGridDelegate {
  /// Creates a delegate that makes grid layouts with a fixed number of tiles in
  /// the cross axis.
  ///
  /// All of the arguments must not be null. The `mainAxisSpacing` and
  /// `crossAxisSpacing` arguments must not be negative. The `crossAxisCount`
  /// and `childAspectRatio` arguments must be greater than zero.
  const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight({
    required this.crossAxisCount,
    this.mainAxisSpacing = 0.0,
    this.crossAxisSpacing = 0.0,
    this.height = 56.0,
  })  : assert(crossAxisCount != null && crossAxisCount > 0),
        assert(mainAxisSpacing != null && mainAxisSpacing >= 0),
        assert(crossAxisSpacing != null && crossAxisSpacing >= 0),
        assert(height != null && height > 0);

  /// The number of children in the cross axis.
  final int crossAxisCount;

  /// The number of logical pixels between each child along the main axis.
  final double mainAxisSpacing;

  /// The number of logical pixels between each child along the cross axis.
  final double crossAxisSpacing;

  /// The height of the crossAxis.
  final double height;

  bool _debugAssertIsValid() {
    assert(crossAxisCount > 0);
    assert(mainAxisSpacing >= 0.0);
    assert(crossAxisSpacing >= 0.0);
    assert(height > 0.0);
    return true;
  }

  @override
  SliverGridLayout getLayout(SliverConstraints constraints) {
    assert(_debugAssertIsValid());
    final double usableCrossAxisExtent =
        constraints.crossAxisExtent - crossAxisSpacing * (crossAxisCount - 1);
    final double childCrossAxisExtent = usableCrossAxisExtent / crossAxisCount;
    final double childMainAxisExtent = height;
    return SliverGridRegularTileLayout(
      crossAxisCount: crossAxisCount,
      mainAxisStride: childMainAxisExtent + mainAxisSpacing,
      crossAxisStride: childCrossAxisExtent + crossAxisSpacing,
      childMainAxisExtent: childMainAxisExtent,
      childCrossAxisExtent: childCrossAxisExtent,
      reverseCrossAxis: axisDirectionIsReversed(constraints.crossAxisDirection),
    );
  }

  @override
  bool shouldRelayout(
      SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight oldDelegate) {
    return oldDelegate.crossAxisCount != crossAxisCount ||
        oldDelegate.mainAxisSpacing != mainAxisSpacing ||
        oldDelegate.crossAxisSpacing != crossAxisSpacing ||
        oldDelegate.height != height;
  }
}
