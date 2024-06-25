import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class MyPainter extends CustomPainter {
  double secondX;
  double secondY;
  double minutX;
  double minutY;
  double hourX;
  double hourY;

  MyPainter(
      {required this.secondX,
      required this.secondY,
      required this.minutX,
      required this.minutY,
      required this.hourX,
      required this.hourY});

  @override
  void paint(Canvas canvas, Size size) {
    var pencil = Paint();
    pencil.color = Colors.indigo;
    pencil.style = PaintingStyle.fill;

    canvas.drawCircle(Offset(0, 0), 120, pencil);

    var pencilCircle = Paint();
    pencilCircle.color = Colors.grey.shade300;
    pencilCircle.style = PaintingStyle.stroke;
    pencilCircle.strokeWidth = 15;

    canvas.drawCircle(Offset(0, 0), 120, pencilCircle);

    //second
    var secondMillPencil = Paint();
    secondMillPencil.color = Colors.amber;
    secondMillPencil.style = PaintingStyle.stroke;
    secondMillPencil.strokeWidth = 7;
    secondMillPencil.strokeJoin = StrokeJoin.round;
    var secondMill = Path();
    secondMill.moveTo(0,0);
    secondMill.lineTo(secondX,secondY);
    secondMill.close();
    canvas.drawPath(secondMill, secondMillPencil);
    //minut
    var minutMillPencil = Paint();
    minutMillPencil.color = Colors.pink;
    minutMillPencil.style = PaintingStyle.stroke;
    minutMillPencil.strokeWidth = 12;
    minutMillPencil.strokeJoin = StrokeJoin.round;
    var minutMill = Path();
    minutMill.moveTo(0,0);
    minutMill.lineTo(minutX,minutX);
    minutMill.close();
    canvas.drawPath(minutMill, minutMillPencil);
    //hour
    var hourMillPencil = Paint();
    hourMillPencil.color = Colors.green;
    hourMillPencil.style = PaintingStyle.stroke;
    hourMillPencil.strokeWidth = 18;
    hourMillPencil.strokeJoin = StrokeJoin.round;
    var hourMill = Path();
    hourMill.moveTo(0, 0);
    hourMill.lineTo(hourX,hourY);

    hourMill.close();
    canvas.drawPath(hourMill, hourMillPencil);

    var smallCircle = Paint();
    smallCircle.color = Colors.grey.shade300;
    smallCircle.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(0, 0), 15, smallCircle);
  }

  @override
  bool shouldRepaint(covariant MyPainter oldDelegate) {
    return false;
  }
}
