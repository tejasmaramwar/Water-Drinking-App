import 'package:flutter/material.dart';
import 'tips_page/how_to_drink_water_correctly.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 25.0, 10.0, 10.0),
                    child: Text(
                      'Drink Water Report',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Divider(),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Icon(
                          Icons.circle,
                          color: Colors.green,
                          size: 15.0,
                        ),
                      ),
                      Text(
                        'Weekly average',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      SizedBox(
                        width: 100.0,
                      ),
                      Text(
                        '0 ml / day',
                        style: TextStyle(
                            fontSize: 18.0, color: Colors.lightBlueAccent),
                      ),
                      Divider(),
                    ],
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Icon(
                          Icons.circle,
                          color: Colors.blue,
                          size: 15.0,
                        ),
                      ),
                      Text(
                        'Monthly average',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      SizedBox(
                        width: 100.0,
                      ),
                      Text(
                        '0 ml / day',
                        style: TextStyle(
                            fontSize: 18.0, color: Colors.lightBlueAccent),
                      ),
                      Divider(),
                    ],
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Icon(
                          Icons.circle,
                          color: Colors.yellow,
                          size: 15.0,
                        ),
                      ),
                      Text(
                        'Average Completion',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      SizedBox(
                        width: 100.0,
                      ),
                      Text(
                        '0 %',
                        style: TextStyle(
                            fontSize: 18.0, color: Colors.lightBlueAccent),
                      ),
                      Divider(),
                    ],
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Icon(
                          Icons.circle,
                          color: Colors.red,
                          size: 15.0,
                        ),
                      ),
                      Text(
                        'Drink Frequency',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      SizedBox(
                        width: 75.0,
                      ),
                      Text(
                        '0 times / day',
                        style: TextStyle(
                            fontSize: 18.0, color: Colors.lightBlueAccent),
                      ),
                      Divider(),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HowToDrinkWaterCorrectly()));
          },
          tooltip: 'More Tips',
          elevation: 15.0,
          child: Icon(
            Icons.check,
            color: Colors.blue,
            size: 35.0,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
