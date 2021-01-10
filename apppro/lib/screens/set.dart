import 'package:apppro/screens/setup.dart';
import 'package:apppro/utility/my_sety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Set1 extends StatefulWidget {
  @override
  _SetState createState() => _SetState();
}

class _SetState extends State<Set1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('              My Set App'),
      ),
      body: Column(
        children: <Widget>[
          MySety().sizedBox(),
          setMotor(),
          MySety().sizedBox(),
          setwotor(),
          MySety().sizedBox(),
          setfertilizer(),
          MySety().sizedBox(),
          uploadButton(),
        ],
      ),
    );
  }
}

Widget setMotor() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 200.0,
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Moisture value',
              prefixIcon: Icon(Icons.grass),
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );

Widget setwotor() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 200.0,
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Water level',
              prefixIcon: Icon(Icons.invert_colors_on_outlined),
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );

Widget setfertilizer() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 200.0,
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Fertilizer cost',
              prefixIcon: Icon(Icons.local_florist_outlined ),
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );

Widget uploadButton() => Container(
      width: 300.0,
      child: RaisedButton(
        color: MySety().bolColor,
        onPressed: () {},
        child: Text(
          'Upload',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
