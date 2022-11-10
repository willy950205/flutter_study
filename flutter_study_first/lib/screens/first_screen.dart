// lib/screens/first_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_study_first/screens/second_screen.dart';

class FirstScreen extends StatefulWidget {
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int count = 0;

  void increase() {
    setState(() {
      count += 1;
    });
  }

  void decrease() {
    setState(() {
      count -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('카운터 앱'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '이주연 바보 X $count',
            style: TextStyle(fontSize: 25),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: decrease, child: Text('-감소')),
              ElevatedButton(onPressed: increase, child: Text('+증가'))
            ],
          )
        ],
      )),
    );
  }
}
