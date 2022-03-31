import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/styles/colors/colors_views.dart';

class Progresspainter extends CustomPainter {
  Progresspainter({required this.load});

  double load;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.strokeWidth = 6;
    paint.color = ColorsSelect.txtBoSubHe;
    paint.style = PaintingStyle.stroke;
    Offset offset = Offset(size.width / 2, size.height * 0.5);
    canvas.drawCircle(offset, size.width * 0.48, paint);

    final paint2 = Paint();
    paint2.strokeWidth = 6;
    paint2.style = PaintingStyle.stroke;
    paint2.color = ColorsSelect.paginatorNext;

    Offset offset2 = Offset(size.width * 0.50, size.height * 0.50);
    double porcentaje = pi * 2 * (load / 100.0);
    Rect rect = Rect.fromCircle(center: offset2, radius: size.width * 0.48);
    canvas.drawArc(rect, -pi / 2, porcentaje, false, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
