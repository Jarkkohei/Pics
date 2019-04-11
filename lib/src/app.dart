import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' show get;

import '../src/widgets/image_list.dart';

import '../src/models/image_model.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _counter = 0;
  List<ImageModel> _images = [];

  void fetchImage() async {
    _counter++;
    var response = await get('https://jsonplaceholder.typicode.com/photos/$_counter');
    var imageModel = ImageModel.fromJson(json.decode(response.body));

    setState(() {
      _images.add(imageModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pics'),
        ),
        body: ImageList(_images),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add), 
            elevation: 10.0, 
            onPressed: this.fetchImage,
        ),
      ),
    );
  }
}
