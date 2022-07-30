import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_catalog/pages/home_page.dart';

class Confirmbook extends StatefulWidget {
  const Confirmbook({Key key}) : super(key: key);

  @override
  State<Confirmbook> createState() => _ConfirmbookState();
}

class _ConfirmbookState extends State<Confirmbook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 200.0,
                ),
                Image.network(
                  "https://img.icons8.com/ios-glyphs/344/ok--v1.png",
                  width: 80,
                  height: 80,
                ),
                SizedBox(
                  height: 100.0,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Text(
                    "Your Booking is Confirmed. Thanks",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text(
                    "Go Back to Home",
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
      ),
    );
  }
}
