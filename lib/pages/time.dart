import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/booking.dart';

import '../utils/routes.dart';

class Time extends StatefulWidget {
  const Time({Key key}) : super(key: key);

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Time Slots",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(0, 0, 0, 1)),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: Text(
                  "Available Slots",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BookingScreen()));
                },
                child: Text(
                  "10:30 AM to 11:30 AM",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BookingScreen()));
                },
                child: Text(
                  "11:30 AM to 12:30 PM",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BookingScreen()));
                },
                child: Text(
                  "12:30 PM to 01:30 PM",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BookingScreen()));
                },
                child: Text(
                  "01:30 PM to 02:30 PM",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
