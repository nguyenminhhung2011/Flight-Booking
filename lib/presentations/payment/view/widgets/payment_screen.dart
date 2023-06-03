import 'package:collection/collection.dart';

import 'package:flight_booking/core/components/const/image_const.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/button_custom.dart';
import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/generated/l10n.dart';
import 'package:flight_booking/presentations_mobile/flight_history_detail/views/flight_history_detail_screen.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/widgets/mobile/flight_custom.dart';
import '../../../../presentations_mobile/flight_history_detail/views/widgets/customer_information_field.dart';
import '../../../customer/views/widgets/customer_detail_card.dart';
import '../../../payment_detail/view/widgets/process_payment_bar.dart';
import 'book_payment_tab.dart';

const _hPaddingCard = 15.0;
const _maxWidthDevice = 1200;

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).cardColor,
        iconTheme: Theme.of(context).iconTheme,
        elevation: 0,
        centerTitle: true,
        title: const ProgressPaymentBar(),
      ),
      body: SafeArea(
        child: Row(
          children: [
            if (context.widthDevice > _maxWidthDevice) ...[
              Container(
                width: 450,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: context.heightDevice,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: const [
                    TicInformation(),
                    FlightSummaryCard(),
                    CustomerTicketInformationCard(),
                    PriceSummaryCard(),
                  ],
                ),
              ),
            ],
            const Expanded(
              child: BookPaymentTab(),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentTab extends StatefulWidget {
  const PaymentTab({super.key});

  @override
  State<PaymentTab> createState() => _PaymentTabState();
}

class _PaymentTabState extends State<PaymentTab> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier<int>(0);

  void _onChangeTab(int index) {
    _selectedIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    final headerStyle = context.titleLarge
        .copyWith(fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis);

    final primaryColor = Theme.of(context).primaryColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal:
                  context.widthDevice > _maxWidthDevice ? 120 : _hPaddingCard,
            ),
            child: ListView(
              children: [
                Text(S.of(context).payment, style: headerStyle),
                const SizedBox(height: 20.0),
                Container(
                  height: context.heightDevice - 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).shadowColor.withOpacity(0.1),
                        blurRadius: 10.0,
                      )
                    ],
                  ),
                  child: Row(
                    children: [_tabIndexField(primaryColor), _tabPage()],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Expanded _tabPage() {
    final headerStyle = context.titleLarge
        .copyWith(fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis);

    final headerStyle1 = context.titleMedium
        .copyWith(fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis);
    final titStyle = context.titleMedium.copyWith(
        fontWeight: FontWeight.w500,
        color: Theme.of(context).hintColor,
        overflow: TextOverflow.ellipsis);
    final titStyle1 = context.titleSmall.copyWith(
        fontWeight: FontWeight.w500,
        color: Theme.of(context).hintColor,
        overflow: TextOverflow.ellipsis);
    final textStyle = context.titleMedium.copyWith(
      fontWeight: FontWeight.w500,
    );
    final primaryColor = Theme.of(context).primaryColor;
    return Expanded(
      child: ListView(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(22.0),
            color: primaryColor.withOpacity(0.2),
            child: Text(
              'Make payment within 03:30s',
              textAlign: TextAlign.center,
              style: titStyle.copyWith(
                color: primaryColor,
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: _hPaddingCard),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Payment Card', style: headerStyle),
                const Spacer(),
                ...[
                  ImageConst.visaIcon,
                  ImageConst.masterIcon,
                  ImageConst.cardIcon
                ]
                    .map(
                        (e) => Image.asset(e.toString(), height: 40, width: 40))
                    .expand((element) => [element, const SizedBox(width: 5.0)]),
              ],
            ),
          ),
          const SizedBox(height: 15.0)
        ],
      ),
    );
  }

  ValueListenableBuilder<int> _tabIndexField(Color primaryColor) {
    return ValueListenableBuilder<int>(
      valueListenable: _selectedIndex,
      builder: (context, selectIndex, child) {
        return Container(
          width: 250,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0)),
            color: primaryColor,
          ),
          child: ListView(
            children: [
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: _hPaddingCard),
                child: Text(S.of(context).payment, style: context.titleLarge),
              ),
              const SizedBox(height: 20.0),
              ...<Map<String, dynamic>>[
                {'text': 'Payment by card', 'icon': Icons.payment},
                {
                  'text': 'Payment at airport',
                  'icon': Icons.flight_takeoff_rounded
                }
              ].mapIndexed(
                (index, e) => _itemSelectTab(index, selectIndex, context,
                    e['text'].toString(), e['icon'] as IconData),
              )
            ],
          ),
        );
      },
    );
  }

  Stack _itemSelectTab(int index, int selectIndex, BuildContext context,
      String e, IconData icon) {
    return Stack(
      children: [
        AnimatedPositioned(
          duration: const Duration(milliseconds: 200),
          height: 69,
          width: index == selectIndex ? 250 : 0,
          left: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
          ),
        ),
        InkWell(
          onTap: () => _onChangeTab(index),
          child: ListTile(
            leading: Icon(icon),
            title: Text(e,
                style: context.titleMedium.copyWith(
                  color: Colors.white,
                )),
          ),
        ),
      ],
    );
  }
}

class TicInformation extends StatelessWidget {
  const TicInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
      ),
      child: Padding(
        padding: const EdgeInsets.all(_hPaddingCard),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.connecting_airports_rounded,
                  color: primaryColor,
                ),
                const SizedBox(width: 5.0),
                Expanded(
                  child: Text(
                    'Viet Nam air',
                    style: context.titleLarge.copyWith(
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                const SizedBox(width: 5.0),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Icon(Icons.share, color: primaryColor, size: 16.0),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Text(
              '1h 20m',
              style: context.titleSmall.copyWith(color: Colors.grey),
            ),
            const SizedBox(height: 10.0),
            TimeFlightRow(
              timeStart: DateTime.now(),
              timeEnd: DateTime.now().add(
                const Duration(hours: 14),
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              //🚑Hard code
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ...['Ho Chi Minh', 'Thailand'].map((e) => Text(
                      e,
                      style: context.titleMedium.copyWith(),
                    ))
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InformationColumnItem(
                  context: context,
                  header: S.of(context).dateStart,
                  title: getYmdFormat(
                    DateTime.now(),
                  ),
                  isStart: true,
                  titleStyle: context.titleMedium.copyWith(
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                InformationColumnItem(
                  context: context,
                  header: S.of(context).dateFinish,
                  title: getYmdFormat(
                    DateTime.now().add(
                      const Duration(hours: 14),
                    ),
                  ),
                  isStart: false,
                  titleStyle: context.titleMedium.copyWith(
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ].expand((element) => [Expanded(child: element)]).toList(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ClipPath(
                clipper: FlightClipper(),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        S.of(context).bookingCode,
                        style: context.titleSmall,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'LHPMQF',
                            style: context.titleMedium.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          const SizedBox(width: 5.0),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.copy,
                              color: Theme.of(context).primaryColor,
                              size: 16,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Text(
              S.of(context).useThisCode,
              style: context.titleSmall,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

class PriceSummaryCard extends StatelessWidget {
  const PriceSummaryCard({super.key});

  final double paddingHorizontal = 15;

  @override
  Widget build(BuildContext context) {
    final headerStyle =
        context.titleMedium.copyWith(fontWeight: FontWeight.w600);
    final titleStyle = context.titleSmall.copyWith(
      fontWeight: FontWeight.w400,
      color: Theme.of(context).hintColor,
      fontStyle: FontStyle.italic,
    );
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: _hPaddingCard),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.attach_money),
                  Text(
                    S.of(context).priceSummary,
                    style: context.titleLarge
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            _divider(context),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ADULT x 1",
                    style: context.titleMedium
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10.0),
                  ...<Map<String, dynamic>>[
                    {'header': 'Base Fare x 1', 'title': 'BDT 6.942'},
                    {'header': 'Tax x 1', 'title': 'BDT 6.942'},
                    {'header': 'Total Airfare', 'title': 'BDT 6.942'},
                  ]
                      .map(
                        (e) => Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(e['header'].toString(), style: headerStyle),
                            Text(e['title'].toString(), style: titleStyle),
                          ],
                        ),
                      )
                      .expand(
                          (element) => [element, const SizedBox(height: 5.0)])
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            _divider(context),
            const SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      S.of(context).totalAirfare,
                      style: context.titleMedium.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).primaryColor),
                    ),
                    Text(
                      "BDT 6.942",
                      style: titleStyle.copyWith(fontSize: 16.0),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Divider _divider(BuildContext context) {
    return Divider(
      color: Theme.of(context).dividerColor,
      thickness: 1,
    );
  }
}

class FlightSummaryCard extends StatelessWidget {
  const FlightSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
      ),
      child: Padding(
        padding: const EdgeInsets.all(_hPaddingCard),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "DAC - ZYL",
                  style:
                      context.titleLarge.copyWith(fontWeight: FontWeight.w600),
                ),
                TextButton.icon(
                  onPressed: () {},
                  // style: TextButton.styleFrom(),
                  icon: Icon(
                    Icons.edit,
                    color: primaryColor,
                    size: 16,
                  ),
                  label: Text(
                    S.of(context).editFlight,
                    style: context.titleSmall.copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.zero,
              leading: Image.asset(
                ImageConst.planeIcons,
                height: 40,
                fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
              ),
              title: Text(
                "Vietname Airlines",
                style: context.titleSmall.copyWith(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Boeing 737-80",
                style: context.titleSmall.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).hintColor,
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            Container(
              decoration: BoxDecoration(
                color: primaryColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Text(
                getFlightTime(
                  from: DateTime.now(),
                  to: DateTime.now().add(const Duration(hours: 3)),
                ),
                style: context.titleSmall.copyWith(
                  color: primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            SizedBox(
              width: double.infinity,
              height: 40.0,
              child: ButtonCustom(
                onPress: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.read_more),
                    const SizedBox(width: 7.0),
                    Text(
                      S.of(context).detail,
                      style: context.titleMedium.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
