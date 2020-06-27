import 'package:flutter/material.dart';
import 'package:smart_home/screens/bottom_Nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SMART HOME UI',
      theme: ThemeData(),
      home: BottomNav(),
    );
  }
}
