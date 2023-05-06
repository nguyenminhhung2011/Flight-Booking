import 'package:flutter/material.dart';

import '../../../core/config/common_ui_config.dart';
import 'custom_textfield.dart';
import 'dropdown_button_custom.dart';

// ignore: must_be_immutable
class PrincipleSettingTab extends StatelessWidget {
  PrincipleSettingTab({super.key});

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
        Row(
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
    return Container(
      padding: const EdgeInsets.all(60),
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
                  'Principle Settings',
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
                        title: "Number of Airports",
                        value: 10,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: _buildNumberChange(
                        context: context,
                        title: "Maximum Number of Layovers",
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
                        "Flight Time",
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
                        title: "Maximum Flight Time",
                        data: [
                          hours
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    "${e < 10 ? "0$e" : e.toString()} hours",
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
                                    "${e < 10 ? "0$e" : e.toString()} minutes",
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
                        title: "Minimum Flight Time",
                        data: [
                          hours
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    "${e < 10 ? "0$e" : e.toString()} hours",
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
                                    "${e < 10 ? "0$e" : e.toString()} minutes",
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
                        "Block Time",
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
                        title: "Maximum Block Time",
                        data: [
                          hours
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    "${e < 10 ? "0$e" : e.toString()} hours",
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
                                    "${e < 10 ? "0$e" : e.toString()} minutes",
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
                        title: "Minimum Block Time",
                        data: [
                          hours
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    "${e < 10 ? "0$e" : e.toString()} hours",
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
                                    "${e < 10 ? "0$e" : e.toString()} minutes",
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
                          "Booking Time",
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
                        title: "Deadline For Ticket Purchase",
                        data: [
                          hours
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    "${e < 10 ? "0$e" : e.toString()} hours",
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
                                    "${e < 10 ? "0$e" : e.toString()} minutes",
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
                        title: "Deadline For Ticket Cancellation",
                        data: [
                          hours
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    "${e < 10 ? "0$e" : e.toString()} hours",
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
                                    "${e < 10 ? "0$e" : e.toString()} minutes",
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
                          "Plane Ticket",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: GridView.count(
                        padding: const EdgeInsets.only(left: 15),
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 30,
                        childAspectRatio:
                            (constraints.maxWidth / constraints.maxHeight) *
                                1.5,
                        shrinkWrap: true,
                        children: [
                          _buildTicketSetting(
                            amount: 10,
                            price: 100,
                            context: context,
                            title: "First Class Ticket",
                          ),
                          _buildTicketSetting(
                            amount: 10,
                            price: 100,
                            context: context,
                            title: "Business Class Ticket",
                          ),
                          _buildTicketSetting(
                            amount: 10,
                            price: 100,
                            context: context,
                            title: "Premium Economy Class Ticket",
                          ),
                          _buildTicketSetting(
                            amount: 10,
                            price: 100,
                            context: context,
                            title: "Economy Class Ticket",
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
