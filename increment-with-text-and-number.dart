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

  final myController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button Test with Text Input'),
        ),
        body: Column(
          children: [
            pressMe1(),
            TextField(controller: myController),
            displayNumberAndText(),
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

  Widget displayNumberAndText() {
    return Container(
      margin: EdgeInsets.all(20),
      child: Text("$number1   ${myController.text}"),
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
}
