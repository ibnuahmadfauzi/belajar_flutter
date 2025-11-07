class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Row & Column")),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Text 1"),
                Text("Text 2"),
                Text("Text 3"),
                Row(children: [Text("Text 4"), Text("Text 5"), Text("Text 6")]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
