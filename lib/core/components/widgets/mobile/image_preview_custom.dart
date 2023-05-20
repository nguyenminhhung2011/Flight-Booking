import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import '../../../constant/constant.dart';

class ImagePreviewCustom extends StatefulWidget {
  final List<String> images;
  const ImagePreviewCustom({
    super.key,
    required this.images,
  });

  @override
  State<ImagePreviewCustom> createState() => _ImagePreviewCustomState();
}

class _ImagePreviewCustomState extends State<ImagePreviewCustom> {
  final ValueNotifier<int> _indexPage = ValueNotifier<int>(0);

  void onPageChange(int index) {
    _indexPage.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          PageView.builder(
            itemCount: widget.images.length,
            onPageChanged: onPageChange,
            itemBuilder: (_, index) => Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(widget.images[index]),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    colors: [
                      Theme.of(context).shadowColor.withOpacity(0.2),
                      Theme.of(context).shadowColor.withOpacity(0.3)
                    ],
                  )),
                ),
              ],
            ),
          ),
          ValueListenableBuilder<int>(
            valueListenable: _indexPage,
            builder: (context, indexPage, child) {
              return Align(
                alignment: Alignment.bottomCenter,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: mockDataImag
                        .mapIndexed((index, e) => FastImagePreview(
                            imageUrl: e, isView: index == indexPage))
                        .toList()
                        .expand(
                            (element) => [element, const SizedBox(width: 5.0)])
                        .toList(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class FastImagePreview extends StatelessWidget {
  final String imageUrl;
  final bool isView;
  final Function()? onPress;
  const FastImagePreview({
    super.key,
    required this.imageUrl,
    required this.isView,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: isView ? 80 : 60,
        height: isView ? 50 : 30,
        margin: const EdgeInsets.only(bottom: 10.0),
        decoration: BoxDecoration(
          border: Border.all(width: 1.5, color: Theme.of(context).primaryColor),
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
