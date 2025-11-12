import 'dart:math';
import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flexible Layout")),
        body: Column(
          children: [
            Flexible(
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      color: Colors.red,
                      margin: EdgeInsets.all(5),
                    ),
                    flex: 1,
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.green,
                    ),
                    flex: 1,
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.purple,
                    ),
                    flex: 1,
                  ),
                ],
              ),
              flex: 1,
            ),
            Flexible(
              child: Container(margin: EdgeInsets.all(5), color: Colors.yellow),
              flex: 2,
            ),
            Flexible(
              child: Container(margin: EdgeInsets.all(5), color: Colors.blue),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
