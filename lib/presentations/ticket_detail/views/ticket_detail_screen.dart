import 'package:collection/collection.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

import '../../../core/config/color_config.dart';
import '../../list_ticket/views/widgets/ticket_wdiget_custom.dart';

class TicketDetailScreen extends StatelessWidget {
  const TicketDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> chairCharacyer = ['A', 'B', 'C', 'D'];
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Row(
        children: [
          _main(context),
          Breakpoints.large.isActive(context)
              ? _sup(context, chairCharacyer)
              : const SizedBox(),
        ],
      ),
    );
  }

  Container _sup(BuildContext context, List<String> chairCharacyer) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(top: 10.0, right: 10.0, bottom: 10.0),
      width: 450,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.1),
          )
        ],
      ),
      child: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                for (int i = 0; i < 4; i++)
                  Column(
                    children: [
                      for (int t = 0; t < 6; t++)
                        ChairButton(
                          chairCharacyer: chairCharacyer,
                          text: '${chairCharacyer[i]} $t',
                          check: (i + t) % 2 == 0,
                        ),
                    ],
                  ),
              ]
                  .expandIndexed(
                    (index, element) => [
                      element,
                      index == 1
                          ? Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 400,
                                    decoration: DottedDecoration(
                                      color: Theme.of(context).dividerColor,
                                      shape: Shape.line,
                                      linePosition: LinePosition.left,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : const SizedBox()
                    ],
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Expanded _main(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Theme.of(context).primaryColor.withOpacity(0.1),
        ),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/airport.jpg'),
                ),
              ),
            ),
            ListView(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 4.5),
                TicketWdigetCustom(
                  viewDetail: () {},
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Theme.of(context).cardColor,
                  ),
                ),
              ]
                  .expand((element) => [element, const SizedBox(height: 10.0)])
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class ChairButton extends StatelessWidget {
  const ChairButton({
    super.key,
    required this.chairCharacyer,
    required this.text,
    required this.check,
  });

  final List<String> chairCharacyer;
  final String text;
  final bool check;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color:
              check ? Theme.of(context).hoverColor : CommonColor.primaryColor,
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
