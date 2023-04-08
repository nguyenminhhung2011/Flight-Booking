import 'package:flutter/material.dart';

class RoundedLine extends StatelessWidget {
  final double height;
  final double width;
  final Color color;

  const RoundedLine(
      {super.key, this.height = 2, required this.width, required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: CustomPaint(
        painter: _RoundedLinePainter(color),
      ),
    );
  }
}

class _RoundedLinePainter extends CustomPainter {
  final Color color;
  final double radius = 5;

  _RoundedLinePainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = size.height + 10
      ..strokeCap = StrokeCap.round;

    final startPoint = Offset(radius, size.height / 2);
    final endPoint = Offset(size.width - radius, size.height / 2);
    final controlPoint1 = Offset(0, size.height / 2);
    final controlPoint2 = Offset(size.width, size.height / 2);

    final path = Path()
      ..moveTo(startPoint.dx, startPoint.dy)
      ..quadraticBezierTo(controlPoint1.dx, controlPoint1.dy,
          startPoint.dx - radius, startPoint.dy)
      ..lineTo(endPoint.dx + radius, endPoint.dy)
      ..quadraticBezierTo(
          controlPoint2.dx, controlPoint2.dy, endPoint.dx, endPoint.dy);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
