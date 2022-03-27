import 'package:flutter/material.dart';
import 'package:myapp/extra_home.dart';
import 'package:myapp/home.dart';
import 'package:myapp/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Extrahome(),
    );
  }
}
