class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;

  void tambahAngka() {
    setState(() {
      number = number + 1;
    });
  }

  void kurangAngka() {
    setState(() {
      if (number <= 0) {
        number = 0;
      } else {
        number = number - 1;
      }
    });
  }

  void resetAngka() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Stateful Widget")),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.toString(),
                  style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      child: Text(
                        "+",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: tambahAngka,
                    ),
                    ElevatedButton(
                      child: Text(
                        "reset",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: resetAngka,
                    ),
                    ElevatedButton(
                      child: Text(
                        "-",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: kurangAngka,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
