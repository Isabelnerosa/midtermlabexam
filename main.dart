import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.house),
          title: Text("Hello World"),
        ),
        body: ListView(children: _getListData()),
      ),
    );
  }

  List<Widget> _getListData() {
    List<Widget> widgets = [];

    // Define the names and their respective letter counts
    Map<String, int> names = {
      'Dan': 3,
      'Reyes': 5,
      'John': 4,
    };

    // Iterate through the names and create the corresponding ListTile widgets
    names.forEach((name, count) {
      widgets.add(
        ListTile(
          leading: Icon(Icons.face),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name),
              Text('$count letters', style: TextStyle(fontSize: 12.0)),
            ],
          ),
        ),
      );
    });

    return widgets;
  }
}