import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class RPSCustomPainterLogIn extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width,0);
    path_0.lineTo(0,0);
    path_0.lineTo(0,size.height*0.9997658);
    path_0.cubicTo(size.width*0.1918192,size.height*0.7757544,size.width*0.5671282,size.height*0.6235864,size.width*0.9987179,size.height*0.6235864);
    path_0.lineTo(size.width,size.height*0.6235864);
    path_0.lineTo(size.width,0);
    path_0.close();

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(Offset(size.width*-3.230308e-7,size.height*0.4054927), Offset(size.width*1.254631,size.height*0.9201179), [Color(0xff21ABA5).withOpacity(1),Color(0xff163A5F).withOpacity(1)], [0,1]);
    canvas.drawPath(path_0,paint_0_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}


class RPSCustomPainterProfile extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(Offset(size.width*-0.000001755995,size.height*0.3043912), Offset(size.width*0.8892718,size.height*1.376921), [Color(0xff21ABA5).withOpacity(1),Color(0xff163A5F).withOpacity(1)], [0,1]);
    canvas.drawRect(Rect.fromLTWH(0,0,size.width,size.height*1.023529),paint_0_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}