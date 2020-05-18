import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class FondoInicio extends StatefulWidget {
  @override
  _FondoInicioState createState() => _FondoInicioState();
}

class _FondoInicioState extends State<FondoInicio> {
  bool mystate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.8,
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
        Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                LiteRollingSwitch(
                  //initial value
                  value: mystate,
                  textOn: 'Registrar',
                  textOff: 'Ingresar',
                  colorOn: Color(0xff00ccd1),
                  colorOff: Color(0xff00019b),
                  iconOn: Icons.assignment,
                  iconOff: Icons.person,
                  textSize: 15.0,
                  onChanged: (bool state) {
                    //Use it to manage the different states
                    print('Current State of SWITCH IS: $state');
                  },
                  onTap: () {
                    setState(() {
                      mystate = !mystate;
                    });
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                mystate ? _registroPage(context) : _loginPage(context),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

_registroPage(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return Opacity(
    opacity: 0.89,
    child: Container(
      height: 500.0,
      width: size.width * 0.85,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black,
            blurRadius: 5.0,
            offset: Offset(1, 5),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Text(
              'Datos Personales',
              style: TextStyle(
                color: Colors.green,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                labelText: 'Nombres',
                labelStyle: TextStyle(color: Colors.blue),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                prefixIcon: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                labelText: 'Apellidos',
                labelStyle: TextStyle(color: Colors.blue),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                prefixIcon: Icon(
                  Icons.verified_user,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                labelText: 'Correo',
                hintStyle: TextStyle(color: Colors.black),
                hintText: 'example@gmail.com',
                labelStyle: TextStyle(color: Colors.blue),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                prefixIcon: Icon(
                  Icons.mail_outline,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                labelText: 'Contraseña',
                hintText: '*********',
                hintStyle: TextStyle(color: Colors.black),
                labelStyle: TextStyle(color: Colors.blue),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                prefixIcon: Icon(
                  Icons.vpn_key,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15.0),
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                labelText: 'Confirmar Contraseña',
                hintText: '*********',
                hintStyle: TextStyle(color: Colors.black),
                labelStyle: TextStyle(color: Colors.blue),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                prefixIcon: Icon(
                  Icons.vpn_key,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              color: Colors.indigoAccent,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'VERIFICAR',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onPressed: () {
                
              },
            ),
          ),
        ],
      ),
    ),
  );
}

_loginPage(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return Opacity(
    opacity: 0.89,
    child: Container(
      height: 500.0,
      width: size.width * 0.85,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black,
            blurRadius: 5.0,
            offset: Offset(1, 5),
          ),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: Icon(
                Icons.verified_user,
                size: 65.0,
                color: Colors.blueGrey,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Usuario',
                  labelStyle: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  prefixIcon: Icon(
                    Icons.account_circle,
                    color: Colors.black,
                  ),
                  suffixIcon: Icon(
                    Icons.accessibility_new,
                    color: Colors.black,
                  ),
                  hintText: 'example@gmail.com',
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  labelStyle: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  prefixIcon: Icon(
                    Icons.vpn_key,
                    color: Colors.black,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.black,
                  ),
                  hintText: '**********',
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              padding: EdgeInsets.symmetric(vertical: 25.0),
              width: double.infinity,
              child: RaisedButton(
                splashColor: Colors.purpleAccent,
                padding: EdgeInsets.all(12.0),
                elevation: 7.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                onPressed: () {
                  
                },
                color: Colors.lightBlue,
                child: Text(
                  'VERIFICAR',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              alignment: Alignment.center,
              child: FlatButton(
                padding: EdgeInsets.only(right: 0.0),
                splashColor: Colors.white,
                onPressed: () {

                },
                child: Text(
                  '¿Olvidaste tu contraseña?',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class FondoPaint1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    curva1(canvas, size);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  void curva1(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Color(0xfffd1400);
    paint.style = PaintingStyle
        .fill; // .stroke es para dibujar una linea y  .fill es para pintar todo
    paint.strokeWidth = 10.0;

    final path = new Path();

    /*
    (0,0)-(0,size.heigth)-(size.width,size.heigth)-(size.width,0)
     */

    path.lineTo(0, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.17,
        size.width * 0.5, size.height * 0.2);
    path.quadraticBezierTo(
        size.width * 0.85, size.height * 0.27, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    path.moveTo(0, size.height * 0.9); //salto del pincel o lapiz
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.8, size.height * 0.7,
        size.width * 0.5, size.height * 0.8);
    path.quadraticBezierTo(
        size.width * 0.2, size.height * 0.88, 0, size.height * 0.9);

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

    paint.color = Color(0xffffd1400);
    paint.style = PaintingStyle
        .fill; // .stroke es para dibujar una linea y  .fill es para pintar todo
    paint.strokeWidth = 10.0;

    final path = new Path();

    path.lineTo(0, size.height * 0.5);
    path.quadraticBezierTo(
        size.width * 0.3, size.height * 0.25, size.width, size.height * 0.25);

    path.moveTo(0, size.height * 0.9);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.47);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.8, 0, size.height * 0.9);

    canvas.drawPath(path, paint);
  }
}
