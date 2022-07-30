import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/signin_screen.dart';
import 'package:splashscreen/splashscreen.dart';

import '../utils/color_utils.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("CB2B93"),
          hexStringToColor("9546C4"),
          hexStringToColor("5E61F4")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SplashScreen(
          seconds: 5,
          navigateAfterSeconds: new SignInScreen(),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          image: new Image.asset(
            'assets/images/fitlogo.png',
          ),
          loadingText: Text("Loading"),
          photoSize: 150.0,
          loaderColor: Colors.deepOrange,
        ),
      ),
    );
  }
}
