import 'package:apppro/main.dart';
import 'package:apppro/screens/mode.dart';
import 'package:apppro/screens/set.dart';
import 'package:apppro/screens/show.dart';
import 'package:apppro/utility/normai.dart';
import 'package:apppro/screens/setup.dart';
import 'package:apppro/utility/my_sety.dart';
import 'package:flutter/material.dart';

class Homee extends StatefulWidget {
  @override
  _HomeeState createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('             My Home App'),
      ),
      body: Center(
        child: SingleChildScrollView(
          
          child: Column(
            
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              
              MySety().showlog(),
              MySety().mySizedBox(),
              myButtonsetup(),
              MySety().mySizedBox(),
              myButtonset(),
              MySety().mySizedBox(),
              myButtonshow(),
              MySety().mySizedBox(),
              myButtonmode(),
            ],
          ),
        ),
      ),
    );
  }

  Widget loginButton() {
    return Row(children: [
      Expanded(
        child: RaisedButton(
          color: Colors.blue,
          child: Text(
            'SetUp'.toUpperCase(),
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Setup()));
          },
        ),
      )
    ]);
  }

  Widget myButtonsetup() => Container(
        width: 300.0,
        child: RaisedButton(
          color: MySety().bolColor,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Setup()));
          },
          child: Text(
            'Setup',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      );

  Widget myButtonset() => Container(
        width: 300.0,
        child: RaisedButton(
          color: MySety().bolColor,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Set1()));
          },
          child: Text(
            'Set',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      );

  Widget myButtonshow() => Container(
        width: 300.0,
        child: RaisedButton(
          color: MySety().bolColor,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Show()));
          },
          child: Text(
            'Show',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      );

  Widget myButtonmode() => Container(
        width: 300.0,
        child: RaisedButton(
          color: MySety().bolColor,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Mode()));
          },
          child: Text(
            'Manual',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      );
}
