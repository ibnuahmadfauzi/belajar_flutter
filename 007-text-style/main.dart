import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Text Style")),
        body: Center(
          child: Text(
            "ini adalah text",
            style: TextStyle(
              fontFamily: "Quicksand",
              fontWeight: FontWeight.w900,
              fontSize: 40,
              decoration: TextDecoration.overline,
              decorationColor: Colors.blue,
              decorationThickness: 5,
            ),
          ),
        ),
      ),
    );
  }
}
