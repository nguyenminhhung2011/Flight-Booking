import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/button_custom.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/presentations/list_flight/views/widgets/rich_text_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

import '../../../../core/components/widgets/mobile/skeleton_custom.dart';
import '../../../../domain/entities/flight/flight.dart';
import '../../../../generated/l10n.dart';
import '../../../dashboard/views/dashboard_screen.dart';
import 'dot_custom.dart';

class FlightWidgetCustom extends StatelessWidget {
  final Flight flight;
  final Function() viewDetail;
  final Function() edit;
  final Function() delete;
  final Function() selected;
  const FlightWidgetCustom({
    super.key,
    required this.viewDetail,
    required this.edit,
    required this.flight,
    required this.delete,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    final checkAdaptive = Breakpoints.large.isActive(context);
    return InkWell(
      onTap: selected,
      child: ClipPath(
        clipper: DolDurmaClipper(right: 200, holeRadius: 20),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Theme.of(context).cardColor,
          ),
          child: Row(
            children: [
              Expanded(
                child: AdaptiveLayoutRowCol(
                  child: [
                    checkAdaptive
                        ? SizedBox(
                            width: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _airPIcon(context, 16.0),
                                const SizedBox(height: 10.0),
                                Text(
                                  flight.airline.airlineName,
                                  maxLines: 1,
                                  style: context.titleMedium.copyWith(
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
                                flight.airline.airlineName,
                                maxLines: 1,
                                style: context.titleSmall,
                              )
                            ],
                          ),
                    checkAdaptive ? _dotVertical() : const SizedBox(),
                    checkAdaptive
                        ? Expanded(
                            child: _dataField(context),
                          )
                        : _dataField(context),
                  ],
                ),
              ),
              _dotVertical(),
              SizedBox(
                width: 165,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ButtonCustom(
                      onPress: viewDetail,
                      height: 45,
                      radius: 5.0,
                      borderColor: Theme.of(context).primaryColor,
                      color: Theme.of(context).cardColor,
                      child: Text(
                        S.of(context).bookingTime,
                        style: context.titleMedium.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    SizedBox(
                      height: 35.0,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                              child: ButtonCustom(
                            height: 45,
                            onPress: edit,
                            radius: 5.0,
                            child: Text(S.of(context).edit),
                          )),
                          const SizedBox(width: 5.0),
                          Expanded(
                            child: ButtonCustom(
                              height: 45,
                              onPress: delete,
                              radius: 5.0,
                              color: Colors.red,
                              child: Text(S.of(context).delete),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _dotVertical() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      width: 1,
      height: 100.0,
      decoration: DottedDecoration(
        shape: Shape.line,
        linePosition: LinePosition.right,
      ),
    );
  }

  Column _dataField(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex: 1,
                child: _columnData(
                  context,
                  getYmdFormat(flight.timeStart),
                  getjmFormat(flight.timeStart),
                  flight.departureAirport.location,
                  true,
                )),
            Expanded(
              flex: 3,
              child: _mid(context),
            ),
            Expanded(
                flex: 1,
                child: _columnData(
                  context,
                  getYmdFormat(flight.timeEnd),
                  getjmFormat(flight.timeEnd),
                  flight.arrivalAirport.location,
                  false,
                )),
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
    final durationTime = durationBetweenDate(flight.timeStart, flight.timeEnd);
    final Color primaryColor = Theme.of(context).primaryColor;
    String durationText =
        ' ${durationTime.inHours}h${durationTime.inMinutes - durationTime.inHours * 60}m';
    return Column(
      children: [
        RichTextCustom(
          firstText: S.of(context).duration,
          secondText: durationText,
          style: context.titleSmall,
        ),
        const SizedBox(height: 10.0),
        LayoutBuilder(
          builder: (context, constraints) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DotCustom(color: primaryColor, full: false),
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
                              child: Icon(
                                Icons.airplanemode_active_sharp,
                                color: primaryColor,
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
                DotCustom(color: primaryColor, full: true)
              ],
            );
          },
        ),
        const SizedBox(height: 10.0),
        Text(
          S.of(context).direct,
          maxLines: 1,
          style: context.titleSmall,
        ),
      ],
    );
  }

  Widget _columnData(BuildContext context, String date, String time,
      String place, bool checkCross) {
    return Column(
      crossAxisAlignment:
          checkCross ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          date,
          maxLines: 1,
          style: context.titleSmall.copyWith(
            color: Colors.grey,
          ),
        ),
        Text(
          time,
          style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          place,
          style: context.titleSmall.copyWith(overflow: TextOverflow.ellipsis),
        ),
      ].expand((element) => [element, const SizedBox(height: 5.0)]).toList()
        ..removeLast(),
    );
  }
}

class FlightWidgetCustomSkelton extends StatelessWidget {
  const FlightWidgetCustomSkelton({super.key});

  @override
  Widget build(BuildContext context) {
    final checkAdaptive = Breakpoints.large.isActive(context);
    return ClipPath(
      clipper: DolDurmaClipper(right: 200, holeRadius: 20),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Theme.of(context).cardColor,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: AdaptiveLayoutRowCol(
                child: [
                  checkAdaptive
                      ? SkeletonContainer.rounded(
                          width: 100,
                          height: 100,
                          borderRadius: BorderRadius.circular(10.0),
                        )
                      : Row(
                          children: [
                            SkeletonContainer.rounded(
                              width: 16,
                              height: 16,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            const SizedBox(width: 10.0),
                            Expanded(
                              child: SkeletonContainer.rounded(
                                width: double.infinity,
                                height: 19,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ],
                        ),
                  SizedBox(width: checkAdaptive ? 20.0 : 0.0),
                  checkAdaptive
                      ? Expanded(
                          child: _dataField(),
                        )
                      : _dataField(),
                ],
              ),
            ),
            const SizedBox(width: 10.0),
            SkeletonContainer.rounded(
              width: 165,
              height: 100,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _dataField() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ...[1, 3, 1]
                .map(
                  (e) => Expanded(
                    flex: e,
                    child: SkeletonContainer.rounded(
                      width: double.infinity,
                      height: 100,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                )
                .expand((element) => [element, const SizedBox(width: 10.0)])
          ],
        ),
      ],
    );
  }
}
