import 'package:flutter/material.dart';

class DataFied extends StatelessWidget {
  const DataFied({
    super.key,
    required this.image,
    required this.header,
    required this.data,
  });

  final String image;
  final String header;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          constraints: const BoxConstraints(maxHeight: 50, maxWidth: 50),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              color: Theme.of(context).cardColor,
              border: Border.fromBorderSide(
                BorderSide(color: Theme.of(context).cardColor),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10.0,
                  color: Theme.of(context).shadowColor.withOpacity(0.1),
                ),
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                header,
                maxLines: 1,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                data,
                maxLines: 1,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    );
  }
}
