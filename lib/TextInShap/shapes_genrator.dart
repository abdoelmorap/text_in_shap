import 'dart:math';
import 'dart:ui';

import 'package:text_in_shap/TextInShap/drawer_shapes.dart';

 class shapesGen{
  double radians(double degree) {
    return degree * pi / 180;
  }


  shapesGen({ this.radius = 200,
  this.center = Offset.zero,
  this.angle = 0});

  double radius;
  Offset center;
  double angle;
  Path createWavePath(type) {
    if(type=="up_wave_sh") {
      var path = Path();
      var size = Size(radius, 0);
      path.lineTo(
          -20, size.height); //start path with this if you are making at bottom

      var firstStart = Offset(size.width / 5, size.height + 50);
      //fist point of quadratic bezier curve
      var firstEnd = Offset(size.width / 2.35, size.height - 40.0);
      //second point of quadratic bezier curve
      path.quadraticBezierTo(
          firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

      var secondStart = Offset(size.width - (size.width / 3.24), size.height - 105);
      //third point of quadratic bezier curve
      var secondEnd = Offset(size.width, size.height - 10);
      //fourth point of quadratic bezier curve
      path.quadraticBezierTo(
          secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

      // path.lineTo(size.width, 0); //end with this path if you are making wave at bottom

      return path;
    }else if(type=="dwn_wave_sh"){
      var path = Path();
      var size = Size(400, 0);
      var secondStart = Offset(size.width/7, size.height - 105);
      //third point of quadratic bezier curve
      var secondEnd = Offset(size.width/3, size.height - 10);
      //fourth point of quadratic bezier curve
      path.quadraticBezierTo(
          secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
      //start path with this if you are making at bottom

      var firstStart = Offset(size.width -(size.width/3), size.height+100 );
      //fist point of quadratic bezier curve
      var firstEnd = Offset(size.width, size.height-100 );
      //second point of quadratic bezier curve
      path.quadraticBezierTo(
          firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);



      // path.lineTo(size.width, 0); //end with this path if you are making wave at bottom

      return path;

    }else{
      throw "Hi";
    }
  }
  Path drawPolygon(int num, {double initialAngle = 0}) {

    final Path path = Path();

      for (int i = 0; i < num; i++) {
        final double radian = radians(initialAngle + 360 / num * i.toDouble());
        final double x = radius * cos(radian);
        final double y = radius * sin(radian);
        if (i == 0) {
          path.moveTo(x, y);
        } else {
          path.lineTo(x, y);
        }
      }
      path.close();

    return path;
  }

  Path drawHeart() {
    final Path path = Path();


      path.moveTo(0, radius);

      path.cubicTo(-radius * 2, -radius * 0.5, -radius * 0.5, -radius * 1.5, 0,
          -radius * 0.5);
      path.cubicTo(
          radius * 0.5, -radius * 1.5, radius * 2, -radius * 0.5, 0, radius);


    return path;
  }

  Path drawStar(int num, {double initialAngle = 0}) {

    final Path path = Path();

      for (int i = 0; i < num; i++) {
        final double radian = radians(initialAngle + 360 / num * i.toDouble());
        final double x = radius * (i.isEven ? 0.5 : 1) * cos(radian);
        final double y = radius * (i.isEven ? 0.5 : 1) * sin(radian);
        if (i == 0) {
          path.moveTo(x, y);
        } else {
          path.lineTo(x, y);
        }
      }
      path.close();

    return path;
  }
   Path createPath(String type){
    if(type==DrawerShapes.UpWave || type==DrawerShapes.DownWave){
     return createWavePath(type);
    }else{
      switch (type) {
        case DrawerShapes.Triangle:
          return   drawPolygon(3, initialAngle: 30);
          break;
        case DrawerShapes.Diamond:
          return   drawPolygon(4, initialAngle: 0);
          break;
        case DrawerShapes.Pentagon:
          return   drawPolygon(5, initialAngle: -18);
          break;
        case DrawerShapes.Hexagon:
          return   drawPolygon(6, initialAngle: 30);
          break;
        case DrawerShapes.Octagon:
          return   drawPolygon(8, initialAngle: 30);
          break;
        case DrawerShapes.Decagon:
          return   drawPolygon(10, initialAngle: 30);
          break;
        case DrawerShapes.Dodecagon:
          return   drawPolygon(12, initialAngle: 30);
          break;
        case DrawerShapes.Heart:
          return  drawHeart();
          break;
        case DrawerShapes.Star5:
          return drawStar(10, initialAngle: 15);
          break;
        case DrawerShapes.Star6:
          return  drawStar(12, initialAngle: 0);
          break;
        case DrawerShapes.Star7:
          return drawStar(14, initialAngle: 0);
          break;
        case DrawerShapes.Star8:
          return     drawStar(16, initialAngle: 0);
          break;
        default:
          return Path();
          break;
      }
    }

    }
}