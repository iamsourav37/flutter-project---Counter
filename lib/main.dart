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

  void plusOneHundred() {
    setState(() {
      col = Colors.yellow;
      _counter += 100;
    });
  }
    void minusOneHundred() {
    setState(() {
      col = Colors.amberAccent;
      _counter -= 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: col,
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
              padding: const EdgeInsets.fromLTRB(0, 180, 0, 70),
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
                    child: Icon(Icons.add),
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
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: RaisedButton(
                    shape: StadiumBorder(),
                    color: Colors.redAccent,
                    onPressed: plusOneHundred,
                    padding: EdgeInsets.only(top: 14.0,bottom: 14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          Text(
                            "100",
                            style: TextStyle(fontSize: 20.56,color: Colors.white),
                          ),
                        ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: RaisedButton(
                    shape: StadiumBorder(),
                    color: Colors.grey,
                    onPressed: minusOneHundred,
                    padding: EdgeInsets.only(top: 14.0,bottom: 14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                          Text(
                            "100",
                            style: TextStyle(fontSize: 20.56,color: Colors.white),
                          ),
                        ],
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
