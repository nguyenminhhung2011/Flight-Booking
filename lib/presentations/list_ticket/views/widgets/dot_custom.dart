import 'package:flutter/material.dart';

class DolDurmaClipper extends CustomClipper<Path> {
  DolDurmaClipper({required this.right, required this.holeRadius});

  final double right;
  final double holeRadius;

  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width - right - holeRadius, 0.0)
      ..arcToPoint(
        Offset(size.width - right, 0),
        clockwise: false,
        radius: const Radius.circular(1),
      )
      ..lineTo(size.width, 0.0)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width - right, size.height)
      ..arcToPoint(
        Offset(size.width - right - holeRadius, size.height),
        clockwise: false,
        radius: const Radius.circular(1),
      );

    path.lineTo(0.0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(DolDurmaClipper oldClipper) => true;
}

class DotCustom extends StatelessWidget {
  final Color color;
  final bool full;
  final double? radius;
  const DotCustom({
    super.key,
    required this.color,
    required this.full,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius ?? 10.0,
      width: radius ?? 10.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: full ? color : Colors.transparent,
        border: Border.all(width: 1, color: color),
      ),
    );
  }
}
