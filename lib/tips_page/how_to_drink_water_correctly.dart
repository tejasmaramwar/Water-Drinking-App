import 'package:flutter/material.dart';
import 'water_tips.dart';

class HowToDrinkWaterCorrectly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('How To Drink Water Correctly?'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            WaterTips(
                title: 'Drink your glass of water slowly with some small sips'),
            WaterTips(
                title:
                    'Hold the water in your mouth for a while before swallowing'),
            WaterTips(
                title:
                    'Drinking water in a sitting posture is better than a standing or running position'),
            WaterTips(title: 'Do not drink cold water or water with ice'),
            WaterTips(title: 'Do not drink water immediately after eating'),
            WaterTips(
                title:
                    'Do not drink cold water immediately after hot drinks like tea or coffee'),
            WaterTips(
                title:
                    'Always drink water before urinating and do not drink water immediately after urinating'),
            WaterTips(title: 'Drink one glass of water before each meal'),
            WaterTips(title: 'Drink one glass of water per hour at work'),
            WaterTips(
                title:
                    'Drink one glass of water when you wake up and before going to bed'),
            WaterTips(title: 'Always drink filtered water'),
          ],
        ),
      ),
    );
  }
}
