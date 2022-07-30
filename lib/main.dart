import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/booking.dart';
import 'package:flutter_catalog/pages/bookingdetails.dart';
import 'package:flutter_catalog/pages/cardpayment.dart';
import 'package:flutter_catalog/pages/confirmbook.dart';
import 'package:flutter_catalog/pages/enableloc.dart';
import 'package:flutter_catalog/pages/payment.dart';
import 'package:flutter_catalog/pages/profile_page.dart';
import 'package:flutter_catalog/pages/signin_screen.dart';
import 'package:flutter_catalog/pages/signup_screen.dart';
import 'package:flutter_catalog/pages/splash_screen.dart';
import 'package:flutter_catalog/pages/time.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'pages/home_page.dart';
import 'widgets/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginscreen,
      routes: {
        "/": (context) => SignInScreen(),
        MyRoutes.bdetailRoute: (context) => Bdetails(),
        MyRoutes.profileRoute: (context) => Profile(),
        MyRoutes.timeRoute: (context) => Time(),
        MyRoutes.cardRoute: (context) => Card(),
        MyRoutes.splashscreen: (context) => SplashScreenPage(),
        MyRoutes.signupscreen: (context) => SignUpScreen(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginscreen: (context) => SignInScreen(),
        MyRoutes.bookingRoute: (context) => BookingScreen(),
        MyRoutes.paymentRoute: (context) => Payment(),
        MyRoutes.cardpayRoute: (context) => Cardpayment(),
        MyRoutes.confirmRoute: (context) => Confirmbook(),
        MyRoutes.enablelocRoute: (context) => Enableloc(),
      },
    );
  }
}
