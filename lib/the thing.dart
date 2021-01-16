import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  double height;
  double width;
  String conatin;
  AlignmentGeometry start;
  AlignmentGeometry end;
  MyButton({
    Key key,
    this.height,
    this.width,
    this.conatin,
    this.start,
    this.end,
  }) : super(key: key);
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  List<Color> myColors1 = [
    Colors.purpleAccent[100],
    Colors.lightBlueAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: AlwaysStoppedAnimation(15 / 360),
      child: ClipPath(
        clipper: MyCustomClipper(),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: myColors1,
                  begin: widget.start,
                  end: widget.end)),
          width: widget.width,
          height: widget.height,
          
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var controlPoint1 = Offset(0, size.height * 0.1);
    var controlPoint2 = Offset(size.width * 0.5, size.height * 0.7);
    var endPoint = Offset(size.width * 0.15, size.height * 0.975);
    var controlPoint3 = Offset(size.width, size.height * 0.7);
    var controlPoint4 = Offset(size.width * 0.5, size.height * 0.2);
    var startPoint = Offset(size.width * 0.9, size.height * 0.0375);
    Path path = Path()
      ..moveTo(startPoint.dx, startPoint.dy)
      ..cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
          controlPoint2.dy, endPoint.dx, endPoint.dy)
      ..cubicTo(controlPoint3.dx, controlPoint3.dy, controlPoint4.dx,
          controlPoint4.dy, startPoint.dx, startPoint.dy)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
