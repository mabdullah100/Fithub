// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../utils/routes.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({key}) : super(key: key);

  @override
  _BookingScreen createState() => _BookingScreen();
}

class _BookingScreen extends State<BookingScreen> {
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.paymentRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

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
          child: Form(
            key: _formKey,
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
                      Material(
                        color: Colors.deepOrange,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton ? 50 : 200,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Confirm Booking",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
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
      ),
    );
  }
}
