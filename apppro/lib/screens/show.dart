import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Show extends StatefulWidget {
  @override
  _ShowState createState() => _ShowState();
}

class _ShowState extends State<Show> {
  int _currentIndes = 0;
  final tabs = [
    Center(child: Text('Hello')),
    Center(child: Text('Boy')),
    Center(child: Text('My')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('           My Show Data App'),
      ),
      body: tabs[_currentIndes],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndes,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.nature_sharp),
                // ignore: deprecated_member_use
                title: Text('Soil moisture'),
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.opacity),
                // ignore: deprecated_member_use
                title: Text('Water level'),
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.filter_hdr_rounded),
                // ignore: deprecated_member_use
                title: Text('Fertilizer cost'),
                backgroundColor: Colors.green),
          ],
          onTap: (index) {
            setState(() {
              _currentIndes = index;
            });
          }),
    );
  }
}
