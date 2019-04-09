import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Pics'),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          elevation: 10.0,
          onPressed: () {}),
    ),
  );

  runApp(app);
}
