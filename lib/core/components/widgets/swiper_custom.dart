import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

import '../../config/color_config.dart';

class SwiperCustom extends StatefulWidget {
  final SwiperLayout? swiperLayout;
  final int itemCount;
  final int? duration;
  final Widget Function(int index) itemBuilder;
  final double? width;
  final double? height;
  final double? viewPortFraction;
  final double? scale;
  final double? spacingItem;
  final bool? autoPlay;
  final bool? isShowSlideDot;
  final bool? isCenterSlideDot;
  final bool swipperOnly;
  final EdgeInsetsGeometry? margin;
  final SwiperController? controller;
  const SwiperCustom({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.width,
    this.height,
    this.viewPortFraction,
    this.scale,
    this.duration,
    this.autoPlay,
    required this.swiperLayout,
    this.margin,
    this.isShowSlideDot = true,
    this.isCenterSlideDot = true,
    this.spacingItem,
    this.swipperOnly = false,
    this.controller,
  });

  @override
  State<SwiperCustom> createState() => _SwiperCustomState();
}

class _SwiperCustomState extends State<SwiperCustom> {
  late SwiperController swiperController;
  late ValueNotifier<int> index;

  @override
  void initState() {
    super.initState();
    swiperController = widget.controller ?? SwiperController();
    index = ValueNotifier<int>(0);
    swiperController.addListener(_listenSwiperChange);
  }

  @override
  void dispose() {
    index.dispose();
    swiperController.dispose();
    swiperController.removeListener(_listenSwiperChange);
    super.dispose();
  }

  void _listenSwiperChange() {
    // index.value = swiperController.index;
    //do nothing
  }

  void changeView(int newIndex) {
    index.value = newIndex;
    swiperController.move(newIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.margin ?? const EdgeInsets.all(0.0),
      child: widget.swipperOnly
          ? _swiper()
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _swiper(),
                if (widget.isShowSlideDot!)
                  ValueListenableBuilder<int>(
                    valueListenable: index,
                    builder: (context, currentIndex, child) => Row(
                        mainAxisAlignment: widget.isCenterSlideDot!
                            ? MainAxisAlignment.center
                            : MainAxisAlignment.start,
                        children: [
                          for (int i = 0; i < widget.itemCount; i++)
                            BuildIndicator(
                              isActive: i == currentIndex,
                              onPress: () => changeView(i),
                            )
                        ]),
                  )
              ]
                  .expand((element) => [
                        element,
                        SizedBox(height: widget.spacingItem ?? 5.0),
                      ])
                  .toList()
                ..removeLast(),
            ),
    );
  }

  SizedBox _swiper() {
    return SizedBox(
      width: widget.width ?? double.infinity,
      height: widget.height ?? double.infinity,
      child: Swiper(
        onIndexChanged: (newIndex) => index.value = newIndex,
        layout: widget.swiperLayout ?? SwiperLayout.TINDER,
        controller: swiperController,
        autoplay: widget.autoPlay ?? false,
        viewportFraction: widget.viewPortFraction ?? 0.8,
        scale: widget.scale ?? 0.9,
        duration: widget.duration ?? 300,
        itemCount: widget.itemCount,
        itemBuilder: (_, index) => widget.itemBuilder(index),
      ),
    );
  }
}

class BuildIndicator extends StatelessWidget {
  final Function() onPress;
  final bool isActive;
  const BuildIndicator({
    super.key,
    required this.onPress,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 10,
        width: isActive ? 30 : 10,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          //container with border
          color: isActive
              ? Theme.of(context).primaryColor
              : Theme.of(context).primaryColor.withOpacity(0.2),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          boxShadow: const [
            BoxShadow(
                color: Colors.black38, offset: Offset(2, 3), blurRadius: 3)
          ],
        ),
      ),
    );
  }
}
