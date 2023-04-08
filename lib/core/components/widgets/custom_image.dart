import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.imageUrl,
    this.height,
    this.width,
    this.fit,
    this.useExtendedImage = true,
    this.color,
  });
  final String imageUrl;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final bool useExtendedImage;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    var isSvgImage = imageUrl.split('.').last == 'svg';

    final cacheWidth =
        width != null && (width ?? 0) > 0 ? (width! * 2.5).toInt() : 400;

    if (imageUrl.contains('http')) {
      if (isSvgImage) {
        return SvgPicture.network(
          imageUrl,
          width: width,
          height: height,
          fit: fit ?? BoxFit.contain,
          color: color,
        );
      }
      if (useExtendedImage) {
        return ExtendedImage.network(
          imageUrl,
          width: width,
          height: height,
          fit: fit,
          cacheWidth: cacheWidth,
          color: color,
          loadStateChanged: (state) {
            switch (state.extendedImageLoadState) {
              case LoadState.completed:
                return state.completedWidget;
              case LoadState.failed:
                return const SizedBox();
              case LoadState.loading:
              default:
                return const SizedBox();
            }
          },
        );
      }

      return Image.network(
        imageUrl,
        width: width,
        height: height,
        fit: fit,
        cacheWidth: cacheWidth,
        color: color,
        errorBuilder: (context, error, stackTrace) {
          return const SizedBox();
        },
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return const SizedBox();
        },
      );
    }

    if (isSvgImage) {
      return SvgPicture.asset(
        imageUrl,
        width: width,
        height: height,
        fit: fit ?? BoxFit.contain,
        color: color,
      );
    }

    if (useExtendedImage) {
      return ExtendedImage.asset(
        imageUrl,
        height: height,
        width: width,
        fit: fit,
        cacheWidth: cacheWidth,
        color: color,
      );
    }
    return Image.asset(
      imageUrl,
      height: height,
      width: width,
      fit: fit,
      cacheWidth: cacheWidth,
      color: color,
    );
  }
}
