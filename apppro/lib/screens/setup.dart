import 'package:apppro/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

void main() => runApp(MyApp());

class Setup extends StatefulWidget {
  @override
  _SetupState createState() => _SetupState();
}

class _SetupState extends State<Setup> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('             My Setup App'),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       CustomSwitch(
      //         activeColor: Colors.pinkAccent,
      //         value: status,
      //         onChanged: (value) {
      //           print("VALUE : $value");
      //           setState(() {
      //             status = value;
      //           });
      //         },
      //       ),
      //       SizedBox(
      //         height: 12.0,
      //       ),
      //       Text(
      //         'Value : $status',
      //         style: TextStyle(color: Colors.black, fontSize: 20.0),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
