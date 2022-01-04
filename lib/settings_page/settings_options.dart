import 'package:flutter/material.dart';

class SettingsOptions extends StatelessWidget {
  SettingsOptions({required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MaterialButton(
          height: 50.0,
          onPressed: () {},
          child: Text(
            title,
            style: TextStyle(
              fontSize: 17.0,
            ),
          ),
        ),
      ],
    );
  }
}