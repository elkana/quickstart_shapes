import 'package:flutter/material.dart';

class ShapeCircle extends StatelessWidget {
  const ShapeCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        width: 300,
        height: 200,
        color: Colors.amberAccent,
      ),
      foregroundPainter: CirclePainter(),
    );
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 15;

    Offset center = Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(center, 100, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
