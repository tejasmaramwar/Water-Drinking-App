import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(WaterApp());
}

class WaterApp extends StatelessWidget {
  const WaterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
