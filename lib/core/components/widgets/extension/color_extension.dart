import 'package:flutter/material.dart';

extension ColorExtension on Color {
  Color get fontColorByBackground =>
      (computeLuminance() > 0.4) ? Colors.black : Colors.white;
}
