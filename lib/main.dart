import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.yellow,
        brightness: Brightness.light,
      ),
      title: "Sourav Ganguly",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  Color col = Colors.white;

  void increaseValue() {
    setState(() {
      col = Colors.yellow;
      _counter++;
    });
  }

  void decreaseValue() {
    setState(() {
      col = Colors.amberAccent;
      _counter--;
    });
  }

  void resetValue() {
    setState(() {
      col = Colors.white;
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Jai Shri Krishna",
          style: TextStyle(
            fontSize: 25.18,
            color: Colors.blue,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0,180,0,70),
              child: Text(
                "$_counter",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.89,
                  color: Colors.black87,
                ),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: FloatingActionButton(
                    onPressed: increaseValue,
                    child: Icon(
                      Icons.add
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: FloatingActionButton(
                    onPressed: decreaseValue,
                    child: Icon(
                      Icons.remove,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: FloatingActionButton(
                    onPressed: resetValue,
                    child: Icon(
                      Icons.refresh,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
