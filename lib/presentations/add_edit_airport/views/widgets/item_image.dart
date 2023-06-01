import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final Uint8List image;
  final Function() callback;

  const ItemImage({
    super.key,
    required this.image,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.memory(
            image,
            fit: BoxFit.cover,
            cacheWidth: 342,
            cacheHeight: 342,
          ),
        ),
        Positioned(
          right: 3,
          top: 3,
          child: GestureDetector(
            onTap: callback,
            child: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(Icons.close,
                    color: Theme.of(context).primaryColor, size: 16),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
