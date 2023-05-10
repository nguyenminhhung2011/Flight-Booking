import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class SwiperCustom extends StatefulWidget {
  final SwiperLayout? swiperLayout;
  final SwiperController? swiperController;
  final int itemCount;
  final int? duration;
  final Widget Function(int index) itemBuilder;
  final double? width;
  final double? height;
  final double? viewPortFraction;
  final double? scale;
  final bool? autoPlay;
  final EdgeInsetsGeometry? margin;
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
    this.swiperController,
    this.margin,
  });

  @override
  State<SwiperCustom> createState() => _SwiperCustomState();
}

class _SwiperCustomState extends State<SwiperCustom> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.margin ?? const EdgeInsets.all(0.0),
      child: SizedBox(
        width: widget.width ?? double.infinity,
        height: widget.height ?? double.infinity,
        child: Swiper(
          layout: widget.swiperLayout ?? SwiperLayout.TINDER,
          controller: widget.swiperController,
          autoplay: widget.autoPlay ?? false,
          viewportFraction: widget.viewPortFraction ?? 0.8,
          scale: widget.scale ?? 0.9,
          duration: widget.duration ?? 300,
          itemCount: widget.itemCount,
          itemBuilder: (_, index) => widget.itemBuilder(index),
        ),
      ),
    );
  }
}
