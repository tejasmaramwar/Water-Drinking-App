import 'package:flutter/material.dart';

class DividingText extends StatelessWidget {
  DividingText({required this.divideText});
  String divideText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        divideText,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 15.0,
          color: Colors.grey,
        ),
      ),
    );
  }
}