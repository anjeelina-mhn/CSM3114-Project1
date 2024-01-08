import 'package:flutter/material.dart';
import 'mainmenu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laundry Booking App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MainMenu(),
    );
  }
}