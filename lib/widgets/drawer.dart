import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/bookingdetails.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/profile_page.dart';
import 'package:flutter_catalog/pages/signin_screen.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://avatars.githubusercontent.com/u/44908857?s=400&u=9fecfa4332a9f4f2688fb4a517b44dbd40edc243&v=4";
    return Drawer(
      child: Container(
        color: Colors.deepOrange,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Muhammad Abdullah"),
                accountEmail: Text("abdullahcontact3@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              ),
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile(),
                ),
              ),
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Bdetails(),
                ),
              ),
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Bookings",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignInScreen(),
                ),
              ),
              leading: Icon(
                CupertinoIcons.location,
                color: Colors.white,
              ),
              title: Text(
                "Location",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignInScreen(),
                ),
              ),
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Sign Out",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
