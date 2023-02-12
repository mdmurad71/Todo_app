import 'package:flutter/material.dart';

import 'TodoPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      home: Todopage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),

    );
  }

}


