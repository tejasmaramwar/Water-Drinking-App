import 'package:flutter/material.dart';

class WaterTips extends StatelessWidget {
  String title;
  WaterTips({required this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16.0
          ),
        ),
      ),
    );
  }
}
