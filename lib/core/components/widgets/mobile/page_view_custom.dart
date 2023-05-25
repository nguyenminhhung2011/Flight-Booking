import 'package:collection/collection.dart';
import 'package:flight_booking/core/components/widgets/extension/color_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';

class PageViewModel {
  final String header;
  final Widget body;
  PageViewModel({
    required this.header,
    required this.body,
  });
}

class PageViewCustom extends StatefulWidget {
  final List<PageViewModel> pageView;
  final double? hPadding;
  final double? vPadding;
  final double? hMargin;
  final double? vMargin;
  final double? radius;
  final Color? besideColor;
  final Color? selectColor;
  final int? duration;
  final TextStyle? selectStyle;
  final TextStyle? unSelectStyle;
  const PageViewCustom({
    super.key,
    required this.pageView,
    this.hPadding,
    this.vPadding,
    this.hMargin,
    this.vMargin,
    this.besideColor,
    this.selectColor,
    this.duration,
    this.selectStyle,
    this.unSelectStyle,
    this.radius,
  });

  @override
  State<PageViewCustom> createState() => _PageViewCustomState();
}

class _PageViewCustomState extends State<PageViewCustom> {
  final ValueNotifier<int> _tabIndex = ValueNotifier<int>(0);
  PageController pageController =
      PageController(initialPage: 0, keepPage: true);
  void onButtonTape(int index) {
    pageController.animateToPage(index,
        duration: const Duration(seconds: 1), curve: Curves.fastOutSlowIn);
  }

  void _onChangeTab(int newIndex) {
    _tabIndex.value = newIndex;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: _tabIndex,
      builder: (context, tabIndex, child) {
        return Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: widget.hMargin ?? 0.0,
                vertical: widget.vMargin ?? 0.0,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: widget.hPadding ?? 0.0,
                vertical: widget.vPadding ?? 0.0,
              ),
              decoration: BoxDecoration(
                color: widget.besideColor ?? Theme.of(context).cardColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(widget.radius ?? 10.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).shadowColor.withOpacity(0.1),
                    blurRadius: 5.0,
                  )
                ],
              ),
              child: Row(
                children: [
                  ...widget.pageView.mapIndexed((index, e) {
                    final buttonColor = tabIndex == index
                        ? widget.selectColor ?? Theme.of(context).primaryColor
                        : Colors.transparent;
                    return Expanded(
                      child: GestureDetector(
                        onTap: () {
                          _onChangeTab(index);
                          onButtonTape(index);
                        },
                        child: AnimatedContainer(
                          duration:
                              Duration(microseconds: widget.duration ?? 300),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(widget.radius ?? 10.0),
                              color: buttonColor),
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            e.header,
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: widget.selectStyle ??
                                context.titleMedium.copyWith(
                                  fontWeight: FontWeight.w600,
                                  overflow: TextOverflow.ellipsis,
                                  color: tabIndex == index
                                      ? Colors.white
                                      : Theme.of(context)
                                          .scaffoldBackgroundColor
                                          .fontColorByBackground,
                                ),
                          ),
                        ),
                      ),
                    );
                  })
                ],
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                physics: const BouncingScrollPhysics(
                  parent: NeverScrollableScrollPhysics(),
                ),
                itemCount: widget.pageView.length,
                itemBuilder: (context, index) => widget.pageView[index].body,
              ),
            ),
          ]
              .expand((element) => [const SizedBox(height: 10.0), element])
              .toList(),
        );
      },
    );
  }
}
