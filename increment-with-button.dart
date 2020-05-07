import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number1 = 0;
  int number2 = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button Test'),
        ),
        body: Column(
          children: [
            pressMe1(),
            pressMe2(),
            displayNumber(),
          ],
        ),
      ),
    );
  }

  void increment1() {
    setState(() {
      number1++;
    });
  }

  void increment2() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      number2++;
    });
  }

  Widget displayNumber() {
    return Container(
      margin: EdgeInsets.all(20),
      child: Text("$number1   $number2"),
    );
  }

  Widget pressMe1() {
    return Container(
      margin: EdgeInsets.all(20),
      child: FlatButton(
        child: Text('Increase Number A'),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: increment1,
      ),
    );
  }

  Widget pressMe2() {
    return Container(
      margin: EdgeInsets.all(20),
      child: FlatButton(
        child: Text('Increase Number B'),
        onPressed: increment2,
      ),
    );
  }
}
