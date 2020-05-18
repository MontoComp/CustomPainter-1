import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class RollingLite extends StatefulWidget {
  RollingLite({Key key}) : super(key: key);

  @override
  _RollingLiteState createState() => _RollingLiteState();
}

class _RollingLiteState extends State<RollingLite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              LiteRollingSwitch(
                //initial value
                value: true,
                textOn: 'disponible',
                textOff: 'ocupado',
                colorOn: Colors.greenAccent[700],
                colorOff: Colors.redAccent[700],
                iconOn: Icons.done,
                iconOff: Icons.remove_circle_outline,
                textSize: 16.0,
                onChanged: (bool state) {
                  //Use it to manage the different states
                  print('Current State of SWITCH IS: $state');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
