import 'package:flutter/material.dart';

class ListMemberQuickView extends StatelessWidget {
  final List<String> listImage;
  final int length;
  final double? size;
  const ListMemberQuickView({
    Key? key,
    required this.listImage,
    required this.length,
    this.size,
  }) : super(key: key);
  @override
  // int length = listImage.length > 3 ? 3 : listImage.length;
  Widget build(BuildContext context) {
    return Stack(
      children: [
        for (int i = 0; i <= 2; i++)
          Container(
            width: size ?? 24,
            height: size ?? 24,
            margin: EdgeInsets.only(
                left: ((size != null ? (size! / 2) + 2 : 14) * i) * 1.0),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(listImage[i]),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                ),
              ],
            ),
          ),
        (listImage.length > 3)
            ? Container(
                width: size ?? 24,
                height: size ?? 24,
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    left: ((size != null ? (size! / 2) + 2 : 14) * 3) * 1.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).shadowColor,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Text(
                  '+${listImage.length - 3}',
                  style: TextStyle(
                    color: Theme.of(context).cardColor,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
