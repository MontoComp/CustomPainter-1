import 'package:flutter/material.dart';

class IntroHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.7,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: CustomPaint(
              painter: FondoPaint1(),
            ),
          ),
        ),
        Opacity(
          opacity: 0.4,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: CustomPaint(
              painter: FondoPaint2(),
            ),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: CustomPaint(
              painter: FondoPaint3(),
            ),
          ),
        ),
      ],
    ));
  }
}





class FondoPaint1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    curva2(canvas, size);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  void curva2(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Color(0xffa000b9);
    paint.style = PaintingStyle
        .fill; // .stroke es para dibujar una linea y  .fill es para pintar todo
    paint.strokeWidth = 10.5;

    final path = new Path();

    /*
    (0,0)-(0,size.heigth)-(size.width,size.heigth)-(size.width,0)
     */

    path.lineTo(0, size.height * 0.21);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.17,
        size.width * 0.5, size.height * 0.2);
    path.quadraticBezierTo(
        size.width * 0.85, size.height * 0.27, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    path.moveTo(0, size.height * 0.8); //salto del pincel o lapiz
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.8, size.height * 0.7,
        size.width * 0.5, size.height * 0.8);
    path.quadraticBezierTo(
        size.width * 0.2, size.height * 0.88, 0, size.height * 0.8);

    canvas.drawPath(path, paint); //esto es lo que permite que se dibuje todo
  }
}

class FondoPaint2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    curva1(canvas, size);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  //
  void curva1(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Color(0xffa000b9);
    paint.style = PaintingStyle
        .fill; // .stroke es para dibujar una linea y  .fill es para pintar todo
    paint.strokeWidth = 10.5;

    final path = new Path();

    path.lineTo(0, size.height * 0.26);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.28,
        size.width * 0.5, size.height * 0.2);
    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.13, size.width, size.height * 0.2);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    path.moveTo(0, size.height * 0.74);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.84);
    path.quadraticBezierTo(size.width * 0.8, size.height * 0.92,
        size.width * 0.5, size.height * 0.8);
    path.quadraticBezierTo(
        size.width * 0.2, size.height * 0.69, 0, size.height * 0.74);

    canvas.drawPath(path, paint);
  }
}

class FondoPaint3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    curva1(canvas, size);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  //
  void curva1(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Color(0xffa000b9);
    paint.style = PaintingStyle
        .fill; // .stroke es para dibujar una linea y  .fill es para pintar todo
    paint.strokeWidth = 10.5;

    final path = new Path();

    path.lineTo(0, size.height * 0.2);
    path.quadraticBezierTo(size.width * 0.1, size.height * 0.19,
        size.width * 0.42, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.3, size.width, size.height * 0.2);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    path.moveTo(0, size.height * 0.8);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.86);
    path.quadraticBezierTo(size.width * 0.8, size.height * 0.85,
        size.width * 0.67, size.height * 0.8);
    path.quadraticBezierTo(
        size.width * 0.33, size.height * 0.64, 0, size.height * 0.8);

    canvas.drawPath(path, paint);
  }
}

class AnimationControllerClass extends StatefulWidget {
  AnimationControllerClass({Key key}) : super(key: key);

  @override
  _AnimationControllerClassState createState() =>
      _AnimationControllerClassState();
}

class _AnimationControllerClassState extends State<AnimationControllerClass>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  Animation<double> rotation;
  Animation<double> opacidad;
  Animation<double> opacidadout;

  Animation<double> mover;
  Animation<double> escalar;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 4000),
    );

    rotation = Tween(begin: 0.0, end: 4.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeOut));

    opacidad = Tween(begin: 0.1, end: 1.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.25, 1, curve: Curves.easeOut)));

    opacidadout = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.70, 1.0, curve: Curves.easeOut))); 

    mover = Tween(begin: 0.0, end: 200.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeOut));
    
    escalar = Tween(begin: 0.0, end: 2.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeOut));

    animationController.addListener(() {
      if (animationController.status == AnimationStatus.completed) {
        animationController.repeat();
        //animationController.reverse();
        //animationController.reset();
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    animationController.forward();

    return Scaffold(
      body: AnimatedBuilder(
        animation: animationController,
        child: Center(
          child: Container(
            color: Colors.redAccent,
            height: 100.0,
            width: 100.0,
          ),
        ),
        builder: (BuildContext context, Widget childrecib) {
          return Transform.translate(
            offset: Offset(mover.value,0),
            child: Transform.rotate(
              angle: rotation.value,
              child: Opacity(
                opacity: opacidad.value-opacidadout.value,
                child: Transform.scale(
                  scale: escalar.value,
                  child: childrecib
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
