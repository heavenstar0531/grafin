import 'package:flutter/material.dart';
import 'package:lens_new/core/theme/app_colors.dart';
import 'package:lens_new/core/theme/color_data.dart';

class CustomLine extends CustomPainter {
  CustomLine({required this.isMiniLens, required this.isVertical});

  final bool isVertical;
  final bool isMiniLens;

  @override
  void paint(Canvas canvas, Size size) {
    late Offset p1;
    late Offset p2;
    if (isVertical) {
      p1 = Offset(size.width / 2, size.height * 1 / 6);
      p2 = Offset(size.width / 2, size.height * 5 / 6);
    } else {
      p1 = Offset(size.width * 1 / 6, size.height / 2);
      p2 = Offset(size.width * 5 / 6, size.height / 2);
    }
    final paint = Paint()
      ..color = (isVertical ? ColorData.gray[600] : AppColors.error)!
      ..strokeWidth = isMiniLens ? 0.8 : 2
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(p1, p2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
