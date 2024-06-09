library textshape;

import 'package:flutter/material.dart';
import 'package:text_in_shap/TextInShap/text_in_shape.dart';


class TextShape extends Widget{


  final Color shapeColor;
  final  String type;
  final double letterSpacing ;
  final String text;
  final double size;
  final double strokeWidth;
  final TextStyle textStyle;

  bool textOrPattern=false;
  TextShape({super.key, required this.text, required this.type,this.letterSpacing=1.5,this.size=200,
    this.strokeWidth=34,

    required this.textStyle,this.shapeColor=Colors.grey} );
  
  @override
  Element createElement() {
   return StatelessElement(Container(child: CustomPaint(
       painter: TextInShape(   text:   text,type:  type,letterSpacing:letterSpacing,size:size,
           strokeWidth:  strokeWidth,

           textStyle:    textStyle,shapeColor:shapeColor
       )),) );
  }
}