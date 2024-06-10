
# text_in_shap

How To Use "text_in_shap" You Can Just Call Widget Text Shape And Boom put  Text You Want To Your Shape.

## Getting Started
Add To your pubspec.yaml File


     text_in_shap: <Current Version>

Then

## **Import**




     import  'package:text_in_shap/TextInShap/drawer_shapes.dart';
       import 'package:text_in_shap/text_shape.dart';  

Just Call Widget "TextShape" And Add You Customized Attributes


     TextShape(text,type,letterSpacing,size, strokeWidth,textStyle,shapeColor );  

Example


     TextShape(text: "text",    type: DrawerShapes.downWave, textStyle: TextStyle()),  


To Select Some Shape
just spec type like

    TextShape(text: "text", type: DrawerShapes.downWave//here , textStyle: TextStyle()), 

Shape List



      type: DrawerShapes.upWave, // Wave up 
      type: DrawerShapes.downWave, // Wave Down 
      type: DrawerShapes.heart, // Heart Shape 
      type: DrawerShapes.star5, // Star with 5 Edges 
      type: DrawerShapes.star6, // Star with 6 Edges  
      type: DrawerShapes.star7, // Star with 7 Edges 
      type: DrawerShapes.star8, // Star with 8 Edges  
      type: DrawerShapes.triangle, // Triangle Shape 
      type: DrawerShapes.diamond, // diamond Shape  
      type: DrawerShapes.pentagon, // pentagon Shape 
      type: DrawerShapes.hexagon, // hexagon Shape 
      type: DrawerShapes.octagon, // octagon Shape 
      type: DrawerShapes.decagon, // decagon Shape 
      type: DrawerShapes.dodecagon, //dodecagon Shape  


To Customize Some Font


    TextShape(text: "text", type: DrawerShapes.downWave , textStyle: TextStyle( fontSize: 40, foreground: Paint() ..shader = ui.Gradient.linear( const Offset(0, 20), const Offset(150, 20), <Color>[ Colors.red, Colors.yellow, ], )//example Font With Some Gradient),



**

## Result Will Be

**

Nice Shape With Text Like This   
![Screenshot_20240609_055005](https://github.com/abdoelmorap/text_in_shap/assets/51962828/8f31315b-9058-4b09-8cff-21ccdc4b6387)
