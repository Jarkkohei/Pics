import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pics'),
        ),
        body: Text('$_counter'),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add), 
            elevation: 10.0, 
            onPressed: () {
              setState(() {
                _counter += 1;
              });
            }),
      ),
    );
  }
}
