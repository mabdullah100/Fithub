import 'package:flutter/material.dart';

class Bdetails extends StatefulWidget {
  const Bdetails({Key key}) : super(key: key);

  @override
  State<Bdetails> createState() => _BdetailsState();
}

class _BdetailsState extends State<Bdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Booking Details",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(0, 0, 0, 1)),
        ),
      ),
      body: new Center(
        child: Container(
          height: 680,
          child: Card(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Text(
                    "Gym Name",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
                Text(
                  "Active Gym",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0, 0, 0, 1)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Text(
                    "Package Type",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
                Text(
                  "Monthly Package",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0, 0, 0, 1)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Text(
                    "Member Name",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
                Text(
                  "Muhammad Abdullah",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(0, 0, 0, 1)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
                Text(
                  "abdullahcontact3@gmail.com",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(0, 0, 0, 1)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Text(
                    "Mobile NUmber",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
                Text(
                  "03025055716",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(0, 0, 0, 1)),
                ),
                SizedBox(
                  height: 200.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
