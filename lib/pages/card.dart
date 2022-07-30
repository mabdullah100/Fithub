import 'package:flutter/material.dart';
import 'booking.dart';

class Card extends StatefulWidget {
  const Card({Key key}) : super(key: key);

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Booking",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(0, 0, 0, 1)),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Name",
                        labelText: "Name",
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Name cannot be empty";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Age",
                        labelText: "Age",
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter CNIC",
                        labelText: "Id Card",
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Id Card cannot be empty";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Phone Number",
                        labelText: "Phone Number",
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Phone Number cannot be empty";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 240.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BookingScreen()));
                      },
                      child: Text(
                        "Pay Now",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
