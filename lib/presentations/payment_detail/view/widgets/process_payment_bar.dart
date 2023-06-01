import 'package:flutter/material.dart';

class ProgressPaymentBar extends StatefulWidget {
  const ProgressPaymentBar({super.key});

  @override
  State<ProgressPaymentBar> createState() => _ProgressPaymentBarState();
}

class _ProgressPaymentBarState extends State<ProgressPaymentBar> {
  Widget _buildProgressPaymentComponent() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2, color: Theme.of(context).primaryColor),
          ),
          child: Icon(
            Icons.done,
            color: Theme.of(context).primaryColor,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          "Confirm",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w500,
              ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildProgressPaymentComponent(),
        _buildProgressPaymentComponent(),
        _buildProgressPaymentComponent(),
      ],
    );
  }
}
