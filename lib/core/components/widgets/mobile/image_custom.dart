import 'package:flutter/material.dart';

class ImageCustom extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final double? radius;
  final BoxFit? fit;
  final bool isNetworkImage;
  final Color? color;
  const ImageCustom({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.radius,
    this.fit,
    required this.isNetworkImage,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    if (isNetworkImage) {
      return Image.network(
        imageUrl,
        width: width ?? 50.0,
        height: width ?? 50.0,
        fit: fit ?? BoxFit.cover,
        color: color,
      );
    }
    return Image.asset(
      imageUrl,
      width: width ?? 50.0,
      height: width ?? 50.0,
      fit: BoxFit.cover,
      color: color,
    );
  }
}
