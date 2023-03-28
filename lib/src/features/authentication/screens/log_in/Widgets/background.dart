import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width*0.9710145,size.height*0.000031260);
    path_0.lineTo(size.width*0.00008551,size.height*0.000031260);
    path_0.lineTo(size.width*0.00008551,size.height*0.9717807);
    path_0.cubicTo(size.width*0.2096845,size.height*0.7561306,size.width*0.5632367,size.height*0.6096423,size.width*0.9698068,size.height*0.6096423);
    path_0.lineTo(size.width*1.9710145,size.height*0.6096423);
    path_0.lineTo(size.width*0.9710145,size.height*0.009331260);
    path_0.close();

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(Offset(size.width*0.02898551,size.height*0.3996890), Offset(size.width*1.210884,size.height*0.8951058), [Color(0xff21ABA5).withOpacity(1),Color(0xff163A5F).withOpacity(1)], [0,1]);
    canvas.drawPath(path_0,paint_0_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}