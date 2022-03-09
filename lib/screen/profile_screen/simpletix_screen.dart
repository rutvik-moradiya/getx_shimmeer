/*
import 'dart:ui' as ui;

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
CustomPaint(
size: Size(WIDTH, (WIDTH*1.1226666666666667).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
painter: RPSCustomPainter(),
)

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width*0.05333333,size.height*0.06413302);
    path_0.cubicTo(size.width*0.05333333,size.height*0.05101473,size.width*0.06527253,size.height*0.04038005,size.width*0.08000000,size.height*0.04038005);
    path_0.lineTo(size.width*0.9200000,size.height*0.04038005);
    path_0.cubicTo(size.width*0.9347280,size.height*0.04038005,size.width*0.9466667,size.height*0.05101473,size.width*0.9466667,size.height*0.06413302);
    path_0.lineTo(size.width*0.9466667,size.height*0.4034632);
    path_0.cubicTo(size.width*0.9466667,size.height*0.4097625,size.width*0.9438560,size.height*0.4158052,size.width*0.9388560,size.height*0.4202589);
    path_0.lineTo(size.width*0.9255227,size.height*0.4321354);
    path_0.cubicTo(size.width*0.9151093,size.height*0.4414109,size.width*0.9151093,size.height*0.4564513,size.width*0.9255227,size.height*0.4657268);
    path_0.lineTo(size.width*0.9388560,size.height*0.4776033);
    path_0.cubicTo(size.width*0.9438560,size.height*0.4820570,size.width*0.9466667,size.height*0.4880998,size.width*0.9466667,size.height*0.4943990);
    path_0.lineTo(size.width*0.9466667,size.height*0.9168646);
    path_0.cubicTo(size.width*0.9466667,size.height*0.9299834,size.width*0.9347280,size.height*0.9406176,size.width*0.9200000,size.height*0.9406176);
    path_0.lineTo(size.width*0.08000000,size.height*0.9406176);
    path_0.cubicTo(size.width*0.06527227,size.height*0.9406176,size.width*0.05333333,size.height*0.9299834,size.width*0.05333333,size.height*0.9168646);
    path_0.lineTo(size.width*0.05333333,size.height*0.4967743);
    path_0.cubicTo(size.width*0.05333333,size.height*0.4904751,size.width*0.05614293,size.height*0.4844323,size.width*0.06114373,size.height*0.4799786);
    path_0.lineTo(size.width*0.07447707,size.height*0.4681021);
    path_0.cubicTo(size.width*0.08489120,size.height*0.4588266,size.width*0.08489120,size.height*0.4437862,size.width*0.07447707,size.height*0.4345107);
    path_0.lineTo(size.width*0.06114373,size.height*0.4226342);
    path_0.cubicTo(size.width*0.05614293,size.height*0.4181805,size.width*0.05333333,size.height*0.4121378,size.width*0.05333333,size.height*0.4058385);
    path_0.lineTo(size.width*0.05333333,size.height*0.06413302);
    path_0.close();

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xffF1F1F1).withOpacity(1.0);
    canvas.drawPath(path_0,paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width*0.06000000,size.height*0.06413302);
    path_1.cubicTo(size.width*0.06000000,size.height*0.05429430,size.width*0.06895440,size.height*0.04631829,size.width*0.08000000,size.height*0.04631829);
    path_1.lineTo(size.width*0.9200000,size.height*0.04631829);
    path_1.cubicTo(size.width*0.9310453,size.height*0.04631829,size.width*0.9400000,size.height*0.05429430,size.width*0.9400000,size.height*0.06413302);
    path_1.lineTo(size.width*0.9400000,size.height*0.4034632);
    path_1.cubicTo(size.width*0.9400000,size.height*0.4081876,size.width*0.9378933,size.height*0.4127197,size.width*0.9341413,size.height*0.4160594);
    path_1.lineTo(size.width*0.9208080,size.height*0.4279359);
    path_1.cubicTo(size.width*0.9077920,size.height*0.4395321,size.width*0.9077920,size.height*0.4583302,size.width*0.9208080,size.height*0.4699264);
    path_1.lineTo(size.width*0.9341413,size.height*0.4818029);
    path_1.cubicTo(size.width*0.9378933,size.height*0.4851425,size.width*0.9400000,size.height*0.4896746,size.width*0.9400000,size.height*0.4943990);
    path_1.lineTo(size.width*0.9400000,size.height*0.9168646);
    path_1.cubicTo(size.width*0.9400000,size.height*0.9267031,size.width*0.9310453,size.height*0.9346793,size.width*0.9200000,size.height*0.9346793);
    path_1.lineTo(size.width*0.08000000,size.height*0.9346793);
    path_1.cubicTo(size.width*0.06895440,size.height*0.9346793,size.width*0.06000000,size.height*0.9267031,size.width*0.06000000,size.height*0.9168646);
    path_1.lineTo(size.width*0.06000000,size.height*0.4967743);
    path_1.cubicTo(size.width*0.06000000,size.height*0.4920499,size.width*0.06210720,size.height*0.4875178,size.width*0.06585787,size.height*0.4841781);
    path_1.lineTo(size.width*0.07919120,size.height*0.4723017);
    path_1.lineTo(size.width*0.07447707,size.height*0.4681021);
    path_1.lineTo(size.width*0.07919120,size.height*0.4723017);
    path_1.cubicTo(size.width*0.09220853,size.height*0.4607055,size.width*0.09220880,size.height*0.4419074,size.width*0.07919120,size.height*0.4303112);
    path_1.lineTo(size.width*0.06585787,size.height*0.4184347);
    path_1.cubicTo(size.width*0.06210720,size.height*0.4150950,size.width*0.06000000,size.height*0.4105629,size.width*0.06000000,size.height*0.4058385);
    path_1.lineTo(size.width*0.06000000,size.height*0.06413302);
    path_1.close();

    Paint paint_1_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.01333333;
    paint_1_stroke.color=Colors.white.withOpacity(1.0);
    canvas.drawPath(path_1,paint_1_stroke);

    Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
    paint_1_fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_1,paint_1_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}*/
