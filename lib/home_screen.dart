import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:water_drinking_app/history.dart';
import 'package:water_drinking_app/settings_page/settings.dart';
import 'package:water_drinking_app/tips_page/how_to_drink_water_correctly.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int intakeWater = 0;
  int totalIntakeWater = 2200;

  @override
  Widget build(BuildContext context) {
    void showAlertDialog(BuildContext context) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Enter your daily goal'),
              actions: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Daily Goal',
                      hintText: 'Enter goal in ml'),
                  onChanged: (value) {
                    setState(() {
                      totalIntakeWater = int.parse(value);
                    });
                  },
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context, 'OK');
                    },
                    child: Text('Ok')),
              ],
            );
          });
    }

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
              Column(
                children: [
                  Row(
                    //THIS ROW IS FOR THE NAVIGATION BUTTONS ('HOME', 'HISTORY', 'SETTINGS')
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {},
                          height: 50.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('Home', style: TextStyle(fontSize: 17.0)),
                              SizedBox(width: 2.0),
                              Icon(Icons.home)
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => History(),
                              ),
                            );
                          },
                          height: 50.0,
                          child:
                              Text('History', style: TextStyle(fontSize: 17.0)),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Settings(),
                              ),
                            );
                          },
                          height: 50.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('Settings',
                                  style: TextStyle(fontSize: 17.0)),
                              SizedBox(width: 2.0),
                              Icon(Icons.settings)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //THIS ROW IS FOR THE TIPS BUTTON SECTION
                    children: [
                      Image.asset(
                        "images/animatedwater1.jpg",
                        height: 80.0,
                        width: 100.0,
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              showAlertDialog(context);
                            },
                            icon: Icon(Icons.check),
                          ),
                          Text(
                            'Set Goal',
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      HowToDrinkWaterCorrectly(),
                                ),
                              );
                            },
                            icon: Icon(Icons.lightbulb_outline),
                          ),
                          Text(
                            'More Tips',
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        intakeWater += 200;
                      });
                    },
                    child: CircularPercentIndicator(
                      radius: 350.0,
                      lineWidth: 8.0,
                      percent: (intakeWater / totalIntakeWater),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Colors.blue,
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '$intakeWater/$totalIntakeWater',
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            'Daily Drink Target',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Image.asset(
                            "images/glass64.png",
                          ),
                          Text(
                            '+200 ml',
                          ),
                        ],
                      ),
                      animation: true,
                      animationDuration: 1000,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
