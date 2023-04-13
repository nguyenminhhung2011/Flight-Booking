import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flight_booking/presentations/list_ticket/views/widgets/rich_text_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

import '../../../../generated/l10n.dart';
import '../../../dashboard/views/dashboard_screen.dart';
import 'dot_custom.dart';

class TicketWdigetCustom extends StatelessWidget {
  const TicketWdigetCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final checAdaptive = Breakpoints.large.isActive(context);
    return ClipPath(
      clipper: DolDurmaClipper(right: 200, holeRadius: 20),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          color: Theme.of(context).cardColor,
        ),
        child: Row(
          children: [
            Expanded(
              child: AdaptiveLayouRowCol(
                child: [
                  checAdaptive
                      ? SizedBox(
                          width: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _airPIcon(context, 16.0),
                              const SizedBox(height: 10.0),
                              Text(
                                'VietNam Air',
                                maxLines: 1,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                              )
                            ],
                          ),
                        )
                      : Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _airPIcon(context, 12.0),
                            const SizedBox(width: 10.0),
                            Text(
                              'VietNam Air',
                              maxLines: 1,
                              style: Theme.of(context).textTheme.titleSmall,
                            )
                          ],
                        ),
                  checAdaptive
                      ? Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10.0),
                          width: 1,
                          height: 100.0,
                          color: Theme.of(context).dividerColor,
                        )
                      : const SizedBox(),
                  checAdaptive
                      ? Expanded(
                          child: _dataFied(context),
                        )
                      : _dataFied(context),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              width: 1,
              height: 100.0,
              decoration: DottedDecoration(
                  shape: Shape.line, linePosition: LinePosition.right),
            ),
            SizedBox(
              width: 165,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    S.of(context).startFrom,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const RichTextCustom(
                    firstText: '\$200,000',
                    secondText: ' /pax',
                  ),
                  const SizedBox(height: 20.0),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(5.0),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Text(
                        S.of(context).viewDetail,
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _dataFied(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: _columnData(context, "Friday", "03:00", "DXB", true),
            ),
            Expanded(
              flex: 3,
              child: _mid(context),
            ),
            Expanded(
                flex: 1,
                child:
                    _columnData(context, "Saturday", "04:00", "VIEs", false)),
          ],
        ),
      ],
    );
  }

  Container _airPIcon(BuildContext context, double size) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).primaryColor,
      ),
      child: Icon(
        Icons.airplanemode_active,
        color: Colors.white,
        size: size,
      ),
    );
  }

  Widget _mid(BuildContext context) {
    return Column(
      children: [
        RichTextCustom(
          firstText: S.of(context).duration,
          secondText: " 1h15m",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 10.0),
        LayoutBuilder(
          builder: (context, constraints) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const DotCustom(color: Colors.blue, full: false),
                Expanded(
                  child: Row(
                    children: [
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
                      (constraints.maxWidth > 100)
                          ? Container(
                              padding: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 1,
                                  color: Theme.of(context).dividerColor,
                                ),
                              ),
                              child: const Icon(
                                Icons.airplane_ticket_rounded,
                                color: Colors.blue,
                                size: 16.0,
                              ),
                            )
                          : const SizedBox(),
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
                    ],
                  ),
                ),
                const DotCustom(color: Colors.blue, full: true)
              ],
            );
          },
        ),
        const SizedBox(height: 10.0),
        Text(
          S.of(context).direct,
          maxLines: 1,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }

  Widget _columnData(BuildContext context, String date, String time,
      String place, bool checCross) {
    return Column(
      crossAxisAlignment:
          checCross ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          date,
          maxLines: 1,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Colors.grey,
              ),
        ),
        RichTextCustom(
          firstText: time,
          secondText: " PM",
        ),
        Text(
          place,
          maxLines: 1,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ].expand((element) => [element, const SizedBox(height: 5.0)]).toList()
        ..removeLast(),
    );
  }
}
