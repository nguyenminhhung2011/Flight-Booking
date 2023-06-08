import 'package:collection/collection.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/presentations/payment/view/widgets/payment_at_airport_tab.dart';
import 'package:flight_booking/presentations/payment/view/widgets/payment_by_card.dart';
import 'package:flutter/material.dart';

import '../../../../core/config/common_ui_config.dart';
import '../../../../generated/l10n.dart';

const _minWidthToReplayTab = 800;
const _hPaddingCard = 15.0;
const _maxWidthDevice = 1200;

class PaymentTab extends StatefulWidget {
  final Function() onNextPage;
  const PaymentTab({super.key, required this.onNextPage});

  @override
  State<PaymentTab> createState() => _PaymentTabState();
}

class _PaymentTabState extends State<PaymentTab>
    with SingleTickerProviderStateMixin {
  final ValueNotifier<int> _selectedIndex = ValueNotifier<int>(0);
  late TabController _tabController;
  final PageController _pageController =
      PageController(initialPage: 0, keepPage: true);

  void _onChangeTab(int index) {
    _selectedIndex.value = index;
    _pageController.animateToPage(index,
        duration: const Duration(seconds: 1), curve: Curves.fastOutSlowIn);
  }

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final headerStyle = context.titleLarge
        .copyWith(fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis);

    final primaryColor = Theme.of(context).primaryColor;
    final headerStyle1 = context.titleMedium
        .copyWith(fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis);
    final titStyle = context.titleMedium.copyWith(
        fontWeight: FontWeight.w500,
        color: Theme.of(context).hintColor,
        overflow: TextOverflow.ellipsis);
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
                  height: context.heightDevice - 145,
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
                    children: [
                      if (context.widthDevice > _minWidthToReplayTab)
                        _tabIndexField(primaryColor),
                      Expanded(
                        child: ListView(
                          children: [
                            if (context.widthDevice < _minWidthToReplayTab) ...[
                              _tabHorizontal(
                                primaryColor,
                                headerStyle,
                                titStyle,
                                headerStyle1,
                              ),
                            ],
                            const SizedBox(height: 22.0),
                            ValueListenableBuilder(
                              valueListenable: _selectedIndex,
                              builder: (context, sIndex, child) => SizedBox(
                                height: context.heightDevice,
                                child: PageView.builder(
                                  pageSnapping: false,
                                  controller: _pageController,
                                  itemCount: 2,
                                  physics: const BouncingScrollPhysics(
                                    parent: NeverScrollableScrollPhysics(),
                                  ),
                                  itemBuilder: (context, index) => [
                                    PaymentByCardTab(
                                        onNextPage: widget.onNextPage),
                                    PaymentAtAirportTab(
                                        onNextPage: widget.onNextPage),
                                  ][index],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Container _tabHorizontal(Color primaryColor, TextStyle headerStyle,
      TextStyle titStyle, TextStyle headerStyle1) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: primaryColor.withOpacity(0.2),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(S.of(context).paymentOptions, style: headerStyle),
          const SizedBox(height: 10.0),
          TabBar(
            controller: _tabController,
            isScrollable: true,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: primaryColor,
            ),
            unselectedLabelStyle: titStyle,
            labelStyle: headerStyle1,
            onTap: _onChangeTab,
            tabs: [
              ...<Map<String, dynamic>>[
                {'text': 'Payment by card', 'icon': Icons.payment},
                {
                  'text': 'Payment at airport',
                  'icon': Icons.flight_takeoff_rounded
                }
              ].mapIndexed(
                (index, e) => Tab(
                  child: Row(
                    children: [
                      Icon(e['icon']),
                      const SizedBox(width: 5),
                      Text(e['text']),
                    ],
                  ),
                ),
              )
            ],
          )
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
