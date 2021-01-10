import 'dart:math';

import 'package:apppro/main.dart';
import 'package:apppro/screens/home1.dart';
import 'package:apppro/utility/my_sety.dart';
import 'package:apppro/utility/normai.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              MySety().showlogo(),
              MySety().mySizedBox(),
              MySety().showti('Welcome'),
              MySety().mySizedBox(),
              userfrom(),
              MySety().mySizedBox(),
              passwordfrom(),
              MySety().mySizedBox(),
              myButtonlogin(),
            ],
          ),
        ),
      ),
    );
  }

  Widget myButtonlogin() => Container(
        width: 250.0,
        child: RaisedButton(
          color: MySety().foneColor,
          onPressed: () {
            if (email == null ||
                email.isEmpty ||
                password == null ||
                password.isEmpty) {
              normai(context, 'Please enter correct information.');
            } else {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Homee()));
            }
          },
          child: Text('LOGIN'),
        ),
      );

  Widget userfrom() => Container(
        width: 250.0,
        child: TextField(
          onChanged: (value) => email = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.email),
            labelStyle: TextStyle(color: MySety().darkColor),
            labelText: 'E-mail',
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MySety().darkColor)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MySety().foneColor)),
          ),
        ),
      );

  Widget passwordfrom() => Container(
        width: 250.0,
        child: TextField(
          onChanged: (value) => password = value.trim(),
          obscureText: true,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.vpn_key),
            labelStyle: TextStyle(color: MySety().darkColor),
            labelText: 'password',
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MySety().darkColor)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MySety().foneColor)),
          ),
        ),
      );
  Widget buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: .0,
        onPressed: () {
          if (email == null ||
              email.isEmpty ||
              password == null ||
              password.isEmpty) {
            normai(context, 'Please enter correct information.');
          } else {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Homee()));
          }
        },
        padding: EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Color(0xFF527DAA),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }
}
