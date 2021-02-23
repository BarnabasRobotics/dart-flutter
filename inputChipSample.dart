/// Flutter code sample for InkWell

// Tap the container to cause it to grow. Then, tap it again and hold before
// the widget reaches its maximum size to observe the clipped ink splash.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double sideLength = 50;
  bool flag1 = false;
  bool flag2 = false;
  bool _selected1 = false;


  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        const SizedBox(height: 20),
        buildRow(),

        buildChip("My First Letter Set"),      
      ],
    );  
  }
  
  Widget buildChip(String LetterSet) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: InputChip(
        selected: _selected1,
        label: Text(LetterSet),
        deleteButtonTooltipMessage: "Edit",
        onDeleted: () {
          setState(() {
            flag1 = !flag1;
          });        
        },
        deleteIcon: Icon(Icons.create_outlined),
        onPressed: () {
          setState(() {
            _selected1 = !_selected1;
          });
        },
      )
    );
  }
  
  Widget buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        buildBox1(),
        const SizedBox(width: 8),
      ],      
    );
  }
 
  Widget buildBox1() {
    return AnimatedContainer(
      height: sideLength,
      width: sideLength,
      duration: Duration(seconds: 2),
      curve: Curves.easeIn,
      child: Material(
        color: flag1 ? Colors.blue : Colors.yellow,
        child: InkWell(
          onTap: () {
            setState(() {
              flag1 = !flag1;
            });
          },
        ),
      ),
    );
  }
  

  
}


