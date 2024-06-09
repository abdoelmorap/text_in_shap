import 'package:draw_on_path/draw_on_path.dart';
import 'package:flutter/material.dart';
import 'package:text_in_shap/TextInShap/shapes_genrator.dart';

class TextInShape extends CustomPainter {


  bool showPath=true;
  final Color shapeColor;
  bool autoSpacing=false;
  bool isClosed=false;
  final  String type;
  final double letterSpacing ;
  final String text;
  final double size;
  final double strokeWidth;
  final TextStyle textStyle;

  bool textOrPattern=false;
  TextInShape({required this.text, required this.type,this.letterSpacing=1.5,this.size=200,
    this.strokeWidth=34,

  required this.textStyle,this.shapeColor=Colors.grey} );




  @override
  void paint(Canvas canvas, Size size) {
    if (showPath) {
      canvas.drawPath(ShapesGenrator(radius: this.size).createPath(type), Paint()
        ..color =  shapeColor
        ..strokeWidth = strokeWidth
        ..style = PaintingStyle.stroke);
    }

    if (textOrPattern) {
      canvas.drawOnPath(ShapesGenrator(radius: this.size).createPath(type), _drawAtElement, spacing: letterSpacing == 0 ? 70 : letterSpacing);
    } else {
      canvas.drawTextOnPath(
        text,
        ShapesGenrator(radius: this.size).createPath(type),
        textStyle: textStyle,
        autoSpacing: autoSpacing,
        isClosed: isClosed,
        letterSpacing: letterSpacing,
      );
    }
               // method name

  }

  void _drawAtElement(int index, Canvas canvas, Offset position) {

     Paint()
      ..color = Colors.grey
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;


  }

  @override
  bool shouldRepaint(TextInShape oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(TextInShape oldDelegate) => false;
}