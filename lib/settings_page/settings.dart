import 'package:flutter/material.dart';
import 'dividing_text.dart';
import 'settings_options.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Water Drinking App'),
          centerTitle: true,
        ),
        body: SafeArea(
            child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  DividingText(divideText: 'Reminder Settings'),
                  Divider(),
                  SettingsOptions(title: 'Reminder Schedule'),
                  SettingsOptions(title: 'Reminder Sound'),
                  SettingsOptions(title: 'Reminder Mode'),
                  DividingText(divideText: 'General'),
                  Divider(),
                  SettingsOptions(title: 'Units'),
                  SettingsOptions(title: 'Intake Goal'),
                  SettingsOptions(title: 'Language'),
                  DividingText(divideText: 'Personal Information'),
                  Divider(),
                  SettingsOptions(title: 'Gender'),
                  SettingsOptions(title: 'Weight'),
                  SettingsOptions(title: 'Wake-up time'),
                  SettingsOptions(title: 'Bed time'),
                  DividingText(divideText: 'Other Settings'),
                  Divider(),
                  SettingsOptions(title: 'Reset'),
                  SettingsOptions(title: 'Feedback'),
                  SettingsOptions(title: 'Share'),
                  SettingsOptions(title: 'Privacy policy'),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
