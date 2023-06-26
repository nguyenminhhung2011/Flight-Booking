import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../domain/entities/ticket/ticket.dart';
import '../../../../domain/entities/ticket/ticket_information.dart';
import '../../../../generated/l10n.dart';
import '../../../list_flight/views/widgets/dot_custom.dart';

class TicItem extends StatelessWidget {
  final Ticket tic;
  final double? width;
  final TicketInformation ticInformation;
  const TicItem({
    super.key,
    this.width,
    required this.tic,
    required this.ticInformation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.1),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Flight${ticInformation.id.flight.id}-${tic.id}',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(fontWeight: FontWeight.w400),
              ),
              const Spacer(),
              Text(
                '${ticInformation.seatHeader}${tic.seat}',
                style: context.titleSmall.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
          Text(
            tic.name,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Fie(context, getYmdFormat(tic.dateBorn)),
              const SizedBox(width: 5.0),
              _Fie(context, '${tic.luggage} ${S.of(context).luggage}'),
            ],
          ),
        ].expand((element) => [element, const SizedBox(height: 5.0)]).toList()
          ..removeLast(),
      ),
    );
  }

  Container _Fie(BuildContext context, String tit) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        border: Border.all(width: 0.7, color: Theme.of(context).dividerColor),
        borderRadius: BorderRadius.circular(3.0),
      ),
      child: Text(
        tit,
        style: context.titleSmall.copyWith(
          fontSize: 12.0,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}

class TicItem2 extends StatelessWidget {
  final Color color;
  final Ticket tic;
  final TicketInformation ticketInformation;
  const TicItem2({
    super.key,
    required this.color,
    required this.tic,
    required this.ticketInformation,
  });

  @override
  Widget build(BuildContext context) {
    var styleText1 = context.titleSmall.copyWith(color: Colors.grey);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      child: Row(
        children: [
          Text('Flight${ticketInformation.id.flight.id}-${tic.id}',
              maxLines: 1, style: styleText1),
          DotCustom(color: color, full: false),
          Expanded(
            child: Text(
              tic.name,
              maxLines: 1,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontSize: 12.0, overflow: TextOverflow.ellipsis),
            ),
          ),
          Expanded(
            child: Text(
              tic.phoneNumber,
              maxLines: 1,
              style: context.titleSmall.copyWith(
                  fontSize: 11.0,
                  color: Colors.grey,
                  overflow: TextOverflow.ellipsis),
            ),
          ),
          _Fie(context, '${ticketInformation.seatHeader}${tic.seat}'),
          _Fie(context, '${tic.luggage} ${S.of(context).luggage}'),
          Text(DateFormat.yMd().format(tic.dateBorn), style: styleText1),
          Container(
            width: 20.0,
            height: 20.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://pipedream.com/s.v0/app_mWnhBo/logo/orig',
                ),
              ),
            ),
          ),
        ]
            .expand((element) => [
                  element,
                  const SizedBox(
                    width: 5.0,
                  )
                ])
            .toList()
          ..removeLast(),
      ),
    );
  }

  Container _Fie(BuildContext context, String tit) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        border: Border.all(width: 0.7, color: Theme.of(context).dividerColor),
        borderRadius: BorderRadius.circular(3.0),
      ),
      child: Text(
        tit,
        style: context.titleSmall.copyWith(
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}

class TicItem3 extends StatefulWidget {
  final double? width;
  final Function(TapDownDetails, Offset) onPress;
  const TicItem3({
    super.key,
    this.width,
    required this.onPress,
  });

  @override
  State<TicItem3> createState() => _TicItem3State();
}

class _TicItem3State extends State<TicItem3> {
  final mywidgetkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (positonClic) {
        RenderBox renderbox =
            mywidgetkey.currentContext!.findRenderObject() as RenderBox;
        Offset position = renderbox.localToGlobal(Offset.zero);

        widget.onPress(positonClic, position);
      },
      child: Container(
        key: mywidgetkey,
        width: widget.width ?? double.infinity,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Theme.of(context).cardColor,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor.withOpacity(0.1),
              blurRadius: 10.0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'DA-4301',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                Text(
                  'B10',
                  style: context.titleSmall.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
            Text(
              'Nguyen Minh Hung',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _Fie(context, '20/11/2002'),
                const SizedBox(width: 5.0),
                _Fie(context, '2 ${S.of(context).luggage}'),
              ],
            ),
          ].expand((element) => [element, const SizedBox(height: 5.0)]).toList()
            ..removeLast(),
        ),
      ),
    );
  }

  Container _Fie(BuildContext context, String tit) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        border: Border.all(width: 0.7, color: Theme.of(context).dividerColor),
        borderRadius: BorderRadius.circular(3.0),
      ),
      child: Text(
        tit,
        style: context.titleSmall.copyWith(
          fontSize: 12.0,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
