import 'package:flutter/material.dart';
import 'hameed.dart'; // Import your new Dart file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HameedDesign(), // Call your new design
    );
  }
}
